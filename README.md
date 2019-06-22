# JSP-AJAX-Trie-实现搜索引擎自动联想
在线预览地址：[http://trie.wmathor.com/AJAX](http://trie.wmathor.com/AJAX)
### 效果图

![](https://s2.ax1x.com/2019/01/23/kAUDET.gif)

![](https://img.shields.io/badge/JDK-1.6-brightgreen.svg) ![](https://img.shields.io/badge/MyEclipse-10-blue.svg)

### 使用说明

1. 数据库MySql，数据库文件在目录AJAX下
2. 首先把WebRoot/WEB-INF/lib底下的7个jar包添加到项目中
3. 访问路径时首先访问[localhost:8080/AJAX]()，因为需要初始化Trie，将数据库内的所有数据生成Trie树。Trie树构造完成会自动跳转到[localhost:8080/search.jsp]()

----

# 2019/6/14更新

1. 更新UI
2. 点击下拉框中的某个信息，自动填充到输入框
