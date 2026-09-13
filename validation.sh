#!/bin/bash

echo "=== Running mypy ==="  # 把文字印到terminal
mypy caesar_cipher.py  # 執行mypy

if [ $? != 0 ]; then  # $?是bash的特殊變數，代表上一個指令的執行結果。0 = 成功、非0 = 失敗
    echo "mypy check failed."
    exit 1  # 結束這個bash script
fi

echo "=== Running pylint ==="
pylint caesar_cipher.py

if [ $? != 0 ]; then
    echo "pylint check failed."
    exit 1
fi

echo "=== Running Caesar Cipher test ==="

TEST_MESSAGE="Hello World"  # 設定測試輸入
EXPECTED_CIPHER_TEXT="Mjqqt Btwqi"  # 設定預期的加密結果
EXPECTED_PLAIN_TEXT="Hello World"  # 設定預期的解密結果

OUTPUT=$(printf "%s\n" "$TEST_MESSAGE" | python3 caesar_cipher.py)  # 自動執行python程式，把左邊程式的輸出，直接送給右邊程式當作輸入

CIPHER_TEXT=$(echo "$OUTPUT" | grep -o "Cipher text: .*" | sed 's/Cipher text: //')  # 取得加密結果
PLAIN_TEXT=$(echo "$OUTPUT" | grep -o "Plain text: .*" | sed 's/Plain text: //')  # 取得解密結果

if [ "$CIPHER_TEXT" != "$EXPECTED_CIPHER_TEXT" ]; then
    echo "Encryption test failed."
    echo "Expected: $EXPECTED_CIPHER_TEXT"
    echo "Actual: $CIPHER_TEXT"
    exit 1
fi

echo "Encryption test passed."

if [ "$PLAIN_TEXT" != "$EXPECTED_PLAIN_TEXT" ]; then
    echo "Decryption test failed."
    echo "Expected: $EXPECTED_PLAIN_TEXT"
    echo "Actual: $PLAIN_TEXT"
    exit 1
fi

echo "Decryption test passed."
