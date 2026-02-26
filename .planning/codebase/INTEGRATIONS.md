# External Integrations

**Analysis Date:** 2026-02-26

## APIs & External Services

**FIREla Backend API (Beancount SaaS):**
- Base URL: `https://api-s.firela.io/api`
- Integration method: REST API via `http` package
- Auth: JWT Bearer token
- Client: `lib/core/network/api_client.dart`
- Service: `lib/core/services/ign_api_service.dart`

**API Endpoints:**
- User creation: `POST /v1/users`
- Anonymous login: `POST /v1/auth/sessions/anonymous`
- NLP processing: `POST /v1/bean/nlp/process`
- Transactions: `/v1/bean/transactions`
- Bill import: `POST /v1/bean/import/file`
- Dashboard: net-worth, cash-flow, accounts

## Data Storage

**Local Storage:**
- Hive NoSQL database - Primary local storage
- Client: `hive` + `hive_flutter` packages
- Box: 'auth' for authentication data
- Keys defined in `lib/core/constants/storage_keys.dart`

**Storage Keys:**
- `auth_token` - JWT authentication token
- `refresh_token` - Refresh token
- `user_id` - User identifier
- `locale` - Selected locale
- `theme_mode` - Theme preference
- `last_sync` - Last sync timestamp
- `cached_accounts` - Cached account data

**Remote Storage:**
- Beancount SaaS backend - All financial data
- No direct database access - API only

## Authentication & Identity

**Auth Provider:**
- Custom JWT-based authentication
- Implementation: `lib/core/network/auth_manager.dart`
- Token storage: Hive local storage
- UI orchestration: `lib/core/services/auth_service.dart`

**Authentication Flow:**
1. Check for valid JWT token locally
2. Check for saved access token for auto-login
3. Create new account or input security token
4. JWT tokens with 180-day expiration

**Bot Protection:**
- Cloudflare Turnstile - Invisible mode
- Package: `cloudflare_turnstile ^3.3.1`
- Config: `ENABLE_TURNSTILE`, `TURNSTILE_SITE_KEY` env vars
- Implementation: `lib/core/services/auth_service.dart`

## Monitoring & Observability

**Error Tracking:**
- None configured

**Analytics:**
- None configured

**Logs:**
- `logger` package - Structured logging
- Levels: debug, info, warning, error
- Console output only (no remote aggregation)

## NLP Services

**Natural Language Bookkeeping:**
- Service: `processNlp()` in `lib/core/services/ign_api_service.dart`
- Multi-turn conversation support with sessionId
- Response actions: created, confirm, ask, confirm_duplicate, cancel

## Bill Import

**File Upload Service:**
- Endpoint: `POST /v1/bean/import/file`
- Supported formats: CSV, XLSX, XLS
- File size limit: 50MB
- Platforms: Alipay, WeChat, bank statements
- Implementation: `lib/features/expense/presentation/pages/bill_import_page.dart`

## Environment Configuration

**Development:**
- Compile-time config via `--dart-define` flags
- No `.env` files used

**Production:**
- Environment variables embedded at build time
- Base URL configurable per environment

## Webhooks & Callbacks

**Incoming:**
- None detected

**Outgoing:**
- None detected

## Ecosystem Integration

**billclaw:**
- Data import service (Plaid, Gmail)
- Referenced in `README.md`
- External service for bank/financial data aggregation

**Beancount:**
- Plain text accounting format backend
- Core data model for all transactions

---

*Integration audit: 2026-02-26*
*Update when adding/removing external services*
