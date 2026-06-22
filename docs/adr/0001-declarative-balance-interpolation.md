# ADR-0001: 声明式插值配平——移除显式 autoFill 按钮

## 状态

**已接受** (2026-06-22) · **勘误 (2026-06-22)**：决策 #6 原将"交易详情编辑"列为 `PostingEditor` 的可编辑消费者，错误。详情页 postings 受 beancount 不可变原则约束（后端 `TransactionQueryService.update` 仅更新 metadata，不接受 postings），只能只读展示，非可编辑消费者。详见决策 #6 修正版。

· **补充决策 (2026-06-22)**：经 5 专家面板评估，驳回为 `BeanPosting` 加 `isInterpolated` 结构化列的提案（5/5 一致）。插值分录的"系统配平"标记走官方 `posting.meta['__automatic__']`（`AUTOMATIC_META`，fava 同源），经既有 `meta` Json 列链路承载，不加列、零迁移。关键事实：MISSING 是瞬态——插值在持久化前填值、持久化跳过残留 null，故持久化数据永无 `units==null`；详情页"自动"徽标今天不可达，推迟到手动录入表单产生真实 MISSING 时再启用（届时后端插值器补写 `meta['__automatic__']` + 前端按 meta 键渲染）。详见决策 #8。

## 背景

`TransactionDetailEdit` 组件中的 `balanceAutoFill` 按钮长期为空实现（`onPressed: () {}` + TODO）。围绕"如何接通它"展开的多专家评估（4 份独立设计 + 4 份对抗审查，confidence 0.95，8/8 一致收敛）揭示了两个根本问题：

### 问题一：Dead UI

该按钮位于**交易详情页**，而任何进入数据库的交易都已由后端 `TransactionPipeline`（Booking → Interpolation → Physics）保证借贷平衡——存不进去的交易本身就不平衡。因此详情页的 `_BalanceIndicator` 几乎恒显示"已平衡"，用户几乎永远看不到 `autoFill` 按钮。按钮被画在了不会触发的场景。更根本的是：详情页 postings 受 beancount 不可变原则约束（后端 `update` 仅改 metadata），即便想补平也无从编辑——按钮在此场景天然死路。

### 问题二：架构越权（Rule 0 红线）

`autoFill` 按钮的本质语义是"**前端计算残差并补填一个数字**"。但残差必须按 weight（`units × cost` / `units × price` / `units`，优先级 cost > price > units）计算，容差判定依赖 `infer_tolerances`（tolerance_multiplier、inferred_tolerance_default、cost 推断容差）。这套逻辑只存在于后端 `ResidualCalculator` / `ToleranceCalculator`。前端一旦复制，必然与后端 Decimal 容差逻辑分叉（0.005 四舍五入、多币种组拆分边界），构成**双份职责的定时炸弹**。

### beancount 的配平机制本就是声明式

官方 beancount 从不"算残差填按钮"。它的机制是：用户录入时**将某一 posting 的金额留空（MISSING）**，booking 阶段（`booking_full.py::interpolate_group`）由 `ResidualCalculator` 计算其余 posting 的残差，自动填补那个空 posting。每个币种组至多一个 MISSING posting（>1 → `MULTIPLE_MISSING` 错误）。

这是**声明式**的：用户声明"这行自动"，系统算。配平是 posting 数组的一个合法状态，不是一个需要触发的动作。

firela-vlt 后端已具备完整插值引擎（`InterpolationService` / `ResidualCalculator` / `MissingValueFinder`），100% 对齐官方 `booking_full.py`，经 `TransactionPipeline.process()` 的 Interpolation 阶段执行。

### MISSING 是瞬态，不入库（关键事实）

声明式 MISSING 是**管道瞬态**，不会落库。管道顺序为 Stage 4 插值 → Stage 5 持久化：插值（`InterpolationService.interpolateGroup`，对齐 `booking_full.py::interpolate_group`）在持久化**之前**把 MISSING 那条 posting 的 units 填成 `-residual`；即便某条 posting 到持久化时仍为 `!units`，持久化也会**直接跳过**（`transaction-persistence.service.ts:376-382`，warn + continue）。双重保证：**持久化数据里永远没有 `units==null` 的 posting**。

推论：详情页（`findById` 读持久化数据）永远看到填好的金额；前端按 `units==null` 判定"插值行"的逻辑（`postingBalances` 跳过 null、`PostingEditorRow` 的"自动"徽标）对持久化数据**不可达**。要标识"这条是系统配平的"，须依赖写入时的 provenance（见决策 #8），无法从持久化 units 派生。

## 决策

我们将**移除显式 autoFill 按钮**，采用声明式插值配平。配平不是 feature、不是 screen、不是 button，而是 **posting 金额字段的一个空状态**。

1. **移除显式 autoFill 按钮**。配平交互不通过按钮触发。
2. **声明式 MISSING**：posting 金额字段两态——具体数字 / 自动（留空）。用户将某行设为"自动"，即声明该行 units 为 MISSING，由后端插值补平。1:1 对齐 `booking_full.py::interpolate_group`。
3. **配平账户 = 被设为"自动"那行的账户本身**。无独立"选择配平账户"步骤，无 Equity 兜底账户。残差天然落在该行——`interpolateUnits` 将 `-residual` 写回该 posting 的 units，账户即用户已选的账户。
4. **前后端职责红线**：
   - 前端：只声明 MISSING（组装带空 units 的 posting 载荷）+ 纯布尔状态提示（平衡 / 建议留空一行）。**绝不计算残差、绝不显示残差数字、绝不复制容差逻辑。**
   - 后端：`TransactionPipeline` 的 Interpolation 阶段是唯一插值权威。
5. **wire 契约**：自动行**省略 units/currency 字段**（非 `null`、非 `MISSING` Symbol——后者是后端内部不可序列化哨兵）。省略字段 → DTO `units` 为 undefined → 映射为 `Posting.units = null` → 后端识别为插值目标。
6. **统一 PostingEditor 组件，但区分编辑/只读两种消费形态**：
   - **可编辑形态（声明式 MISSING 的唯一落点）= 新建录入**：postings 在此首次组装，用户可留空一行 MISSING，后端插值补平。配平逻辑（auto 切换、组装带空 units 载荷）是编辑器内生状态，仅此处激活，避免第二套 posting 收集路径（Rule 0）。
   - **只读形态 = 交易详情页**：postings 一旦入账即**不可变**（beancount 不可变原则；后端 `TransactionQueryService.update` 仅更新 `flag/payee/narration/tags/links/meta`，不接受 postings）。详情页用同一 `PostingEditorRow` 只读展示金额，**不**是可编辑消费者。注意：因 MISSING 不入库（见上节），详情页持久化数据里没有插值空值行，"自动"徽标今天不可达——其启用时机与机制见决策 #8。
   - **ReviewCenter 编辑态**：其 posting 编辑是账户**重指派**（改 `accountId`，处理未分类账户），与金额级 MISSING 插值是不同关注点，非本决策的配平落点。
   - 组件复用（DRY）目标不变：只读行与可编辑行共用同一 `PostingEditorRow` 主组件，详情页只是不传入编辑回调。
7. **本期范围**：仅交付 UNITS 级 MISSING 插值。cost/price 插值（COST_PER / COST_TOTAL / PRICE）降级为未交付（YAGNI），待真实需求出现再迭代。
8. **插值行的"系统配平"标记：走官方 `meta['__automatic__']`，不加结构化列**（5 专家面板 5/5 一致，2026-06-22）：
   - **驳回 `BeanPosting.isInterpolated` 结构化布尔列**。理由：官方 beancount 无 per-posting 结构化插值列（`interpolate_group` 返回的 `interpolated` 是 group/交易级布尔）；加列是发明官方没有的概念，偏离 100% 对齐；与既有 `meta` 机制构成双份职责（Rule 0）；持久化一个会漂移的派生事实（edit/void/correct 后与残差重算脱钩）；当前频率≈0（无持久化插值行）属投机性 schema（YAGNI）。
   - **官方正解**：`booking_full.py` 在填值分支对被插值那条 posting 写 `meta['__automatic__'] = True`（`AUTOMATIC_META='__automatic__'`，源码自注 "a better name might have been __interpolated__"）；fava 同样读此 meta key 标识插值行。firela 的 `BeanPosting.meta`（Json 列）+ `_createPosting` 写 meta + `PostingDetailDto.meta` 全链路已打通。
   - **已知对齐缺口**：本地插值器 `missing-value-interpolator.ts`（interpolateUnits/CostPer/CostTotal/Price）填值时**尚未**写 `meta['__automatic__']`——这是待补的对齐动作（~4 行）。
   - **启用时机**：推迟到**手动录入表单**上线、产生真实 MISSING 时一并做：(1) 后端插值器补写 `meta['__automatic__']`；(2) 前端 `PostingEditorRow` 把徽标触发键从 `units==null` 改为 `posting['meta']?['__automatic__'] == true`。零新列、零迁移。
   - **升级条件**：仅当出现"按插值分录做批量查询/报表/索引"的真实诉求时，才升级为结构化列（届时由 `meta['__automatic__']` 回填）。
   - 现状：详情页 `PostingEditorRow` 的 `units==null` 徽标分支已加 `ponytail:` 注释，标注其对持久化数据不可达及未来 re-key 路径。

### 视觉与交互落地（Pencil）

- 新建业务组件 `PostingEditorRow`：账户图标 + 账户名/全路径 + 金额（两态）+ "自动" toggle + 币种。
- `_BalanceIndicator` 从"显示 Δ 残差数字 + 自动补平按钮"退化为"纯布尔状态 + 引导文案"（如"将一行设为自动配平"）。
- `postingsCard` 示范"一行手填 + 一行自动"的配平范式（注：此自动态是**录入现场**范式；详情页持久化数据无插值空值行，按决策 #8 该徽标今天不渲染）。

## 后果

### 积极后果

- **架构最简**：消除"按钮 + 前端残差计算子系统"，用一个字段空状态取代整个机制。
- **后端零改动**：`InterpolationService` 已就绪，wire 契约已支持省略 units，无需新增端点或领域概念。
- **守住 Rule 0**：前端零残差/容差计算，后端插值引擎保持唯一权威，杜绝双份职责。
- **声明式优势**：无状态、可逆、可组合（多币种各自留空），无"何时点按钮 / 残差变了怎么办"的命令式时序状态机。
- **消除 dead UI**：配平发生在真正需要它的录入现场，而非恒平衡的详情页。

### 消极后果

- **用户教育**：普通用户不熟悉"留空即配平"心智。缓解：双轨文案（极客看"自动插值 / interpolation"，普通用户看"这行自动算"）+ 首次录入引导。
- **多币种分组规则**：每币种组至多一行 MISSING，跨币种交易可多行留空。前端引导须按币种组区分，避免误阻断合法的多币种插值。
- **本期不含 cost/price 插值**：投资类交易的高级插值暂不支持，需后续迭代。

### 中性后果

- 现有 `use_transaction_detail.dart` 的 `postingBalances`（前端按 units 求和）保留用于 `isBalanced` 布尔判断，但不再渲染 Δ 数字。其 `units==null` 跳过分支对持久化数据不可达（MISSING 不入库），属防御性死代码。
- 详情页 `PostingEditorRow` 的 `units==null → '自动'徽标` 分支同上，对持久化数据不可达；未来按决策 #8 改 keyed on `meta['__automatic__']`（已加 `ponytail:` 注释标注）。
- `account_rounding`（舍入吸收账户）当前硬编码 null、无配置入口，本设计不实现其前端交互，标注为后端 options 机制。

## 考虑的替代方案

### 替代方案 1: 显式 autoFill 按钮（命令式补数）

- **描述**：用户点按钮，前端或后端计算残差并补填一个 posting。
- **为什么被拒绝**：(1) 按钮本质要求前端算残差，违反 Rule 0；(2) 在详情页是 dead UI；(3) 引入命令式时序状态机，违背 beancount 声明式心智。

### 替代方案 2: 前端纯预览配平建议

- **描述**：前端计算并展示"建议补平金额"，不保存。
- **为什么被拒绝**：展示具体补数 = 复制后端 weight / 容差计算（Rule 0），且预览值与后端真实插值值必然分叉（受 tolerance_multiplier、cost 推断容差影响），诱导后续回填，是"双份引擎的温床"。

### 替代方案 3: 默认 Equity 兜底配平账户

- **描述**：残差统一计入某 `Equity:Imbalance` 账户。
- **为什么被拒绝**：偏离官方语义（MISSING 行的账户即残差吸收账户）。firela 后端无任何用户可见默认配平账户；`account_rounding` 是后端 options 机制、当前硬编码 null、无配置入口，与录入配平是两回事。

### 替代方案 4: 在各入口分散实现配平 UI

- **描述**：在新建录入流程（及历史误判的详情页 / ReviewCenter）各自独立实现配平 UI。
- **为什么被拒绝**：制造第二套 posting 收集路径（Rule 0）。配平机制应单一——声明式 MISSING 只在**新建录入**激活，`PostingEditor` 唯一编辑落点；详情页只读复用同一 `PostingEditorRow`，不独立成配平落点。（注：原版误将详情页列为可编辑入口，已于勘误修正——详情页 postings 不可变。）

### 替代方案 5: `BeanPosting.isInterpolated` 结构化布尔列

- **描述**：给 BeanPosting 加 `isInterpolated` 列，插值填值时置 true，经 `PostingDetailDto` 带出，详情页据此给系统配平行打徽标。
- **为什么被拒绝**（5 专家面板 5/5 一致，2026-06-22）：(1) 官方 beancount 无 per-posting 结构化插值列，加列偏离 100% 对齐；(2) 与既有 `meta['__automatic__']` 机制构成双份职责（Rule 0）；(3) 持久化一个会漂移的派生事实（edit/void/correct 后与残差重算脱钩）；(4) 当前频率≈0（无持久化插值行），投机性 schema（YAGNI）；(5) 成本非外科式（迁移 + 回填 + DTO + 透传 per-posting provenance + 前端分支）。正解见决策 #8：走官方 `meta['__automatic__']`，零新列。

## 参考资料

- **beancount 官方**：`booking_full.py::interpolate_group`、`find_incomplete_postings`、`compute_residual`；`beancount/core/interpolation.py`
- **插值行 provenance（官方）**：`booking_full.py::interpolate_group` 填值分支 `new_posting.meta[interpolate.AUTOMATIC_META]=True`（`AUTOMATIC_META='__automatic__'`，源码自注 "a better name might have been __interpolated__"）；fava 同源读取
- **firela-vlt 后端插值引擎**：`libs/bean/src/core/interpolation/`（`InterpolationService` / `ResidualCalculator` / `MissingValueFinder` / `missing-value-interpolator`）、`TransactionPipeline`（Booking → Interpolation → Physics）
- **持久化跳过 null-units**：`apps/api/src/app/bean/core/transaction/services/transaction-persistence.service.ts:376-382`
- **相关 ADR**：ADR-0064（Rule Match 仅处理 Income/Expenses 分类）、ADR-0065（入口层账户有效性保证）
- **决策依据**：多专家并行评估 workflow（4 份独立设计 + 4 份对抗审查，confidence 0.95，8/8 一致收敛）；`isInterpolated` 列评估 workflow（2 beancount 专家 + 后端数据模型 + 前端 UX + Linus 怀疑者，5/5 驳回加列，2026-06-22）

---

**日期**: 2026-06-22
**决策者**: 架构决策（多专家评估 + Linus 哲学裁决）
**最后更新**: 2026-06-22
