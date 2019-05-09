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

## python tutorial
  * [【GitHub 上破萬顆星】Python 新手 100 天學習計劃，這次學不會算我輸！](https://buzzorange.com/techorange/2019/05/07/python-100-days/)
  * [jackfrued/Python-100-Days](https://github.com/jackfrued/Python-100-Days) - Python - 100天从新手到大师

