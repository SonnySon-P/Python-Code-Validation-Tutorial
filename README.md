# Python Code Validation Tutorial

```bash
pip install mypy
pip install pylint
```

```bash
pip install mypy
pip install pylint
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
mypy = 型別有沒有錯
flake8 = 程式碼格式、風格有沒有問題
pylint = 程式碼品質與潛在問題

mypy 是 Python 的靜態型別檢查工具。

pylint caesar.py
它會檢查：
命名方式
未使用變數
程式結構
太複雜的函式
缺少 docstring
潛在的程式問題
一些設計上的問題
