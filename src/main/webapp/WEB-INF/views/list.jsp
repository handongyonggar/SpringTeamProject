<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.example.board.DiaryController, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>나의 일기장</title>
    <style>
        @font-face {
            font-family: 'KyoboHand';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/KyoboHand.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'KyoboHand'; /* 모든 폰트에 KyoboHand 폰트를 적용합니다. */
        }
        :root {
            --padding: 60px;
        }
        body {
            background-color: #f0f0f0;
        }.box {
             position: relative;
             margin: 50px auto;
             width: 400px;
             display: flex;
             flex-direction: column;
             justify-content: center;
             padding: var(--padding);
             background-color: #c4dfff;
             border-radius: 7px;
             text-align: center; /* 가운데 정렬을 추가합니다. */
         }

        .box input,
        .box button {
            padding: 15px;
            font-size: 1.2em;
            border: none;
        }
        .box input {
            margin-bottom: 25px;
        }
        .box button {
            background-color: #ffe4c4;
            color: #547fb2;
            border-radius: 4px;
        }


        .sign-up-box i {
            font-size: 1.9em;
            color: #fff;
        }



        .sign-up-box.active input,
        .sign-up-box.active button {
            padding: 15px;
            font-size: 1.2em;
            border: none;
            margin: 0;
        }
        .sign-up-box.active input {
            margin-bottom: 10px;
        }

        .sign-up-box.active > span {
            position: absolute;
            width: 30px;
            height: 30px;
            background-color: #fff;
            border-radius: 50%;
            top: 5px;
            right: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #547fb2;
            font-weight: 700;
            cursor: pointer;
        }
        nav {
            background-color: #547fb2;
            padding: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 50px

        }

        nav ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            align-items: center;
            font-family: 'KyoboHand'; /* 네비게이션 메뉴 폰트 설정 */
        }

        nav li {
            margin: 0 10px;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            font-family: 'KyoboHand'; /* 네비게이션 메뉴 폰트 설정 */
        }

        /* 큰 폰트 스타일 */
        .big-font {
            font-size: 2em;
            margin-right: auto;
        }

        /* 중간 크기 스타일 */
        .medium-font {
            font-size: 1.5em;
            margin-right: auto;
        }

        /* 오른쪽 정렬 스타일 */
        .right-align {
            margin-left: auto;
        }
        footer {
            background-color: #000; /* 배경색을 검정색(#000)으로 설정 */
            color: #fff; /* 글자색을 흰색(#fff)으로 설정 */
            text-align: center; /* 텍스트를 가운데 정렬 */
            padding: 45px; /* 내용 주위에 여백 추가 */
        }

        footer a {
            color: #fff; /* 링크의 글자색을 흰색(#fff)으로 설정 */
            text-decoration: none; /* 링크 밑줄 제거 */
        }

        /* 네비게이션 바와 유사한 디자인을 적용 */
        footer .grid {

            justify-content: center;
            align-items: center;
            gap: 10px; /* 항목 간 여백 설정 */
            margin: 40px 40px;
        }



        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }


        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
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

<nav>
    <ul>
        <li><p class="big-font">▶◀ 오늘의 일기</p></li>
        <li><p  class="medium-font">실전프로젝트</p></li>
    </ul>
    <ul class="right-align">
        <li><p>내 일기장</p></li>
        <li><p>전산 전자 일기장</p></li>
        <li><p>모두의 일기장</p></li>
        <li><p>회원가입</p></li>
        <li><p>로그인</p></li>
    </ul>

</nav>

<h1>나의 일기장</h1>
<table id="list" width="90%">
<tr>
    <th>Id</th>
    <th>Title</th>
    <th>Weather</th>
    <th>Mood</th>
    <th>lesson</th>
    <th>content</th>
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
        <td>${u.content}</td>
        <td>${u.regdate}</td>
        <td><a href="editform/${u.id}">Edit</a></td>
        <td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
    </tr>
</c:forEach>
</table>
<br/><a id="add_post" href="add">일기 쓰기</a>

<footer class="p-10 footer bg-primary text-accent footer-center">
    <div class="grid grid-flow-col gap-4">
        <p>소개</p>
        <p>공지사항</p>
        <p>자주 묻는 질문</p>
        <p>문의/제안</p>
    </div>
    <div>
        <p>실전프로젝트 02분반 권용빈, 김성수</p>
    </div>
</footer>

</body>
</html>
