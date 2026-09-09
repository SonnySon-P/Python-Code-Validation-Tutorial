# Python Code Validation Tutorial

```bash

```

```bash
                  check.sh
                     │
          ┌──────────┴──────────┐
          ↓                     ↓
     靜態分析                 功能測試
          │                     │
      ┌───┴───┐            test_caesar.py
      ↓       ↓                  │
    mypy   pylint                ↓
      │       │             實際執行函式
      └───┬───┘                  │
          │                      ↓
          │               實際結果 == 預期結果？
          │                      │
          └──────────┬───────────┘
                     ↓
                Verification
```
