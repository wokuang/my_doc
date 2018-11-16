# List the information of google chrome extension

## chrome extension
  * [Chrome Extension 開發與實作](https://ithelp.ithome.com.tw/users/20079450/ironman/1149)

## 操作 step
  * 進入 extension 管理介面 chrome://extensions

## 檔案結構 
所有的extension擁有下列檔案：

  * 一個安裝檔 ：manifest file
  * 一個或多個 HTML檔 ：除了Chrome佈景的extension。 
  * 非必要：一個或多個JS檔
  * 非必要： 所有其他你需要的靜態檔案，例如 圖片檔 、.css檔 

所以的檔案都放置在一個目錄底下，當你經由 Chrome Developer Dashboard發佈，他會為打包成一個.crx包裝檔。關於發佈的詳情教學，我們會在後面討論。 

## Reference Data
  * [Chrome Permissions](https://developer.chrome.com/extensions/declare_permissions)

