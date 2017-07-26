<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>
    Book List.
</h1>
<table border="1">
    <tr align="center">
        <td width="100px">아이디</td>
        <td width="100px">이름</td>
        <td width="100px">작가</td>
        <td width="100px">가격</td>
        <td width="100px">장르</td>
        <td width="100px">출판사</td>
        <td width="100px">수량</td>
    </tr>
    <c:forEach var="book" items="${books}">
        <tr align="center">
            <td width="100px">${book.id}</td>
            <td width="100px">${book.name}</td>
            <td width="100px">${book.writer}</td>
            <td width="100px">${book.price}</td>
            <td width="100px">${book.genre}</td>
            <td width="100px">${book.publisher}</td>
            <td width="100px">${book.cnt}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>