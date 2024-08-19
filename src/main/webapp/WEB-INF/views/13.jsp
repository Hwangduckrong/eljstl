<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %> 
<%@ page import="com.javaex.vo.UserVo" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL 태그 라이브러리 선언 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
    <h1>el-jstl</h1>
    <h2>jstl</h2>
    <h3>반복문 foreach</h3>
    <table border="1">
        <thead>
            <tr>
                <th>번호</th>
                <th>이름</th>
                <th>이메일</th>
                <th>패스워드</th>
                <th>성별</th>
                <th>state.i</th>
                <th>state.count</th>
            </tr>
        </thead>
        <tbody>
        
        <c:forEach items="${requestScope.userList}" var="userVo" begin="0" end="10" step="1" varStatus="state">
            <tr>
                <td>${userVo.no}</td>
                <td>${userVo.name}</td>
                <td>${userVo.email}</td>
                <td>${userVo.password}</td>
                <td>${userVo.gender}</td>
                <td>${state.index}</td>
                <td>${state.count}</td>
            </tr>
        </c:forEach>
        
        </tbody>    
    
    </table>
    
</body>
</html>