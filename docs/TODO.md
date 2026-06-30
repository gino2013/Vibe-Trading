# TODO

_Updated: 2026-06-30_

---

## 待提交 (Uncommitted local changes)

- [x] **`agent/src/preflight.py`** — 移除 yfinance live price check（SIGBUS on Python 3.14），已改為單純 installed 檢測。✓ committed & pushed
- [x] **`start.sh`** — 啟動腳本已補完（kill existing、backend 8899、frontend 5899、health check）。✓ committed & pushed

---

## 近期修復（已合併，供追蹤）

| 日期 | 項目 |
|------|------|
| 2026-06-28 | fix(tools): clean file tool sandbox imports |
| 2026-06-28 | fix(frontend): guard runtime status polling |
| 2026-06-28 | fix(mcp): sanitize OAuth cache keys |
| 2026-06-27 | fix: Robinhood agent.json validation + safe seed config |
| 2026-06-27 | fix(providers): tolerate content-filtered LLM responses |
| 2026-06-26 | refactor(shadow-account): centralize price feature contract |
| 2026-06-26 | feat(shadow-account): carry price-condition bounds into extracted rules |
| 2026-06-25 | refactor(tools): isolate read/write roots + security tests |
| 2026-06-25 | feat(i18n): expand reactive zh-CN localization |
| 2026-06-24 | fix(validation): write strict JSON outputs |
| 2026-06-23 | feat(cli): add cross-platform `setup` and `dev` commands |
| 2026-06-23 | fix: tilde expansion in file tools (`~` path resolution) |

---

## 後續方向（依 README Roadmap）

- [ ] shadow-account 完整回測整合
- [ ] 多語系補全（zh-CN 以外）
- [x] `start.sh` 完成並文件化啟動流程
- [x] preflight 補上 Python 3.14 相容性說明
