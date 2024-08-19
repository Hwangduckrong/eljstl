<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>el-jstl</h1>
<h2>el 값표현</h2>
<h3>파라미터값 가져오기</h3>
	<% String id =request.getParameter("id"); 
	%>
	
	id = <%=request.getParameter("id") %>
	name<%=request.getParameter("name") %>	
	num1 =<%=request.getParameter("num1") %>
	
	
	<h4>el</h4>
	${param.id}<br>
	${param.pw}<br>
	${param.name}<br>
	${param.num1}<br>
	${param.num2}<br>

	

</body>
</html>