<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Edit Form</h1>
<form:form modelAttribute ="boardVO" action="../editok" method="POST">
    <form:hidden path="seq" />
    <table>
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Edit Post"/></td></tr>
    </table>
</form:form>
</body>
</html>
