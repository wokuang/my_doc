# List pytest information
  * [pytest introduction](https://pythontesting.net/framework/pytest/pytest-introduction/)
  * [pytest official site](https://docs.pytest.org/en/latest/)
    * [Full pytest documentation](https://docs.pytest.org/en/latest/contents.html)
    * [pytest fixtures: explicit, modular, scalable](https://docs.pytest.org/en/latest/fixture.html) ** fixtrue 滿有趣的，多看幾次囉
    * [Pass different values to a test function, depending on command line options](https://docs.pytest.org/en/latest/example/simple.html) - 可以用輸入參數的方式
  * [PyTest Tutorial: What is, Install, Fixture, Assertions](https://www.guru99.com/pytest-tutorial.html)

## pytest file names
```
test_login.py - valid
login_test.py - valid
testlogin.py -invalid
logintest.py -invalid
```

## run command
  * verbose run testcase
```
$ pytest testApi.py -v
```
  * run only one test
```
$ pytest -v testApi.py::test_me
```

## reference
  * [pytest测试框架中的setup和tearDown](https://python012.github.io/2018/05/08/pytest%E6%B5%8B%E8%AF%95%E6%A1%86%E6%9E%B6%E4%B8%AD%E7%9A%84setup%E5%92%8CtearDown/)
  * [Pytest 還有他的快樂夥伴](https://www.slideshare.net/excusemejoe/pytest-and-friends)
  * [Python - Pytest 基本介紹](https://zwindr.blogspot.com/2019/01/python-pytest.html)
  * [Intro to test framework Pytest](https://medium.com/testcult/intro-to-test-framework-pytest-5b1ce4d011ae) ** 值得一看
  * [pytest ALL THE THINGS](https://www.slideshare.net/VincentBernat/pytest-all-the-things)
  * [What are the best Python unit testing frameworks?](https://www.slant.co/topics/2621/~best-python-unit-testing-frameworks)
  * [What are the top Python frameworks for test automation in 2019?](https://www.quora.com/What-are-the-top-Python-frameworks-for-test-automation-in-2019)
  * [8 Best Python Test Automation Framework](https://www.testbytes.net/blog/python-test-automation-framework/)
  * [Top 5 Python Frameworks For Test Automation In 2019](https://dzone.com/articles/top-5-python-frameworks-for-test-automation-in-201)


