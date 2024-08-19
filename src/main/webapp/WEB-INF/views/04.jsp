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
	<h3>request의 atrribute에 있는 값 가져오기</h3>
	<h4>스크립틀릿</h4>
	<%@ page import="com.javaex.vo.UserVo"  %>
	<%
		int i =(int)request.getAttribute("num");
		String str =(String)request.getAttribute("str");
		UserVo userVo =(UserVo)request.getAttribute("userVo");
%>
	
	i=<%=i %><!-- 앞으로 이거 쓰면 죽임 -->
	str=<%=str%>
	userVo no=<%=userVo.getNo() %>
	userVo name<%=userVo.getName() %>
	userVo email=<%=userVo.getEmail() %>
	userVo password=<%=userVo.getPassword() %>
	userVo gender=<%=userVo.getGender() %>
	
	<h4>el</h4><!-- 이제 이거 써라 no,name,email....등등 은 전부 get 값이다  
	scope를 생략하면 requestScope 찾고 sessionScope를 찾는다
	지금은 scope를 생략하지 말자
	*param은 절대 생략할 수 없다-->
	i=${requestScope.num}<br>
	str =${requestScope.str}<br>
	userVo no =${requestScope.userVo.no}<br>
	userVo name =${requestScope.userVo.name}<br>
	userVo email =${requestScope.userVo.email}<br>
	userVo password =${requestScope.userVo.password}<br>
	userVo gender =${requestScope.userVo.gender}<br>	
</body>
</html>