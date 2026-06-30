# 编辑态视觉语言规范 (IGN-299)

> 供 **IGN-298** [Frontend] 编辑页结构变更路由实现遵循。
> 设计稿：`firela-app.pen` / `TransactionDetailEdit` (G07oe) + `Edit-state Visual Spec` 屏。

## 核心原则

**可编辑态 = 深色 value + 交互 affordance；只读态 = 浅色 value + 无 affordance。**

两维区分（value 颜色 + affordance），**不依赖单一手段**。A 阶段仅靠"去箭头"区分的缺陷（`ListItemArrow` 默认 rightText 本就是灰，导致可编辑 payee 与只读 date value 同色、视觉无别）由此消除。

## 可编辑态

value **必须** `$text.primary` (#000000)。

| 类型 | 字段 | affordance |
|------|------|-----------|
| 箭头行 | payee（B 落地后 + date / category / account） | `ListItemArrow` 带可见 chevron，rightText `fill=$text.primary` |
| 输入框 | narration | stroke `$border.card` + `$bg.card`，内容 `$text.primary` |
| chip / inline | tags / links | `Tag` 组件 + add affordance |

## 只读态

value **必须** `$text.tertiary` (#979797)，**禁用** `$text.primary`。

| 类型 | 字段 | 处理 |
|------|------|------|
| 字段行（去箭头） | B 落地前 date / category / account | `ListItemArrow` arrow `enabled=false`，rightText 保持组件默认 tertiary |
| 金额 | amount（B 落地前） | `InputAmount` 样式保留（B 后恢复可编辑），只读性由 `readonlyHint` 提示条承担 |
| 分录 | postings | `PostingEditorRow`，value 不降（保可读），只读性由 section + `readonlyHint` 承担 |
| 系统派生 | AI 置信度 / Source / Created / ID | 独立 section，全 `$text.tertiary`，无 affordance |

## Token（复用现有，不新增）

| 角色 | token | 值 |
|------|-------|-----|
| 可编辑 value | `$text.primary` | #000000 |
| 只读 value / 派生信息 | `$text.tertiary` | #979797 |
| 字段 label | `$text.secondary` | #00000080 |

## 关键修正（相对 A 阶段）

A 阶段 payee（可编辑）的 rightText 沿用 `ListItemArrow` 组件默认 tertiary，与只读 date value 同色。
**修正**：可编辑箭头行的 rightText 显式设 `$text.primary`（已在 G07oe / `payeeRow` 落地）。

## 可选强化

会计事实行（date / account / postings）若降对比仍不足以传达"系统锁定"，可加行尾 `lock` icon（lucide，`$text.tertiary`，16px）。
**默认不加**——`readonlyHint` 提示条已承担解释职责。

## B 阶段扩展（IGN-298 落地 correct 端点后）

date / category / account / amount 从只读恢复为可编辑：
- rightText `fill` 由 tertiary 切回 `$text.primary`
- `ListItemArrow` arrow 恢复 `enabled=true`
- amount 从 `readonlyHint` 约束中释放

## 验收映射

- ✅ 可编辑 vs 只读视觉明确可分：value 黑/灰 + 有无箭头，两维度
- ✅ 规范文档化：本文件 + G07oe 落地 + `Edit-state Visual Spec` 屏
