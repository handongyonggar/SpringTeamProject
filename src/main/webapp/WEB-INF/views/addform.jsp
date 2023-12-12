<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023/12/02
  Time: 3:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>일기 작성</title>
    <style>

    </style>
</head>
<body>
<h1>일기를 작성하세요!</h1>
<form action=addok method="post">
    <table>
        <tr><td>일기 제목:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>오늘의 기분:</td><td><input type="text" name="mood"/></td></tr>
        <tr>
            <td>오늘의 날씨:</td>
            <td>
                <input type="radio" id="sunny" name="weather" value="맑음">
                <label for="sunny">맑음</label><br>

                <input type="radio" id="rainy" name="weather" value="비 내림">
                <label for="rainy">비 내림</label><br>

                <input type="radio" id="snow" name="weather" value="눈 내림">
                <label for="snow">눈 내림</label><br>

                <input type="radio" id="partlyCloudy" name="weather" value="구름많음">
                <label for="partlyCloudy">구름많음</label>
            </td>
        </tr>
        <tr><td>오늘의 교훈:</td><td><input type="text" name="lesson"/></td></tr>
        <tr><td>일기 내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="button" onclick="history.back()">일기 목록 보기</button>
    <button type="submit">일기 등록</button>
</form>

</body>
</html>
