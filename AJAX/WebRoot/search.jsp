<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Search Page</title>
<style type = "text/css">
.search {
	width: 300px;
	height: 40px;
	border-radius: 18px;
	outline: none;
	border: 1px solid #ccc;
	padding-left: 20px;
}

#mydiv {
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	margin-top: -50px;
}

.mouseOver {
	background: #F2F2F2;
	color: #FF4040;
}

.mouseOut {
	color: #000000;
}
</style>
<script type="text/javascript">
	var xmlHttp;
	function getMoreContents() {
		clearContent();
		var content = document.getElementById("keyword").value;
		if (content == "") {
			clearContent();
			return;
		}
		xmlHttp = creatXMLHttp();
		var url = "SearchServlet?keyword=" + content;
		url = encodeURI(url);
		url = encodeURI(url);
		xmlHttp.open("POST", url, true);
		xmlHttp.onreadystatechange = callback;
		xmlHttp.send(null);

	}

	//获取XmlHttp对象
	function creatXMLHttp() {
		var xmlHttp;
		if (window.XMLHttpRequest)
			xmlHttp = new XMLHttpRequest();
		if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			if (!xmlHttp)
				xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		return xmlHttp;
	}

	//回调函数
	function callback() {
		if (xmlHttp.readyState == 4)
			if (xmlHttp.status == 200) {
				var result = xmlHttp.responseText;
				var json = eval("(" + result + ")");
				setContent(json);
			}
	}

	//设置关联数据展示
	function setContent(contents) {
		clearContent();
		setLocation();
		//获取关联数据的长度,以此来确定生成的<tr>
		var size = contents.length;
		//设置内容
		for ( var i = 0; i < size; i++) {
			var nextNode = contents[i];
			var tr = document.createElement("tr");
			var td = document.createElement("td");
			td.setAttribute("border", "0");
			td.setAttribute("bgcolor", "white");
			td.onmouseover = function() {
				this.className = 'mouseOver';
			};
			td.onmouseout = function() {
				this.className = 'mouseOut';
			};
			td.onclick = function() {

			};
			var text = document.createTextNode(nextNode);
			td.appendChild(text);
			tr.appendChild(td);
			document.getElementById("content_table_body").appendChild(tr);
		}

	}
	//清空数据
	function clearContent() {
		var contentTableBody = document.getElementById("content_table_body");
		var size = contentTableBody.childNodes.length;
		for (var i = size - 1; i >= 0; i--)
			contentTableBody.removeChild(contentTableBody.childNodes[i]);
		document.getElementById("popdiv").style.border = "none";
	}

	//输入框失去焦点 清空
	function keywordBlur() {
		clearContent();
	}
	//设置系那是关联信息
	function setLocation() {
		//关联信息的显示位置
		var content = document.getElementById("keyword");
		var width = content.offsetWidth;//输入框的宽度
		var left = content["offsetLeft"];//距离左边框的距离
		var top = content["offsetTop"] + content.offsetHeight;//距离顶部
		//获取显示数据div
		var popdiv = document.getElementById("popdiv");
		popdiv.style.border = "black 1px solid";
		popdiv.style.left = left + "px";
		popdiv.style.top = top + "px";
		popdiv.style.width = width + "px";
		document.getElementById("content_table").style.width = width + "px";
	}
</script>
</head>
<body>
	<div id="mydiv">
		<input type="text" size="50" class="search" id="keyword" onkeyup="getMoreContents()" onblur="keywordBlur()" onfocus="getMoreContents()" />

		<%--内容展示区域--%>
		<div id="popdiv">
			<table id="content_table" bgcolor="#FFFAFA" border="0" cellspacing="0" cellpadding="0">
				<tbody id="content_table_body">
					<%--动态查询出来的数据,显示在此--%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>