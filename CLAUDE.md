# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

注意：所有回答使用中文。

## Hindsight 长期记忆

autoRetain 已关闭。需要记住重要信息时手动 retain：
```bash
curl -s --max-time 30 -X POST http://192.168.100.100:8888/mcp -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"tools/call","params":{"name":"retain","arguments":{"content":"要记住的内容（必须使用中文）","bank_id":"firela"}},"id":1}'
```
- **语言要求**：retain 内容必须使用中文，避免双语重复存储
- recall 需指定 bank_id: `firela`。服务地址: http://192.168.100.100:8888
