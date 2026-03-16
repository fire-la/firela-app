# Phase 8: OpenAPI Types Integration - Context

**Gathered:** 2026-03-16
**Status:** Ready for planning

<vision>
## How This Should Work

Flutter 端在后端 CI/CD 完成后，手动触发类型生成。流程如下：

1. 后端更新 OpenAPI spec 并完成 CI/CD 部署
2. Flutter 开发者收到通知（或定期检查）
3. 运行 `flutter pub run build_runner build` 手动生成最新类型
4. 检查生成结果，修复可能的兼容性问题
5. 提交更新后的类型代码

开发体验：IDE 自动补全 API 参数和响应字段，编译时捕获类型错误，无需手动维护 API 类型定义。

</vision>

<essential>
## What Must Be Nailed

- **类型安全** - 所有 API 响应都有类型，编译时捕获类型错误
- **契约同步** - OpenAPI spec 变化时立即发现 API 兼容性问题
- **开发体验** - IDE 能自动补全 API 参数和响应字段
- **自动化流程** - 后端更新后自动触发，无需手动干预

</essential>

<boundaries>
## What's Out of Scope

- **完全替换 ApiClient** - 保留现有地域路由逻辑 (_buildUrl, _isRegionScopedPath)
- **认证逻辑重构** - 保留现有 AuthManager 和 token 处理
- **运行时类型验证** - 只做编译时类型检查，不做运行时校验
- **API 版本管理** - 假设后端 API 版本稳定，不处理多版本并存

</boundaries>

<failures>
## What Would Break It

- **类型不同步** - 生成类型与实际 API 响应不匹配，导致运行时崩溃
- **生成失败** - OpenAPI spec 格式问题导致代码生成失败或编译错误
- **迁移问题** - 现有代码迁移过程中出现兼容性问题，影响现有功能

</failures>

<specifics>
## Specific Ideas

- 参考文档: `/Users/yuming/Downloads/TYPE_GENERATION_GUIDE.md`
- 使用 `openapi-generator-dart` 包进行代码生成
- 生成的代码放在 `lib/api/generated/` 目录
- 保留现有的 `ApiClient` 地域路由逻辑
- 使用 `build_runner` 进行代码生成

### 架构设计

```
混合方案：
┌─────────────────────────────────────────┐
│   OpenAPI Spec (fire-la/api-specs)      │
│   - 后端 CI/CD 触发生成                   │
└─────────────────────────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────┐
│   Generated Types (lib/api/generated/)  │
│   - Request/Response 模型               │
│   - API 客户端接口                       │
└─────────────────────────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────┐
│   Existing ApiClient (lib/core/network) │
│   - 保留地域路由逻辑                      │
│   - 保留认证逻辑                         │
│   - 使用生成的类型                       │
└─────────────────────────────────────────┘
```

</specifics>

<notes>
## Additional Context

- 后端团队建议参考 TYPE_GENERATION_GUIDE.md 进行集成
- v1.0 MVP 已完成，这是 v1.1 的基础设施改进
- 需要与后端团队协调 CI/CD 触发机制

</notes>

---

*Phase: 08-openapi-types-integration*
*Context gathered: 2026-03-16*
