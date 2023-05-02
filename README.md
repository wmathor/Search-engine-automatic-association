# JSP-AJAX-Trie-实现搜索引擎自动联想
B站视频讲解：[av69290072](https://www.bilibili.com/video/av69290072)

在线预览地址：[http://trie.wmathor.com/AJAX](http://trie.wmathor.com/AJAX)
### 效果图

![](https://i.postimg.cc/tJ64SBHn/image.gif)

![](https://img.shields.io/badge/JDK-1.6-brightgreen.svg) ![](https://img.shields.io/badge/MyEclipse-10-blue.svg) ![](https://img.shields.io/badge/MySQL-5.6.30-orange)

### 使用说明

1. 数据库名为`search`，创建数据库的SQL文件为`search_database.sql`
2. 数据表名为`vocabulary`，创建数据表的SQL文件为`vocabulary_table.sql`
3. 访问网站时首先访问[localhost:8080/AJAX]()，因为需要初始化Trie，将数据库内的所有数据生成Trie树。Trie树构造完成会自动跳转到[localhost:8080/search.jsp]()

### 效率对比

使用数据库模糊查询，和使用Trie树直接获取，两种方式获取的都是同样的内容，执行**1000次**的时间如下

| 查询方式       | 运行时间 |
| -------------- | -------- |
| Trie           | **6ms**  |
| 数据库模糊查询 | 3951ms   |

----

# 2023/5/2更新

1. 更新UI
2. 点击下拉框中的信息，自动填充到输入框
3. 合并`vocabulary_cn`和`vocabulary_en`表为`vocabulary`
