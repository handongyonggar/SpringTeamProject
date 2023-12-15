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

	<title>일기 수정</title>
	<style>
	</style>
</head>
<body>
<h1>일기 수정</h1>
<form action="../editok" method="POST">
	<input type="hidden" name="id" value="${u.id}"/>
	<table id="edit">
		<tr><td>일기 제목:</td><td><input type="text" name="title" value="${u.title}"/></td></tr>
		<tr><td>오늘의 기분:</td><td><input type="text" name="mood" value="${u.mood}" /></td></tr>
		<tr>
			<td>오늘의 날씨:</td>
			<td>
				<input type="radio" id="sunny" name="weather" value="맑음" ${u.weather == '맑음' ? 'checked' : ''} >
				<label for="sunny">맑음</label><br>

				<input type="radio" id="rainy" name="weather" value="비 내림" ${u.weather == '비 내림' ? 'checked' : ''}>
				<label for="rainy">흐림</label><br>

				<input type="radio" id="snow" name="weather" value="눈 내림" ${u.weather == '눈 내림' ? 'checked' : ''}>
				<label for="snow">흐림</label><br>

				<input type="radio" id="partlyCloudy" name="weather" value="구름많음" ${u.weather == '구름많음' ? 'checked' : ''} >
				<label for="partlyCloudy">구름많음</label>
			</td>
		</tr>
		<tr><td>오늘의 기분:</td><td><input type="text" name="lesson" value="${u.lesson}" /></td></tr>
		<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td></tr>
		<tr><td colspan="2"><input type="submit" value="Edit Post"/>
			<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
	</table>
</form>

</body>
</html>
