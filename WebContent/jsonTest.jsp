<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/img/icon.png">
<title>SpringMVC接收和返回json测试</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	function requestJson() {
		var arr = "";
		$.ajax({
					type : 'post',
					url : '${pageContext.request.contextPath}/items/requestJson.action',
					data : '[{"name":"小米手机","price":998,"detail":"小米手机好啊"},{"name":"魅族手机","price":998,"detail":"用魅族，装逼更满足"}]',
					contentType : 'application/json;charset=utf-8',
					success : function(data) {
						for(var i = 0; i < data.length; i ++)
							arr += data[i].name+" "+data[i].detail+"</br>";
						$("#content").html(arr);
					}
				});
	}

	function responseJson() {
		$.ajax({
					type : 'post',
					url : '${pageContext.request.contextPath}/items/responseJson.action',
					data : 'name=魅族手机&price=998&detail=用魅族，装逼更满足',
					success : function(data) {
						$("#content").html(data.name + " " + data.detail);
					}
				});
	}
</script>
</head>
<body>
<div>
	<button onclick="requestJson()">请求json返回json</button>
	<button onclick="responseJson()">请求key/value返回json</button>
</div>
<div>
	<p id="content"></p>
</div>
</body>
</html>