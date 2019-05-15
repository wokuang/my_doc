# List SQLAlchemy information
## official site
  * [SQLAlchemy Documentation](https://docs.sqlalchemy.org)
  * [Object Relational Tutorial](https://docs.sqlalchemy.org/en/13/orm/tutorial.html)

## create table 的方式
  * call Base 的方式來建立
```
>>> Base.metadata.tables['component'].create(bind=engine)
```
  * call class 的方式來建立
```
>>> Component.__table__.create(bind=engine)
```

  * [How to create only one table with SQLAlchemy?](https://stackoverflow.com/questions/19175311/how-to-create-only-one-table-with-sqlalchemy)

## schema change
  * [Alembic’s documentation](https://alembic.sqlalchemy.org)
  * [sqlalchemy怎么修改表结构？](https://www.zhihu.com/question/27551008)
  * [利用alembic进行sqlalchemy ORM数据库模型版本管理](https://blog.csdn.net/deerlux/article/details/50181997)
  
## library
  * [SQLAlchemy Library](https://www.sqlalchemy.org/library.html#tutorials) ** 有時間來看看

## object serialization 的方式
  * 使用 Marshmallow - A Python Object Serialization Library 來做
  * [marshmallow: simplified object serialization](https://marshmallow.readthedocs.io/en/2.x-line/) ** 官方文件
    * [[marshmallow Examples](https://marshmallow.readthedocs.io/en/2.x-line/examples.html)
  * [marshmallow-sqlalchemy](https://marshmallow-sqlalchemy.readthedocs.io/en/latest/)
  * [Flask RESTful API开发之序列化与反序列化](https://blog.igevin.info/posts/flask-rest-serialize-deserialize/)

## document
  * [SQLAlchemy Basics Tutorial](https://leportella.com/english/2019/01/10/sqlalchemy-basics-tutorial.html) ** 先看看這份
  * [SQLAlchemy - from Python Cheatsheet](https://www.pythonsheets.com/notes/python-sqlalchemy.html) ** 這份也很好
  * [Python SQLAlchemy ORM - 1](https://myapollo.com.tw/2016/09/28/python-sqlalchemy-orm-1/)
  * [SQLAlchemy and MySQL TIMESTAMP](http://blog.zengrong.net/post/2628.html) 跟 timestamp 相關的 
  * [SQLAlchemy — Python Tutorial](https://towardsdatascience.com/sqlalchemy-python-tutorial-79a577141a91)
  * [Python操作MySQL -即pymysql/SQLAlchemy用法](https://www.cnblogs.com/pangguoping/p/5720322.html)
  * [SQLAlchemy 学习笔记](https://github.com/lzjun567/note/blob/master/note/python/sqlalchemy.md)
