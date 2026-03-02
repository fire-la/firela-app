# 地域路由 API 集成指南

> **文档版本**: v1.0
> **最后更新**: 2026-03-01
> **OpenAPI 文档**: 完整的 API 文档请访问 `/api/docs`（需要认证）
> **关联文档**:
> - [地域选择 UI 集成指南](./region-selection-integration.md) - 地域选择 UI
> - [交易 API 集成指南](./transaction-api-integration.md) - 交易 CRUD

---

## 一、API 路由概览

### 1.1 两种路由类型

IGN API 有两种路由类型：

| 类型 | URL 模式 | 说明 |
|------|----------|------|
| **地域前缀路由** | `/api/v1/{region}/{module}/*` | 需要地域上下文的端点 |
| **全局路由** | `/api/v1/{module}/*` | 不需要地域上下文的端点 |

### 1.2 URL 结构

**地域前缀路由**:

```
/api/v1/{region}/{module}/{resource}[/{id}][?query]
 │      │        │         │
 │      │        │         └─ 资源 ID（可选）
 │      │        └─ 资源名称
 │      └─ 模块名称（bean, reporting 等）
 └─ 地域代码（cn, us, eu-core, de）
```

**全局路由**:

```
/api/v1/{module}/{resource}[/{id}][?query]
 │      │         │
 │      │         └─ 资源名称
 │      └─ 模块名称（auth, symbol, platform 等）
 └─ 无地域前缀
```

### 1.3 地域代码

支持的地域代码：

| 代码 | 名称 | 父级 |
|------|------|------|
| `cn` | 中国 | - |
| `us` | 美国 | - |
| `eu-core` | 欧盟核心 | - |
| `de` | 德国 | eu-core |

---

## 二、地域前缀端点列表

所有 Bean 模块端点需要地域前缀：

### 2.1 Bean 核心资源

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/{region}/bean/transactions` | GET, POST | 交易列表/创建 |
| `/api/v1/{region}/bean/transactions/:id` | GET, PATCH, DELETE | 交易详情/更新/作废 |
| `/api/v1/{region}/bean/accounts` | GET | 账户列表 |
| `/api/v1/{region}/bean/accounts/:id` | GET | 账户详情 |
| `/api/v1/{region}/bean/commodities` | GET, POST | 货币/商品列表/创建 |
| `/api/v1/{region}/bean/commodities/:id` | GET, PATCH | 货币/商品详情/更新 |
| `/api/v1/{region}/bean/prices` | GET, POST | 价格列表/创建 |
| `/api/v1/{region}/bean/prices/:id` | GET, DELETE | 价格详情/删除 |
| `/api/v1/{region}/bean/payees` | GET, POST | 收款方列表/创建 |
| `/api/v1/{region}/bean/payees/:id` | GET, PATCH, DELETE | 收款方详情/更新/删除 |

### 2.2 Bean 导入和 NLP

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/{region}/bean/import/file` | POST | 文件导入 |
| `/api/v1/{region}/bean/import/status/:jobId` | GET | 导入状态 |
| `/api/v1/{region}/bean/nlp/chat` | POST | NLP 对话 |
| `/api/v1/{region}/bean/nlp/suggestions` | POST | NLP 建议 |

### 2.3 Bean 规则和学习

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/{region}/bean/transaction-rules` | GET, POST | 规则列表/创建 |
| `/api/v1/{region}/bean/transaction-rules/:id` | GET, PATCH, DELETE | 规则详情/更新/删除 |
| `/api/v1/{region}/bean/review-center` | GET | 待审核项目 |
| `/api/v1/{region}/bean/review-center/:id/accept` | POST | 接受建议 |
| `/api/v1/{region}/bean/review-center/:id/reject` | POST | 拒绝建议 |

### 2.4 Bean 周期性交易

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/{region}/bean/recurring` | GET, POST | 周期性交易列表/创建 |
| `/api/v1/{region}/bean/recurring/:id` | GET, PATCH, DELETE | 周期性交易详情/更新/删除 |

### 2.5 地域资源

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/{region}/bean/account-standards` | GET | 账户标准列表 |
| `/api/v1/{region}/bean/asset-classification` | GET | 资产分类规则 |
| `/api/v1/{region}/bean/region/config` | GET | 地域配置 |

### 2.6 报表

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/{region}/reporting/balance-sheet` | GET | 资产负债表 |
| `/api/v1/{region}/reporting/income-statement` | GET | 收支表 |
| `/api/v1/{region}/reporting/cash-flow` | GET | 现金流表 |

---

## 三、全局端点列表

以下端点不需要地域前缀：

### 3.1 认证

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/auth/register` | POST | 用户注册 |
| `/api/v1/auth/login` | POST | 用户登录 |
| `/api/v1/auth/logout` | POST | 用户登出 |
| `/api/v1/auth/refresh` | POST | 刷新 Token |
| `/api/v1/auth/me` | GET | 当前用户信息 |

### 3.2 市场数据

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/symbol/lookup` | GET | 符号搜索 |
| `/api/v1/symbol/:dataSource/:symbol` | GET | 符号详情/报价 |

### 3.3 平台

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/platforms` | GET | 平台列表 |
| `/api/v1/platforms/:id` | GET | 平台详情 |

### 3.4 健康检查

| 端点 | 方法 | 说明 |
|------|------|------|
| `/api/v1/health` | GET | 服务健康状态 |
| `/api/v1/health/db` | GET | 数据库连接状态 |

---

## 四、客户端实现指南

> **本节提供的工具函数和客户端实现可直接复制使用。**
> **所有代码均为 TypeScript，与后端路由规则保持同步。**

### 4.1 URL 构建函数

```typescript
/**
 * 地域代码类型
 */
type RegionCode = 'cn' | 'us' | 'eu-core' | 'de';

/**
 * 需要地域前缀的路径前缀
 */
const REGION_SCOPED_PREFIXES = [
  '/bean/',
  '/reporting/',
  '/region/'
];

/**
 * 判断路径是否需要地域前缀
 */
function isRegionScopedPath(path: string): boolean {
  return REGION_SCOPED_PREFIXES.some(prefix => path.startsWith(prefix));
}

/**
 * 构建 API URL
 *
 * @param region - 当前地域代码
 * @param path - API 路径（以 / 开头）
 * @param baseUrl - API 基础 URL（默认为空，使用相对路径）
 * @returns 完整的 API URL
 *
 * @example
 * buildRegionUrl('cn', '/bean/transactions')
 * // => '/api/v1/cn/bean/transactions'
 *
 * buildRegionUrl('de', '/auth/login')
 * // => '/api/v1/auth/login' (全局端点，无需地域前缀)
 */
function buildRegionUrl(
  region: RegionCode,
  path: string,
  baseUrl: string = ''
): string {
  // 确保路径以 / 开头
  const normalizedPath = path.startsWith('/') ? path : `/${path}`;

  // 判断是否需要地域前缀
  if (isRegionScopedPath(normalizedPath)) {
    return `${baseUrl}/api/v1/${region}${normalizedPath}`;
  }

  // 全局端点
  return `${baseUrl}/api/v1${normalizedPath}`;
}
```

### 4.2 地域感知的 HTTP 客户端

```typescript
/**
 * 地域感知的 API 客户端配置
 */
interface RegionClientConfig {
  baseUrl: string;
  token: string;
  region: RegionCode;
}

/**
 * 地域感知的 API 客户端
 */
class RegionAwareClient {
  private config: RegionClientConfig;

  constructor(config: RegionClientConfig) {
    this.config = config;
  }

  /**
   * 更新地域
   */
  setRegion(region: RegionCode): void {
    this.config.region = region;
  }

  /**
   * 更新认证 Token
   */
  setToken(token: string): void {
    this.config.token = token;
  }

  /**
   * 构建 URL
   */
  private buildUrl(path: string): string {
    return buildRegionUrl(this.config.region, path, this.config.baseUrl);
  }

  /**
   * 发起请求
   */
  async request<T>(
    path: string,
    options: RequestInit = {}
  ): Promise<T> {
    const url = this.buildUrl(path);

    const response = await fetch(url, {
      ...options,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${this.config.token}`,
        ...options.headers
      }
    });

    if (!response.ok) {
      const error = await response.json();
      throw new RegionApiError(error, this.config.region);
    }

    return response.json();
  }

  // 便捷方法
  get<T>(path: string): Promise<T> {
    return this.request<T>(path, { method: 'GET' });
  }

  post<T>(path: string, body: unknown): Promise<T> {
    return this.request<T>(path, {
      method: 'POST',
      body: JSON.stringify(body)
    });
  }

  patch<T>(path: string, body: unknown): Promise<T> {
    return this.request<T>(path, {
      method: 'PATCH',
      body: JSON.stringify(body)
    });
  }

  delete<T>(path: string): Promise<T> {
    return this.request<T>(path, { method: 'DELETE' });
  }
}
```

### 4.3 地域上下文管理

```typescript
/**
 * 地域上下文管理器
 */
class RegionContextManager {
  private static STORAGE_KEY = 'ign_current_region';
  private static DEFAULT_REGION: RegionCode = 'cn';

  /**
   * 获取当前地域
   */
  static getCurrentRegion(): RegionCode {
    const stored = localStorage.getItem(this.STORAGE_KEY);
    if (stored && this.isValidRegion(stored)) {
      return stored as RegionCode;
    }
    return this.DEFAULT_REGION;
  }

  /**
   * 设置当前地域
   */
  static setCurrentRegion(region: RegionCode): void {
    if (!this.isValidRegion(region)) {
      throw new Error(`Invalid region: ${region}`);
    }
    localStorage.setItem(this.STORAGE_KEY, region);
  }

  /**
   * 验证地域代码
   */
  static isValidRegion(region: string): boolean {
    const validRegions: RegionCode[] = ['cn', 'us', 'eu-core', 'de'];
    return validRegions.includes(region as RegionCode);
  }
}
```

---

## 五、错误处理

### 5.1 地域相关错误

```typescript
/**
 * 地域 API 错误类
 */
class RegionApiError extends Error {
  type: string;
  status: number;
  detail: string;
  instance: string;
  region: RegionCode;

  constructor(error: {
    type: string;
    status: number;
    detail: string;
    instance: string;
  }, region: RegionCode) {
    super(error.detail);
    this.type = error.type;
    this.status = error.status;
    this.detail = error.detail;
    this.instance = error.instance;
    this.region = region;
  }

  /**
   * 是否为无效地域错误
   */
  isInvalidRegion(): boolean {
    return this.type === 'INVALID_REGION';
  }

  /**
   * 是否为地域不支持功能错误
   */
  isUnsupportedFeature(): boolean {
    return this.type === 'UNSUPPORTED_FEATURE';
  }
}
```

### 5.2 错误响应示例

**400 Bad Request - 无效地域代码**:

```json
{
  "type": "INVALID_REGION",
  "title": "Invalid region code",
  "status": 400,
  "detail": "Region 'jp' is not supported. Supported regions: cn, us, eu-core, de",
  "instance": "/api/v1/jp/bean/transactions"
}
```

**404 Not Found - 地域资源不存在**:

```json
{
  "type": "RESOURCE_NOT_FOUND",
  "title": "Region resource not found",
  "status": 404,
  "detail": "Account standards for region 'fr' not found",
  "instance": "/api/v1/fr/bean/account-standards"
}
```

### 5.3 错误处理示例

```typescript
async function fetchTransactions(
  client: RegionAwareClient,
  params?: { limit?: number; offset?: number }
) {
  try {
    return await client.get<TransactionListResponse>(
      `/bean/transactions?${new URLSearchParams(params as Record<string, string>)}`
    );
  } catch (error) {
    if (error instanceof RegionApiError) {
      if (error.isInvalidRegion()) {
        // 回退到默认地域
        console.warn(`Invalid region ${error.region}, falling back to default`);
        client.setRegion('cn');
        return fetchTransactions(client, params);
      }

      if (error.isUnsupportedFeature()) {
        // 显示功能不支持提示
        showToast('该功能在当前地域暂不支持');
        return { data: [], total: 0 };
      }
    }

    throw error;
  }
}
```

---

## 六、请求拦截器配置

### 6.1 Axios 拦截器

```typescript
import axios, { AxiosInstance, InternalAxiosRequestConfig } from 'axios';

/**
 * 创建地域感知的 Axios 实例
 */
function createRegionAwareAxios(config: RegionClientConfig): AxiosInstance {
  const instance = axios.create({
    baseURL: config.baseUrl,
    headers: {
      'Content-Type': 'application/json'
    }
  });

  // 请求拦截器：注入地域前缀和认证
  instance.interceptors.request.use(
    (config: InternalAxiosRequestConfig) => {
      // 注入认证 Token
      config.headers.Authorization = `Bearer ${this.config.token}`;

      // 如果是地域前缀路径，修改 URL
      if (config.url && isRegionScopedPath(config.url)) {
        config.url = `/${this.config.region}${config.url}`;
      }

      return config;
    },
    (error) => Promise.reject(error)
  );

  // 响应拦截器：处理错误
  instance.interceptors.response.use(
    (response) => response,
    (error) => {
      if (error.response?.data) {
        return Promise.reject(new RegionApiError(error.response.data, this.config.region));
      }
      return Promise.reject(error);
    }
  );

  return instance;
}
```

### 6.2 Fetch 拦截器

```typescript
/**
 * 创建地域感知的 Fetch 函数
 */
function createRegionAwareFetch(config: RegionClientConfig) {
  return async (input: RequestInfo | URL, init?: RequestInit): Promise<Response> => {
    let url: string;

    if (typeof input === 'string') {
      url = buildRegionUrl(config.region, input, config.baseUrl);
    } else if (input instanceof URL) {
      url = buildRegionUrl(config.region, input.pathname, config.baseUrl);
    } else if (input instanceof Request) {
      url = buildRegionUrl(config.region, input.url, config.baseUrl);
    } else {
      url = String(input);
    }

    const headers = new Headers(init?.headers);
    headers.set('Content-Type', 'application/json');
    headers.set('Authorization', `Bearer ${config.token}`);

    return fetch(url, {
      ...init,
      headers
    });
  };
}
```

---

## 七、最佳实践

### 7.1 地域切换时的处理

```typescript
/**
 * 切换地域并清理缓存
 */
async function switchRegion(
  newRegion: RegionCode,
  client: RegionAwareClient,
  cache: Map<string, unknown>
): Promise<void> {
  // 1. 清理缓存
  cache.clear();

  // 2. 更新地域
  RegionContextManager.setCurrentRegion(newRegion);
  client.setRegion(newRegion);

  // 3. 重新获取必要的配置
  const config = await client.get<RegionConfig>('/bean/region/config');

  // 4. 更新 UI 状态
  updateLocale(config.locale);
  updateCurrency(config.currency);
}
```

### 7.2 多地域并行请求

```typescript
/**
 * 并行获取多个地域的数据
 */
async function fetchMultiRegionData(
  client: RegionAwareClient,
  regions: RegionCode[]
): Promise<Map<RegionCode, AccountStandard[]>> {
  const results = new Map<RegionCode, AccountStandard[]>();

  await Promise.all(
    regions.map(async (region) => {
      const originalRegion = client.config.region;
      client.setRegion(region);

      try {
        const data = await client.get<AccountStandard[]>('/bean/account-standards');
        results.set(region, data);
      } finally {
        client.setRegion(originalRegion);
      }
    })
  );

  return results;
}
```

### 7.3 类型安全的端点调用

```typescript
/**
 * 地域前缀 API 端点类型
 */
interface RegionScopedEndpoints {
  '/bean/transactions': {
    GET: TransactionListResponse;
    POST: CreateTransactionResponse;
  };
  '/bean/accounts': {
    GET: AccountListResponse;
  };
  '/bean/account-standards': {
    GET: AccountStandard[];
  };
}

/**
 * 全局 API 端点类型
 */
interface GlobalEndpoints {
  '/auth/login': {
    POST: LoginResponse;
  };
  '/symbol/lookup': {
    GET: SymbolLookupResponse;
  };
}

/**
 * 类型安全的 API 调用
 */
async function callApi<E extends keyof (RegionScopedEndpoints & GlobalEndpoints)>(
  client: RegionAwareClient,
  endpoint: E,
  method: keyof (RegionScopedEndpoints & GlobalEndpoints)[E],
  body?: unknown
): Promise<(RegionScopedEndpoints & GlobalEndpoints)[E][typeof method]> {
  return client.request(endpoint, { method, body });
}
```

---

## 八、常见问题

### Q1: 如何判断一个端点是否需要地域前缀？

A: 查看 URL 是否包含 `/bean/`、`/reporting/` 或 `/region/` 前缀。这些模块需要地域上下文。

### Q2: 用户切换地域后，之前的数据会怎样？

A: 数据按地域隔离存储。切换地域只是改变当前视图，不会删除其他地域的数据。

### Q3: 如果 API 返回 400 INVALID_REGION 怎么办？

A: 这表示 URL 中的地域代码无效。应该：
1. 回退到用户偏好或默认地域
2. 重新发起请求
3. 提示用户地域已重置

### Q4: 全局端点（如 /auth/login）能带地域前缀吗？

A: 不应该。全局端点不接受地域前缀，如果添加会被忽略或返回 404。

---

*文档版本: v1.0*
*最后更新: 2026-03-01*
