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

## regex
  * [PYTHON regular expression 實戰](https://ithelp.ithome.com.tw/articles/10197315)
  * [online regular expression](https://regex101.com/) ** 線上驗證 regex 用，滿好用的

## password hash
  * using bcrypt as password hash
  * [Salt and Hash Example Using Python With Bcrypt on Alpine](https://blog.ruanbekker.com/blog/2018/07/04/salt-and-hash-example-using-python-with-bcrypt-on-alpine/)

## template engine
  * [Template Engines](https://www.fullstackpython.com/template-engines.html)
  * [3 Python template libraries compared](https://opensource.com/resources/python/template-libraries)
  * [Mako Templates for Python](https://www.makotemplates.org/)
    * [Mako Documentation](https://docs.makotemplates.org/en/latest/)
  * [Html Reports Using Mako Templates](https://doc.odoo.com/6.0/es/developer/3_11_reports/11_3_mako2html_report/)

## validate on python
  * [Validate Python Function Parameter & Return Types with Decorators](https://www.pythoncentral.io/validate-python-function-parameters-and-return-types-with-decorators/)
  * [MAKE YOUR PYTHON PRETTIER WITH DECORATORS](https://hackaday.com/2018/08/31/an-introduction-to-decorators-in-python/)
  * [Validating Function Arguments with Decorators](https://learning-python.com/rangetest.html)

## Anti-Patterns
  * [The Little Book of Python Anti-Patterns](https://docs.quantifiedcode.com/python-anti-patterns/index.html) ** 多看看囉

## json and md5 hash
  * [Generate md5 hash of JSON and compare in Python and JavaScript](https://stackoverflow.com/questions/51359943/generate-md5-hash-of-json-and-compare-in-python-and-javascript)

## Jupyter Notebook
  * [Jupyter Notebook介紹](https://medium.com/python4u/jupyter-notebook%E5%AE%8C%E6%95%B4%E4%BB%8B%E7%B4%B9%E5%8F%8A%E5%AE%89%E8%A3%9D%E8%AA%AA%E6%98%8E-b8fcadba15f)

## string format
  * [PEP 498 -- Literal String Interpolation](https://www.python.org/dev/peps/pep-0498/)
  * [Python 3's f-Strings: An Improved String Formatting Syntax (Guide)](https://realpython.com/python-f-strings/)
  * [f-string Formatting in Python](https://www.datacamp.com/community/tutorials/f-string-formatting-in-python)

## python log
  * [Structured log files in Python using python-json-logger](https://wtanaka.com/node/8201)
    * [madzak/python-json-logger](https://github.com/madzak/python-json-logger) Json Formatter for the standard python logger

## PEP
  * [PEP 8 -- Style Guide for Python Code](https://www.python.org/dev/peps/pep-0008/)

## python tutorial
  * [Getting Started with Python Programming](https://data-flair.training/blogs/python-tutorials-home/)
  * [【GitHub 上破萬顆星】Python 新手 100 天學習計劃，這次學不會算我輸！](https://buzzorange.com/techorange/2019/05/07/python-100-days/)
  * [jackfrued/Python-100-Days](https://github.com/jackfrued/Python-100-Days) - Python - 100天从新手到大师
  * [Beginner Python Course](https://python.tecladocode.com/)

