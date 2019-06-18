# List 用 python 的過程中，遇到的一些問題
## 將 version 的字串，進行 sorting
  * 用 distutils.version 進行 sorting
```
from distutils.version import StrictVersion
versions = ["1.1.2", "1.0.0", "1.3.3", "1.0.12", "1.0.2"]
versions.sort(key=StrictVersion)
```
  * [Sorting a list of dot-separated numbers, like software versions](https://stackoverflow.com/questions/2574080/sorting-a-list-of-dot-separated-numbers-like-software-versions)
