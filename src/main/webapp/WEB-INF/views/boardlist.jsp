<%@ page import="com.example.board.BoardDAO" %>
<%@ page import="com.example.board.BoardVO,java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: skskl
  Date: 2023-12-01
  Time: 오후 5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>

<body>
<div style="height: 100px; background-color: #008275; color: white; font-size: 45px; " >교수 위키</div>
<%--<table id="list" width="90%">--%>
<%--    <tr>--%>
<%--        <th>Id</th>--%>
<%--        <th>Title</th>--%>
<%--        <th>Writer</th>--%>
<%--        <th>Edit</th>--%>
<%--        <th>Delete</th>--%>
<%--    </tr>--%>
<%--    <c:forEach items="${list}" var="a">--%>

<%--    <tr>--%>
<%--        <td>${a.getSeq()}</td>--%>
<%--        <td>${a.getTitle()}</td>--%>
<%--        <td>${a.getWriter()}</td>--%>
<%--&lt;%&ndash;        <td>${a.getContent()}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td>${a.getRegdate()}</td>&ndash;%&gt;--%>
<%--        <td><a href="editform/${a.getSeq()}">Edit</a></td>--%>
<%--&lt;%&ndash;            &lt;%&ndash;		<td><a href="editform">Edit</a></td>&ndash;%&gt;&ndash;%&gt;--%>
<%--        <td><a href="javascript:delete_ok('${a.getSeq()}')">Delete</a></td>--%>
<%--    </tr>--%>
<%--    </c:forEach>--%>
    <div style="display: flex; gap:30px;">
    <c:forEach items="${list}" var="a">
    <div style="width:40px; height:70px;">
        <div>${a.getSeq()}</div>
        <div>${a.getTitle()}</div>
        <div>${a.getWriter()}</div>
        <div><a href="editform/${a.getSeq()}">Edit</a></div>
        <div><a href="../board/delete/${a.getSeq()}">Delete</a></div>
    </div>
    </c:forEach>
    </div>
</body>
</html>
