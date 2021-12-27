# 輸出 docx, pptx 檔
obsidian 可以透過 pandoc 的外掛輸出 pptx, docx 等多種格式的檔。
1. 首先，下載並安裝  [pandoc](https://pandoc.org/)。
2. 在 obsidian 中安裝 Pandoc Plugin
3. 完成 obsidian 的設定
4. 輸出 docx, pptx 檔

## 1. Pandoc 安裝
Pandoc 是一個通用文件轉換程式，可以在 #pandoc 網站找到 release 的 github 下載點，如 [pandoc release](https://github.com/jgm/pandoc/releases)。

我個人偏好下載 zip ，直接解壓縮使用。
![[../pics/Pasted image 20210828171932.png]]

假設， pandoc 被解壓到 d:\\pandoc 。

![[../pics/Pasted image 20210828172050.png]]

## 2. 在 Obsidian 安裝 Pandoc Plugin
透過二個步驟，完成 pandoc plugin 的安裝
1. 安裝 pandoc plugin
2. 啟動 pandoc plugin

在 obsidian  的第三方外掛中，搜尋 pandoc 並安裝。

![[../pics/Pasted image 20210828172303.png]]

啟動外掛

![[../pics/Pasted image 20210828172634.png]]


## 3. 完成 obsidian 設定
包含了 2 個部分，pandoc plugin 的設定，確保圖片可以一起適著 docx 一起輸出。
1. 在 Pandoc plugin 中設定  pandoc.exe 的位置
2. 調整內部檔案連結格式，以利可以正確的附加圖片到 docx 內

設定 pandoc.exe 的路徑

![[../pics/Pasted image 20210828172736.png]]

更改內部檔案連結格式

![[../pics/Pasted image 20210828172940.png]]

## 4. 輸出 docx 檔
執行可以透 #命令面版 的 pandoc 的功能完成。操作方法為
1. 開啟命令面板
2. 找到 pandoc docx 的輸出功能，執行。即可在 md 檔的原位置找到。

![[../pics/Pasted image 20210828173702.png]]

![[../pics/Pasted image 20210828173716.png]]