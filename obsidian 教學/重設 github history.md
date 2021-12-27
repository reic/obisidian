# 清除github 提交歷程，資料減量

## 方法 1
從遠端的資料重建。可避免直接刪除 .git 目錄後，重建造成的問題。可以透過下述的方法

1. 取得最新的資料檔
```batch
> git checkout --orphan latest_branch
```

2. 將所有的檔案加入 git 追縱，並且提交修正(commit change)
```batch
> git add -A
> git commit -am "reset history"
```

3. 刪除分支(branch)，並將現有的分支改名為 main
```batch
> git branch -D main 
> git branch -m main
```

4. 最後，強制更新您的存儲庫
```batch
> git push -f origin main
```

## 方法 2
從本地端的資料。強制更新 github 的提交歷程資料

1. 刪除本地端 git 資料，並重建
	- 透過檔案總管，刪除 .git 目錄
	- 在 git 的目錄下執行下列的命令，以完成 git 初始化，並添加文件至 git
```batch
> git init
> git add -A
> git commit -am "reset history"
> git branch -m main
```

2. 設定遠端連線
```batch
> git remote add origin https://(personal tokens)@github.com/user/repo.git
```

3. 強制更新您的存儲庫
```batch
> git push -f origin main
```

4. 最後，設定遠端更新的資源庫
```batch
> git push --set-upstream origin main
```