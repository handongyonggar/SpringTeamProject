<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Page</title>
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


    </style>
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

<h1>View Page</h1>

<table>
    <tr><td>일기 제목:</td><td>${u.title}</td></tr>
    <tr><td>오늘의 기분:</td><td>${u.mood}</td></tr>
    <tr><td>오늘의 날씨:</td><td>${u.weather}</td></tr>
    <tr><td>오늘의 교훈:</td><td>${u.lesson}</td></tr>
    <tr><td>일기 내용:</td><td>${u.content}</td></tr>
    <tr><td colspan="2"><input type="button" value="BACK" onclick="history.back()"/></td></tr>
</table>

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
