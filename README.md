# Github 使用


## 1. 註冊 github 帳號


## 2. git 環境設定
### 2.1 下載 git 
至 [GIT](https://git-scm.com/download/) 下載 GIT 的安裝程式，若是不想要安裝，使用 Windows 的使用者可以下載 Git for Windows Portable，並解壓到特目錄，如 D:\\Git。

### 2.2 設定環境變數
在  windows 10 可以查詢 *環境變數* ，選擇 *編輯你的帳號的環境變數*
> 編輯你的帳號的環境變數

![](pics/Pasted%20image%2020210819093558.png)

點擊會會出現環境變數的設定畫面，再來就是點選 Path 並按編輯按鈕

![](pics/Pasted%20image%2020210831221752.png)

開始在使用者環境的路徑變數中，點選 **新增** ，，並增加 git portable 下的 Bin 目錄至變數。如果解壓縮在 d:\\git ，其目錄如檔案總的圖所示。 透過 複製、貼上，即可完成 git 的設定。

![](pics/Pasted%20image%2020210831222746.png)

![](pics/Pasted%20image%2020210831222323.png)

### 2.3 測試是否成功
這邊可以需要透過 git command line 完成設定
- 透過組合件： windows 鍵 + R，開啟執行
- 在執行內輸入 cmd
- 在 cmd 的畫面中執行 git

```cmd
> git
```

若執行結果出現下列畫面，代表已經設定成功。

![](pics/Pasted%20image%2020210831223236.png)


## 3. Clone github 的資料池
這邊可以需要透過 git command line 完成設定
- 透過組合件： windows 鍵 + R，開啟執行
- 在執行內輸入 cmd
- 在 github 取得專案的網址，如圖所示的位置

![](pics/Pasted%20image%2020210818171823.png)

- 然後在 cmd 的視窗輸入，下列的命令
- 切換至 D 磁碟
- 複製一份 github 的資料，即可以在  D 磁碟根目錄看到一個目錄。以下方的例子，在 D 磁碟會出現 obsidian-git 的目錄

```cmd
> d:
> git config --global user.name "your name"
> git config --global user.email youremail
> git clone https://github.com/reic/obisidian.git
```

## 4. 設定 Personal access token
因為 github 已經不再支援 git 透過 使用者帳號、密碼的登入方式，因此下列的範列將透過 github 提供的 personal access token 的方法，完成電腦資料和 github 的同步更新。

設定的方法如下
- 點擊 settings ，進入設定畫面

![](pics/Pasted%20image%2020210818171242.png)

- 設定會畫中的左邊有功能列，請點擊第2個區塊中的  Developer setting 的選項

![](pics/Pasted%20image%2020210818171312.png)


- 點擊 Personal access tokens

![](pics/Pasted%20image%2020210818171334.png)

- 設定 Personal access tokens
- 在 Note 的區域輸入 Personal access tokens 的名稱
- 在 Expiration 的欄位，設定 token 可使用的時間
- 在選取功能的部分，打勾 repo 的區塊，即可以滿足同步與更新專案資料的需求
- 完成相關設定後，在頁面最尾端，點擊 generate 以生成 personal access tokens
- Copy 生成的 tokens 文字。Peronal access token 只有在完成設定的時候會顯示，若是忘記則需要重新申請一個新的 token

![](pics/Pasted%20image%2020210818171352.png)

## 5. Github 的資料同步設定
需要修正 github 的資料取用模式，透過 personal token 取用、更新資料。

### 5.1 自己透過命令列更新
- 透過 git reomte -v 列出目前的取用方法
- 更新網址的取用方式，將 token@ 加入網址，如下
	- https://ghp_ladjflasjdlf@github.com/....

```cmd
> d:
> cd obisidian
> git remote -v 
> git remote set-url origin https://(token)@github.com/reic/obisidian.git
```

### 5.2 透過 set_token_login.bat 更新
在 cmd 裡面可以透過 tab 按鈕補齊命令，大概樣子如下
- set_token_login.bat ghp_adfajlsdfj.....
```cmd
> d:
> cd obisidian
> set_token_login.bat (貼上 token 字串)
```

## 6. 開啟下載的資料庫
- 選擇： 開啟資料夾為儲存庫
- 選擇 D:\\obisidian
- 因為 obsidian GIT 為第三方 Extension，請允許關閉安全性設定

![](pics/Pasted%20image%2020210819115908.png)

## 7. [obsidian 教學/安裝 obsidian GIT 外掛](obsidian%20教學/安裝%20obsidian%20GIT%20外掛.md)


## 8. 設定 GIT 取資料、更新熱鍵
在開啟資料池的時候，會先自己更新最新的資料

- ctrl + shift + =   ：將資料同步至 github
- ctrl + shift + -    ：下載最新資料

## 9. 解決 git log 中文無法顯示的問題
[git log 無法顯示中文問題](obsidian%20教學/中文亂碼問題.md)