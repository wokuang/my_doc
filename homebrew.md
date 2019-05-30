# List HomeBrew information
Homebrew - macOS 缺少套件的管理工具
之前用 brew 安裝程式，就僅是單純的下 command 就是囉，現在想說要來看一下 brew 的運作方式

## Homebrew 安裝的地方
  * Homebrew 會將 packages 安裝在他們自己的目錄(/usr/local/Cellar)，然後把檔案 symlink 到 /usr/local 下。

## 清除舊的 version
  * 看有那些需要 clean
    * $ brew cleanup -n
  * 進行 clean
    * $ brew cleanup <formula>
    * $ brew cleanup

## reference
  * [brew和brew cask有什么区别？](https://www.zhihu.com/question/22624898)
  * [Cask 讓 OSX 安裝軟體更有效率](http://blog.visioncan.com/2014/introducing-cask/)

