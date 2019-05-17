# List the python information & docuemnts

## Beyond the basic
  - special methods
    - dunder => double underscore, dunder len => ```__len__```
    - ```__<moehto_name>__```
  - module => single python code => import xxx => general files
  - package: a module which can contain other modules => general directories
    - it will have ```__path__``` method
  - sys.path => list of directories Python searchs for modules
  - PYTHONPATH: Environment variable listing paths added to sys.path

## Python using for data analysis
  - SciPy
  - [Pandas](https://pandas.pydata.org/)
  - [matplotlib](https://matplotlib.org/)
  - [bokeh](https://bokeh.pydata.org/en/latest/)
  - [TensorFlow](https://www.tensorflow.org/)
  - [scikit-learn](https://scikit-learn.org/stable/) 

## style
  - [Google Python Style Guide](https://github.com/google/styleguide/blob/gh-pages/pyguide.md)

## time format - RFC 3339
  * 由 python 3.7 開始，datetime module 有 support RFC3339
  * [Issue: datetime: add ability to parse RFC 3339 dates and times](https://bugs.python.org/issue15873)
```
>>> from datetime import datetime
>>> xx = datetime.fromisoformat('2019-05-07T22:19:47.491616+08:00').timestamp()
>>> print ('timestamp is {}'.format(int(xx)))
timestamp is 1557238787
```

## python api
  * [Top Python APIs](https://www.programcreek.com/python/index/module/list) ** 找 python sample code 滿有趣的地方

## python package management
  * use pipenv to manage package - Pipenv 是一個整合 Pipfile, pip, virtualenv 的套件管理工具
  * [Pipenv: Python Dev Workflow for Humans](http://docs.pipenv.org/en/latest/) ** official doc
  * [Managing Application Dependencies](https://packaging.python.org/tutorials/managing-dependencies/#managing-dependencies) ** python official site introduction 
  * [Pipenv 使用教學](https://blog.chairco.me/posts/2017/02/Pipenv%20tutorial.html)
  * [Pipenv指令大全](https://medium.com/@johnnyellisjohnny/pipenv%E6%8C%87%E4%BB%A4%E5%A4%A7%E5%85%A8-6e4415cc8a15)
  * [Please explain the usage of Pipfile and Pipfile.lock](https://stackoverflow.com/questions/46330327/please-explain-the-usage-of-pipfile-and-pipfile-lock)

## python tutorial
  * [【GitHub 上破萬顆星】Python 新手 100 天學習計劃，這次學不會算我輸！](https://buzzorange.com/techorange/2019/05/07/python-100-days/)
  * [jackfrued/Python-100-Days](https://github.com/jackfrued/Python-100-Days) - Python - 100天从新手到大师

