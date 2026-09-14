# Python Code Validation Tutorial

用於教學示範的簡單Python程式驗證範例。

## 壹、基本說明
**一、目標：**
主要旨在驗證Python程式的正確性、穩定性及規範符合度，確保整體流程的嚴謹性與高品質。通常可透過以下兩個層面來進行：
1. **靜態分析**：運用`mypy`檢查型別標註的一致性，並透過`pylint`偵測未使用的變數、語法錯誤與排版問題。
2. **功能測試**：藉由撰寫測試指令碼（Bash），全面驗證各項函數與模組的功能正確性。
```bash
               validation.sh
                     │
          ┌──────────┴──────────┐
          ↓                     ↓
        靜態分析               功能測試
          │                     │
      ┌───┴───┐                 │
      ↓       ↓                 ↓ 
     mypy   pylint      實際結果 == 預期結果？
      │       │                 │
      └───┬───┘                 │
          │                     │
          └──────────┬──────────┘
                     ↓
                   驗證結果
```

**二、開發環境：**
以下是開發前後平台所採用的環境：
* 虛擬機：Docker
* 程式語言：Python
* 程式編輯器：Visual Studio Code

**三、使用相依套件：**
* mypy（型別檢查）
* pylint (語法、未使用變數、命名、文件字串檢查)

## 貳、操作說明
**一、安裝套件：** 
```bash
pip install mypy
pip install pylint
```
**二、運行程式：**
```bash
chmod +x check.sh
./validation.sh
```
