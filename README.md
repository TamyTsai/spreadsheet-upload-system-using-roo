# 使用者試算表上傳系統
![截圖 2024-09-08＿使用者列表頁面](https://github.com/user-attachments/assets/83f45b94-e8f2-4b75-9071-efc1c6d2b31d)

## 關於使用者試算表上傳系統
- 一個可以將Excel檔案資料直接匯入資料表，然後呈現出來的網頁
  
## 專案畫面與功能介紹
### 使用者列表
- 點擊選擇檔案，可挑擇含有欲整批匯入的使用者資料之檔案
- 檔案上傳後，點擊Save，資料就會直接顯示於下方列表

![截圖 2024-09-08＿使用者列表頁面](https://github.com/user-attachments/assets/83f45b94-e8f2-4b75-9071-efc1c6d2b31d)

<hr>

### 欲整批匯入的使用者資料之檔案
![截圖 2024-09-08＿Excel檔案](https://github.com/user-attachments/assets/39421f3a-f9f4-4790-b1b4-f020c30cfd3a)

<hr>

### 單一使用者資訊
![截圖 2024-09-08 單一使用者資訊頁面](https://github.com/user-attachments/assets/8d993304-0f5f-4142-ba44-833a06cb34df)

<hr>

### 新建使用者資訊
- 使用者資訊除了可以用檔案整批匯入外，也可以單筆新增

![截圖 2024-09-08 新建使用者頁面](https://github.com/user-attachments/assets/5191dc30-68bc-4b9d-8eb1-6428f7a6d065)

## 安裝
以下皆為於macOS環境運行
### 安裝Ruby
```bash
$ brew install ruby
```
### 安裝Rails v7.1.3.4
```bash
$ gem install rails -v 7.1.3.4
```
### 安裝相關套件
```bash
$ bundle install
```
### 啟動rails伺服器及編譯器
```bash
$ rails s
```
### 開啟專案
在瀏覽器網址列輸入以下網址即可看到專案首頁
```bash
http://localhost:3000/
```

## 專案技術
- 前端：HTML、Simple.css
- 後端：Ruby on Rails
- 版本控制：Git

## 使用技術詳細說明
- 以HTML、CSS及Ruby撰寫，為動態網頁
- 使用Simple.css做簡單快速的網頁美化
- 使用Rails框架製作網頁
- 使用Roo套件，讓使用者可以使用Excel匯入資料

## 聯絡作者
你可以透過email與我聯絡：tamy8677@gmail.com

<i>最後更新：2024.8.25</i>

