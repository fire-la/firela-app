# 审核中心 · 去重批量栏 前端实现指导

> 对应设计稿：`firela-app.pen` → `ReviewCenterPage`（`o2l3OK`）
> 关联：[IGN-285](https://linear.app/fire-zu-ign/issue/IGN-285)（recommended 动态化，含上线前置约束）、[IGN-286](https://linear.app/fire-zu-ign/issue/IGN-286)（埋点验证）

## 0. 一句话目标

把设计稿重构后的**去重批量栏**落地：用户在某类型 chip（如"去重 3 项"）下，用一个**默认 action=跳过**的主按钮批量处理，点击可切换 action；**不引入逐条勾选/子集选择**。

---

## 1. 已定决策（不要偏离）

| 决策 | 结论 | 来源 |
|---|---|---|
| 默认批量 action | **`IGNORE_NEW`（跳过）**，硬编码，**不读后端 `recommended`** | Q1 + IGN-285 约束 |
| 子集选择 / 长按多选 / 行内 checkbox | **不做**（Q2 = NO_SUBSET） | `DesignCheckbox` 本就不支持 indeterminate，自洽 |
| 批量暴露的 action | 去重只暴露 **跳过 / 覆盖**；`LINK_KEEP_BOTH`、`CONFIRM_DIFFERENT` 下沉单条 | 安全分级 |
| 撤销 | 后端**无批量撤销**，只有单条 `/reviews/:id/undo`（24h） | ADR-0052 + 代码核实 |
| `recommended` 字段 | 仅可作"推荐标签"展示，**禁止用作默认预选** | IGN-285 |

---

## 2. 现状（已调研）

已实现：
- 页面 `lib/features/review_center/presentation/pages/review_center_page.dart`
- 状态 `useReviewCenter`（`flutter_hooks`）+ 全局 `signals_flutter`（`pendingCountSignal` 等）
- 列表行 `PendingTransactionCard`（`{transaction, onDelete, onConfirm, onTap}`，行内已有删除/保留按钮）
- 仓库 `review_center_repository.dart`（`getPendingTransactions` 等，**无批量方法**）
- API client `lib/api/generated/lib/src/api/bean_reviews_api.dart`（OpenAPI 生成）
- 设计系统组件齐备（`ButtonSmall`/`ButtonPrimary`/`ButtonSecondary`/`Badge`/`Tag`），**禁止 Material 原生控件**
- 埋点 `AnalyticsService` + `AnalyticsEvents`（现有 `reviewListViewed` 等事件，service 当前 no-op）
- L10n `lib/l10n/app_*.arb`，命名 `reviewCenterXxx`

**未实现（本次要做）**：批量栏、批量 action 选择、批量 API 调用、批量埋点。

---

## 3. ⚠️ 两个必须先解决的真实阻塞点

### 3.1 batch-resolve 请求 DTO 缺失（最高优先）
生成 client 里**没有** `BatchResolveDto` / `ResolveReviewDto`（`lib/api/generated/lib/src/model/` 下只有 response 类，无请求类）。`bean_reviews_api.dart` 的 batch-resolve 方法因此无法类型安全地传 body。

**两条路二选一：**
- **A（推荐）**：在后端 OpenAPI spec 里确认 `BatchResolveDto`/`ResolveReviewDto` 已有 schema → 重新跑 ts2dart/openapi 生成，补齐 `batch_resolve_request_dto.dart`。一劳永逸。
- **B（过渡）**：前端用 `Map<String, dynamic>` 手写请求体调用，TODO 注释标记待生成补齐。

请求体形状（来自后端 `resolve-review.dto.ts`）：
```json
{ "reviewIds": ["id1","id2"], "action": "IGNORE_NEW", "data": {} }
```
响应 `BatchResolveResultDto`：`{ successCount, failedCount, results: [{reviewId, success, resolutionId?, error?}] }`

### 3.2 去重 action 与现有"删除/保留"的语义映射
`PendingTransactionCard` 现有 `onDelete`/`onConfirm` 是**通用**语义，不直接对应去重的 4 个 `DuplicateDecision`。去重类型下必须改用枚举值调用：

| 用户可见 | action 值 | 用途 |
|---|---|---|
| 跳过 | `IGNORE_NEW` | 忽略新导入的重复，保留已记账旧交易（**默认**，幂等零副作用） |
| 覆盖 | `UPGRADE_REPLACE` | 用新交易替换旧交易（破坏性，需主动选） |
| 都留 | `LINK_KEEP_BOTH` | **仅单条**，不进批量 |
| 确认不同 | `CONFIRM_DIFFERENT` | **仅单条**，不进批量 |

> 不要把"删除/保留"直接当去重 action 传给后端——后端 `resolveReview` 会按 `DuplicateDecision` 校验，非法 action 报 `REVIEW_INVALID_DECISION`。

---

## 4. 实现任务（按层）

### 4.1 API / Repository
在 `review_center_repository.dart` 新增：
```dart
// action 用字符串（DuplicateDecision 值），data 可空
Future<BatchResolveResult> batchResolve({
  required List<String> reviewIds,
  required String action, // 默认 'IGNORE_NEW'
  Map<String, dynamic>? data,
}) {
  final body = {
    'reviewIds': reviewIds,
    'action': action,
    if (data != null) 'data': data,
  };
  // 调 bean_reviews_api 的 batch-resolve（见 3.1，DTO 补齐前用 Map）
}
```
单条 resolve 同理（`{action, data?}`）。

### 4.2 状态（signals + hooks）
在 `useReviewCenter` 扩展，**不引入 `selectedIds`/选择模式**：
```dart
// 当前筛选类型的批量 action，默认 IGNORE_NEW（硬编码，不读 recommended）
final batchAction = useState<String>('IGNORE_NEW');
final isBatchApplying = useState<bool>(false);
```
批量应用 = 对当前筛选（type chip）下**全部** PENDING 项调用 `batchResolve`（reviewIds 取当前列表全部 id）。

### 4.3 UI：批量栏（对应设计稿 `batchBar`）
新建 `lib/features/review_center/presentation/widgets/review_batch_bar.dart`：
```
[去重 · 3 项]                      [应用 3 项 · 跳过]   ← ButtonSmall，点击弹 sheet
```
- 左：计数文字（类型名 + 数量），`TokenTypography.caption()` + `TokenColors.textSecondary`
- 右：`ButtonSmall`，label = `应用 N 项 · {action 文案}`，点击 → `showModalBottomSheet`（参考 `nlp_result_bottom_sheet.dart`）
- Sheet 内容：action 列表（跳过[默认选中] / 覆盖），每项一句说明，确认按钮
- 确认后调 `batchResolve`，loading 态禁用按钮
- **不渲染 checkbox、不渲染 select-all**（设计稿已删 `cb` 节点）

类型 chip 为"全部"（混类型）时，批量栏不出现（后端强制同类型）。

### 4.4 UI：撤销栏诚实化
现有/新增的已处理回显栏，文案用：
```
已处理 N 笔 · 24h 内逐条撤销
```
撤销按钮对每条可撤销项单独调 `/reviews/:id/undo`。**不要伪造"撤销整批"单按钮**——后端无此端点。

### 4.5 L10n（无中文字面量，命名 `reviewCenterXxx`）
`app_zh_CN.arb` / `app_en.arb` 新增（示例 key）：
```
reviewCenterBatchCount: "{type} · {count} 项"
reviewCenterBatchApply: "应用 {count} 项 · {action}"
reviewCenterActionSkip: "跳过"
reviewCenterActionReplace: "覆盖"
reviewCenterActionSkipHint: "忽略新导入的重复，保留已记账交易"
reviewCenterActionReplaceHint: "用新交易替换已有交易（不可批量撤销）"
reviewCenterBatchUndoHint: "已处理 {count} 笔 · 24h 内逐条撤销"
reviewCenterBatchMixedTypeDisabled: "混合类型不可批量，请先选择类型"
```
action 文案**用前端 arb**（按 action value 映射），不要依赖后端 `decisionOptions[].labelKey`（那是后端 i18n key，前端 arb 未必有对齐）。

### 4.6 埋点（IGN-286，顺手做）
`AnalyticsEvents` 新增：
```dart
static const duplicateDecisionChosen = 'duplicate_decision_chosen';   // {action, source:'batch'|'single', type}
static const duplicateBatchMixedIntent = 'duplicate_batch_mixed_intent'; // 同批内既覆盖又跳过（虽无子集，可记单条切换）
static const duplicateUndoPerItem = 'duplicate_undo_per_item';        // 批量后逐条 undo
static const reviewBatchSize = 'review_batch_size';                   // {count, type} 批次条数分布
```
调用点：批量应用成功/失败、撤销、进入批量栏。service 当前 no-op，事件结构先就位。

---

## 5. IGN-285 上线前置约束（硬性，未修前必须遵守）

- 批量栏与**单条详情页**的默认 action 都硬编码 `IGNORE_NEW`
- **禁止**读取后端 `recommended` 做默认预选（它当前静态指向 `UPGRADE_REPLACE`，破坏性）
- `recommended` 只能作为"推荐"小标签展示（若展示）
- 原因：否则会出现"单条默认覆盖（破坏性）vs 批量默认跳过（安全）"的自相矛盾，且单条覆盖丢失已记账数据

---

## 6. 验证清单（实现完逐项过）

- [ ] batch-resolve 请求能成功调用（DTO 缺失已解决，3.1）
- [ ] 默认 action = `IGNORE_NEW`，**全局无一处**读 `recommended` 做默认
- [ ] 批量栏仅在单一类型 chip 选中时出现；"全部"时不出现
- [ ] action sheet 暴露 跳过/覆盖；都留/确认不同不在批量里
- [ ] 无 checkbox、无 select-all、无 indeterminate、无长按多选（Q2）
- [ ] 批量应用后 toast/撤销栏提示"逐条撤销 24h"，无"撤销整批"按钮
- [ ] 全部文案走 arb，Dart 源码无中文字面量
- [ ] 全部用设计系统组件，无 Material 原生控件
- [ ] 4 个埋点事件已埋
- [ ] `PendingTransactionCard` 在去重类型下行内 action 用 `DuplicateDecision` 值，非通用"删除/保留"

---

## 7. 关键陷阱速查

1. **请求 DTO 缺失** → 见 3.1，先解决再写调用。
2. **不要读 `recommended`** → 见 §5，IGN-285 硬约束。
3. **不要加子集选择/indeterminate** → Q2 已定不做；`DesignCheckbox` 也不支持。
4. **去重 action ≠ 通用删除/保留** → 见 3.2，按 `DuplicateDecision` 传值。
5. **无批量撤销** → 别做"撤销整批"UI，逐条 undo + 文案诚实化。
6. **覆盖是破坏性** → 默认跳过；覆盖在 sheet 里需主动选，配 hint 说明不可批量撤销。
