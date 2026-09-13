# Python Code Validation Tutorial

打造一個簡潔直觀的雲端硬碟管理介面，讓使用者能輕鬆上傳、下載、管理與瀏覽雲端檔案。

## 壹、基本說明
**一、目標：**
驗證一個 Python 程式是否正確、穩定且符合規範，通常可以透過以下四個層面來進行：
1. 靜態程式碼分析 (Static Analysis)
在不實際執行程式的情況下，檢查語法、風格與型別：
* 型別檢查：使用 mypy 檢查型別標註是否一致，提早發現潛在的型別錯誤。
* 程式碼風格與Lint：使用 flake8 或 pylint 檢查未使用的變數、語法錯誤與排版問題。
2. 單元測試與自動化測試 (Unit Testing)
透過編寫測試程式碼，驗證函數與模組的功能是否正確：
* 測試框架：使用主流的 pytest（或 Python 內建的 unittest）來編寫輸入與預期輸出的測試案例。
* 測試覆蓋率：搭配 pytest-cov 檢視測試程式覆蓋了多少比例的原始碼，確保核心邏輯都有被驗證。
3. 執行期偵錯與防護 (Runtime Verification)
在程式運行時進行狀態檢查與追蹤：
* 斷言 (assert)：在關鍵邏輯處加入 assert 條件, "錯誤訊息"，當資料不符預期時立即終止。
* 互動式除錯：利用內建的 pdb 模組或 VS Code、PyCharm 的圖形化斷點（Breakpoint）功能，逐步執行並觀察變數變化。
4. 安全性與效能檢查 (Security & Performance)
針對特定需求進行品質把關：
* 安全性掃描：使用 bandit 套件掃描程式碼中是否有常見的安全漏洞（如 SQL 注入風險等）。
* 效能分析：使用 cProfile 或 timeit 來找出程式的效能瓶頸（Bottleneck）。
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
<br>

**二、開發環境：**
以下是開發前後平台所採用的環境：
* 虛擬機：Docker
* 程式語言：Python
* 程式編輯器：Visual Studio Code

**三、使用相依套件：**
* mypy（型別檢查）
* pylint (語法、未使用變數、命名、文件字串檢查)

## 貳、操作說明
**一、安裝程式方式：** 
從GitHub下載該檔案，由於前後端採用分離的系統架構，其安裝方式亦有所差異，具體操作如下所示：
* 安裝mypy跟pylint套件
```bash
pip install mypy
pip install pylint
```
**二、運行結果：**
當前後端架構完成建置後，您只需在瀏覽器中輸入127.0.0.1:8080/login以開啟應用程式。以下展示的是系統實際呈現的網頁畫面。
```bash
chmod +x check.sh
./validation.sh
```
