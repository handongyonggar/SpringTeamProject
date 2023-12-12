<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Page</title>
    <style>
    </style>
</head>
<body>


<h1>View Page</h1>
<table>
    <tr><td>Regdate:</td><td>${u.regdate}</td></tr>
    <tr><td>일기 제목:</td><td>${u.title}</td></tr>
    <tr><td>오늘의 기분:</td><td>${u.mood}</td></tr>
    <tr><td>오늘의 날씨:</td><td>${u.weather}</td></tr>
    <tr><td>오늘의 교훈:</td><td>${u.lesson}</td></tr>
    <tr><td>일기 내용:</td><td>${u.content}</td></tr>
    <tr><td colspan="2"><input type="button" value="BACK" onclick="history.back()"/></td></tr>
</table>

</body>
</html>