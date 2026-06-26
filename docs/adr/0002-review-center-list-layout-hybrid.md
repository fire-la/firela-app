# ADR-0002: 审核中心列表布局——统一行 + 渐进披露混合模式

## 状态

**已接受** (2026-06-24)

· **待验证（翻盘点）**：本决策基于「16 项典型样本（重型 56% / 轻量 44%）」。上线前必须埋点统计真实 CSV 导入后 `BeanPendingReview` 的 `confidence` 直方图。若 ≥0.85 轻量项占比 **>70%** → 收敛为更接近纯一层（重型项改用就地抽屉/底部弹层承载对照）；若 **<30%** → 收敛为纯两层（移除内联状态机）。

· **dev-DB 实测（2026-06-24，不构成翻盘）**：查询 `192.168.100.100` 的 `BeanPendingReview` 全表仅 **8 行**（全 PENDING）。inline 合格类型（DUPLICATE/RULE_MATCH/PAYEE_MATCH）6 行中 ≥0.85 仅 1 行（17%）——**n 太小，无统计意义，不翻盘**。且该库的 ACCOUNT_VALIDATION(0.30)/PIPELINE_ERROR(0.10) 行置信度非 0，证明是手填测试种子、非真实管道产物（真实管道流经 `?? 0` 必为 0）。翻盘验证须等生产/预发布环境的真实导入埋点。

## 背景

审核中心（Review Center）处理 5 类需用户确认的待审项（`BranchType`：DUPLICATE / RULE_MATCH / PAYEE_MATCH / ACCOUNT_VALIDATION / PIPELINE_ERROR）。它**只服务于批量导入**（CSV、多 OCR）；单条录入（NLP、单张小票 OCR）走即时反馈，不进审核中心（ADR-0052）。因此这是**批量 triage 场景**：用户导入一份 CSV 后，逐项处理一批异构但相关的待审项（典型规模 16 项跨 5 类）。

围绕「列表页如何承载这 5 类待审项」存在两个竞争设计，长期未收敛：

### 方案 A：一层（原始设计）

列表页直接展示**每种类型的全部信息 + 内联决策按钮**，不进二级页。需为每类做一张**特化卡片**，即 5 种结构/高度各异的卡片：`DuplicateTransactionCard`、`PipelineErrorCard`、`PayeeSuggestionCard`、`RuleSuggestionCard`、`AccountCorrectionCard`。

### 方案 B：两层（新设计）

列表层用**统一行** `ReviewSummaryRow`（所有类型同一形态）；点击进入详情层 `ReviewDetailContent`（只读）或 `ReviewDetailEdit`（完整编辑）。

### 核心矛盾

5 类的**决策复杂度严重不对称**，决定了不能一刀切：

| 类型 | 决策动作 | 决策所需信息复杂度 |
|------|---------|------------------|
| RULE_MATCH 规则 | 应用 / 忽略 / 手动 | 轻量：规则名 → 目标账户 + 匹配度 |
| PAYEE_MATCH 商户 | 选已有 / 建新 | 轻量：原始名 → 建议名 |
| DUPLICATE 去重 | 升级替换 / 关联保留 / 跳过 / 确认不同 | 重型：需**两笔交易并排对照**（日期/金额/描述三轴） |
| ACCOUNT_VALIDATION 账户 | ACCEPT / CHOOSE_OTHER / ACCEPT_AND_LEARN / CANCEL | 中重型：需**相似账户 radio 单选列表**（带选择态） |
| PIPELINE_ERROR 管道 | 应用修复 / 忽略 / 取消 | 重型：需**分录级错误详情 + 建议修复分录**（无置信度） |

一层把重型卡（去重对照/管道分录/账户相似列表）和轻量卡（商户/规则）塞进同一列表；两层则对轻量项强加一次跳转。两条纯路都有硬伤。

### 平台硬约束

移动优先（iOS/Android）：禁止并排面板（no side-by-side），用导航栈。屏幕宽约 375pt。这直接否决了一层方案中 `DuplicateCompareCard`「两笔交易并排对照」在列表内联的可行性——375pt 上要么违反禁令、要么截断不可读。

## 决策

采用 **HYBRID（混合）模式**：以两层方案的**统一行作为唯一列表形态**（消除 5 种特化卡片），但对带置信度的轻量高置信项开放**就地单动作内联**。三层结构：

1. **列表层（唯一形态）**：所有 5 类共用 `ReviewSummaryRow`，左→右固定锚点「类型图标 | 一句话摘要 | 置信度徽标 | 来源标签 | 金额 | 日期」。行高、锚点位置全类型一致——这是低熵可扫描列表的契约，新增第 6 类**零列表改动**。
2. **顶部类型概览 chips（始终可见）**：`去重 N / 规则 N / 商户 N / 账户 N / 错误 N`，点击切换专注模式（对应 `GET ?type=` 过滤）。每个 chip 附「一键全部应用」，调用既有 `POST /bean/reviews/batch-resolve`。
3. **内联路径（受控开口）** + **详情路径（默认）**：见下。

### 数据驱动的内联门（不是魔法阈值）

经核实后端链路：`BranchResult.error()`（`libs/bean/src/processing/branching/types/branch-result.ts:118-130`）令 `ACCOUNT_VALIDATION`/`PIPELINE_ERROR` 的 confidence 为 `undefined`；而落库时 `review.service.ts:94/:138` 以 `branchResult.confidence ?? 0` 写入——**错误类型在 DB/API 层是数值 `0`，不是 undefined/null**（真实管道流必为 0；dev-DB 里的非 0 值是手填测试种子，见「状态」）。

→ 因此前端**内联判定门 = `confidence >= 0.85` 一个条件**即可：错误类型（0）天然被排除，低/中置信天然排除，只有 DUPLICATE/RULE_MATCH/PAYEE_MATCH 的高置信项达标。与 API 已返回的 `confidenceLevel=HIGH` 展示带（≥0.85 / 0.60-0.84 / <0.60 三档）对齐。**无需按 type 枚举堆 if、无需判 null**——错误类型落详情是 `?? 0` 落库 + 重型交互双重保证的结果，不是 UI 硬编码。

### 逐类型落地

| 类型 | 模式 | 依据 |
|------|------|------|
| RULE_MATCH | INLINE + DETAIL | 带 confidence，决策最轻量。≥0.85 一句摘要即可安全内联（Apply/Ignore）；需改账户时进详情。**内联主战场** |
| PAYEE_MATCH | INLINE + DETAIL | 带 confidence，轻量。≥0.85 选已有商户可内联；需建新商户时进详情。**内联主战场** |
| DUPLICATE | INLINE + DETAIL | 带 confidence。≥0.85 无歧义时可单动作内联；低于阈值或需逐轴核对时进详情页 `DuplicateCompareCard`。决策不可逆（误删/误覆盖），低置信必须给全屏对照空间 |
| ACCOUNT_VALIDATION | **DETAIL**（含编辑表单） | 经 `?? 0` 落库 confidence=0（<0.85 自动落详情）。且需相似账户 radio 单选（带选择态），与只读按钮组冲突，走 `ReviewDetailEdit` 完整表单（含「接受并学习」） |
| PIPELINE_ERROR | **DETAIL** | 经 `?? 0` 落库 confidence=0（<0.85 自动落详情）。需分录级错误+建议修复对照，375pt 铺不开；误修复是不可逆资金错误，必须完整披露+二次确认 |

### 铁律：内联 = 单一固定动作

内联 affordance 必须是统一行上的**单一固定语义动作**（如 Apply / 跳过）+ 一个勾选框（用于批量）。**任何需要对照 / radio 列表 / 修复分录的重型决策，一律强制进详情页插槽，绝不内联。**

> 一旦某个类型的内联从「单一按钮」滑向「展开特化内联卡片」，列表立刻重新引入一层的高度方差与锚点漂移，混合退化为 ragged list + 详情页的两种最坏结合。此条须列入 code review 与设计审查硬检查项。

### 内联动作语义（逐类型）

铁律的具体化：内联一律只暴露「**采纳高置信建议**」的**单一非破坏性主操作**——一个 `ButtonSmall` + 一个勾选框，文案按类型变，结构永不改。仅 3 类（`confidence ≥ 0.85`）可达。

| 类型 | 内联动作（confidence ≥ 0.85） | 理由 | 留在详情页（绝不内联） |
|------|------------------------------|------|----------------------|
| DUPLICATE | **跳过**（跳过新导入，保留已有） | 高置信=大概率重复→最可能动作；非破坏性 | 升级替换 / 关联保留 / 不是同一笔 |
| RULE_MATCH | **应用**（采纳账户映射） | 高置信映射可信；仅改本笔账户、可撤销 | 应用并学习 / 不应用 / 手动 |
| PAYEE_MATCH | **选择**（采纳建议商户） | 高置信映射可信；仅改本笔 payee | 选择并加别名 / 创建新商户 |

**边界（安全红线）**：「应用并学习」「选择并加别名」带**跨交易副作用**（建规则/别名，影响后续导入），与破坏性动作（升级替换/取消交易）一样一律留详情页，绝不内联——对齐「消极后果」的学习副作用风险。

### 视觉与交互落地（Pencil）

- 列表统一为单一 `ReviewSummaryRow`（含 **HIGH 内联态变体**：行右缘露出单一动作按钮 + 勾选框，置于拇指热区）。
- **内联态保留金额+日期列**（`rightCol` 不随 `inlineRight` 启用而隐藏）：金额是核心决策信息，而 RULE_MATCH/PAYEE_MATCH 的摘要不含金额（仅 DUPLICATE 摘要内嵌 ¥金额），内联时隐藏会丢信息。内联态与详情态行视觉一致，均显示金额+日期，只多一个动作按钮。
- 详情页结构：类型头 + 交易字段（只读）+ **类型专属对照插槽**（DUPLICATE=`DuplicateCompareCard` 两栏对照、PIPELINE_ERROR=错误详情+建议修复分录、ACCOUNT_VALIDATION=相似账户 radio + 内嵌 `ReviewDetailEdit`）+ 匹配原因 chips + `DecisionButtonGroup`（底部 sticky）。
- **只 ACCOUNT_VALIDATION 走完整编辑表单**；其余 4 类详情页只用只读 + 按钮组，不引入编辑表单（避免过度抽象）。
- 破坏性操作（删除 / 忽略）用破坏色 + 二次确认；DUPLICATE / PIPELINE_ERROR 在详情页执行前强制二次确认弹层。
- 统一边缘右滑返回手势，保证反复 push/pop 的肌肉记忆一致（所有详情页同一骨架）。

### 插槽架构对应后端

前端详情插槽镜像后端已有的**每个 `BranchType` 一个 Resolver + `decision-options.config.ts` 的决策选项注册表**架构。类型特化只发生在详情插槽里，列表行永远是同一个 `ReviewSummaryRow`。**新增第 6 种类型 = 加一个 Resolver + 一个详情插槽组件，列表层零改动。**

## 后果

### 积极后果

- **消除特例**：1 个统一行契约管 5 类，列表与全 App 列表（交易列表/账户列表）视觉同构，消除设计孤岛（Linus 好品味）。
- **可扩展**：新增第 6 类零列表改动，只加一个详情插槽组件。
- **安全**：资金敏感型（ACCOUNT_VALIDATION / PIPELINE_ERROR）被数据模型天然强制进详情页 + 二次确认，杜绝信息残缺下就地决策导致的不可逆资金错误。
- **高效**：轻量高置信项零跳转就地决策，不浪费跳转架构；同时兑现已批准的 `batch-resolve` 批量能力。
- **后端零改动**：内联门复用既有 `confidence` / `confidenceLevel` 字段，不新增 API、不新增领域概念。

### 消极后果

- **置信度直方图未经验证（最大翻转风险）**：结论基于 16 项典型样本。dev-DB 实测仅 8 行测试数据、n 不足无法判定（见「状态」）。翻盘验证须等生产/预发布真实导入埋点。
- **内联纪律失守风险（实现期最易踩坑）**：若内联滑向「展开特化内联卡片」，混合退化为两层最坏结合。须硬约束 + review 检查项。
- **85% 阈值切断肌肉记忆（次级风险）**：用户无法预判某项可否内联。缓解：内联态在统一行上有明确视觉信号（HIGH 徽标 + 行内按钮显隐），让「可内联」成为可感知状态而非完全隐式；阈值复用既有 HIGH 展示带，不引入新概念。
- **batch-resolve 限流（5/min, max 50）**：批量场景一键应用可能连续撞限流。须做客户端节流 + 排队反馈（「已提交 N 项，处理中」），>50 项自动分批。
- **`?? 0` 落库对 `confidenceLevel` 显示的连带误判（待后端协同）**：`review.service.ts:94/:138` 的 `confidence ?? 0` 让 `BranchResult.error()` 来源的 ACCOUNT_VALIDATION/PIPELINE_ERROR 落库 confidence=0。用于内联门判定（`0 < 0.85` → 落详情）**正确**，但 `ReviewSummaryDto.confidenceLevel = getConfidenceLevel(0)` 会机械返回 `LOW`，DTO 随之返回 `LOW`。问题在于 0 是**占位值**而非"真实低置信度"——ACCOUNT_VALIDATION 的真实信号是账户相似度（可能 95% 很有把握），UI 若照 `LOW` 显示「不太确定」会**误导用户以为"纠正建议不可信"**；PIPELINE_ERROR 是错误类型，`confidenceLevel` 语义本就不适用。**建议（后端 DTO 层）**：对 `error()` 来源两类将 `confidenceLevel` 返回 `null`（或从 DTO 去除该字段），UI 对 `null` 不渲染置信度徽章——「落详情靠 `confidence == 0` 判定、显示靠真实语义（null 不显示）」两不相误，也无需前端按 type 堆 if。**过渡期**：前端暂按 API 现实（LOW）显示，待后端采纳 null 方案后改为隐藏徽章（当前 pencil 的 ACCOUNT_VALIDATION 行即为此过渡态）。

### 中性后果

- 弃用一层方案的 5 张特化卡片组件（`DuplicateTransactionCard` 等）。其信息密度拆分迁移到详情插槽：`DuplicateTransactionCard` 的对照部分并入 `DuplicateCompareCard` 插槽，轻量项摘要并入 `ReviewSummaryRow`。
- 既有归档 UX 文档（`review-center-ux-design.md` §5.6 `InlineReviewRow`）早已设想「≥85% 内联 / <85% 进详情」的混合原型——本决策是对已设计原型的正式采纳与约束化，非新增复杂度。

## 考虑的替代方案

### 替代方案 1: 纯一层（5 种特化内联卡片）

- **描述**：列表页直接展示每类全部信息 + 内联决策按钮。
- **为什么被拒绝**（4 专家评估，6 维度量化）：一层**仅在 D2 点击成本上小胜**（3.5 vs 2.5），但在 D1 可扫描性（2.0 vs 4.8）、D3 信息充分性（3.0 vs 4.8）、D4 移动人机工程（2.0 vs 3.8）、D5 一致性/可扩展性（1.8 vs 5.0）、D6 安全容错（2.5 vs 4.0）全面崩溃，合计 14.8 vs 24.9。点击成本的优势不足以抵偿 5 个维度的损失——尤其 D6 安全（误删重复交易 / 误修复管道错误不可逆）是硬底线。重型卡（去重两栏对照）在 375pt 违反 no-side-by-side 禁令，其「就地充分决策」是伪命题。

### 替代方案 2: 纯两层（统一行 + 全部进详情）

- **描述**：列表统一行，所有决策一律点击进详情页。
- **为什么被拒绝**：对轻量项（RULE_MATCH / PAYEE_MATCH，典型占 ≈38%）强加 +1 跳转 ×16 项的导航栈代价，违反「消除特例」——这类轻量特例不该用统一跳转去惩罚。是「为统一而统一」的反模式。混合模式保留两层的统一低熵列表骨架，同时给轻量高置信项开口，严格优于两者。

## 参考资料

- **后端 ADR**：firela-vlt `ADR-0052 Review Center Architecture`（审核中心架构、batch-resolve API 限流 5/min max 50、Resolver 模式）
- **后端分支类型**：`libs/bean/src/processing/branching/types/branch-result.ts`（`BranchType` enum :5-16；`BranchResult.branch()` :94-106 带 confidence；`BranchResult.error()` :118-130 confidence 恒 undefined）
- **后端 API**：`apps/api/src/app/bean/core/review/controllers/review.controller.ts`（`GET/POST :region/bean/reviews`、`/:id/resolve`、`/:id/undo`、`/batch-resolve`）
- **后端决策选项插槽**：`apps/api/src/app/bean/core/review/resolvers/*-resolver.service.ts`、`decision-options.config.ts`
- **落库 confidence 归一**：`apps/api/src/app/bean/core/review/services/review.service.ts:94,:138`（`branchResult.confidence ?? 0`，错误类型落库为 0）
- **dev-DB 直方图实测（2026-06-24）**：`192.168.100.100` firela 库 `BeanPendingReview` 全表 8 行；inline 合格 6 行中 ≥0.85 占 17%（1 行），n 不足不构成翻盘依据
- **既有 UX 文档**：firela-vlt `_archive/frontend-history/ux-feedback/review-center-ux-design.md`（§2.3 置信度三档、§4.2 智能混合模式、§5.6 `InlineReviewRow` 混合原型）
- **决策依据**：多专家并行评估 workflow（4 位差异化 UX 专家独立评估 + 综合裁决，全部收敛 HYBRID，confidence 0.82；6 维度量化对比见「替代方案 1」）
- **相关 ADR**：本仓 ADR-0001（声明式插值配平）

---

**日期**: 2026-06-24
**决策者**: 架构决策（4 专家 UX 评估 + 综合裁决，confidence 0.82）
**最后更新**: 2026-06-24
