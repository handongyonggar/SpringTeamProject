<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.example.board.DiaryController ,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>나의 일기장</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href= "deleteok/"+id;
        }
    </script>
</head>
<body>
<h1>나의 일기장</h1>

<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Weather</th>
        <th>Mood</th>
        <th>lesson</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td><a href="viewform/${u.id}">${u.title}</a></td>
            <td>${u.weather}</td>
            <td>${u.mood}</td>
            <td>${u.lesson}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.id}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a id="add_post" href="add">일기 쓰기</a>
</body>
</html>
