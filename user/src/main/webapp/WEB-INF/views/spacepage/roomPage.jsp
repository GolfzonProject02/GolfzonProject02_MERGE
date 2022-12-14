<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>워크토크</title>
    <link rel="stylesheet" href="resources/css/roomPage.css">
    <link rel="stylesheet" href="resources/css/header/header.css">
    <link rel="stylesheet" href="resources/css/footer/footer.css">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body>
    <div id="header">
        <div id="headerarea">
            <a href="/user/main.do">
                <img id="logo" src="resources/css/image/logo.png">
            </a>
            <form id="searchspace" action="검색.....">
                <input id="searchText" type="text" name="searchWord">
                <input id="searchIcon"  type="image" src="resources/css/image/icon/search-removebg.png">
            </form>
            <img id="menutab_buttom" src="resources/css/image/icon/catalog.png" onclick="menutabOpen()">
            <div id="menutab">
                <img id="menutab_close" src="resources/css/image/icon/close.png" onclick="menutabClose()">
                <div id="login">
                	<c:choose>
                        <c:when test="${user_name == null}">
                            <a href="http://localhost:8100/user/login.do">
					        	<p id="loginOK">로그인 / 회원가입</p>
					        </a>
                        </c:when>
                        <c:otherwise>
                            <a href="http://localhost:8100/user/mypage.do">
                                <p id="loginOK">${user_name}</p>
                            </a>
                            <a href="http://localhost:8100/user/mypage.do">
                                <p id="logout" style="margin-left:10px;">로그아웃</p>
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
    <div id="body">
        <div id="bodyarea">
            <p id="spaceName">강남 공간 1호</p>
            <p id="spaceTypeTitle">공간종류</p>
            <div id="space_category" value="2">
                <div class="space_category_item desk" value="1">
                    <img class="spaceType" src="resources/css/image/icon/table.png" alt="데스크공간">
                    <p>데스크</p>
                </div>
                <div class="space_category_item meetingRoom" value="2">
                    <img class="spaceType" src="resources/css/image/icon/meeting2.png" alt="회의실공간">
                    <p>회의실</p>
                </div>
                <div class="space_category_item office" value="3">
                    <img class="spaceType" src="resources/css/image/icon/office.png" alt="오피스공간">
                    <p>오피스</p>
                </div>
            </div>
            <div class="box">
                <p id="roomTitle">세부공간설정</p>
                <div id="roomAddBox">
                    <p id="roomAddName">세부공간 추가</p>
                    <select id="room_type">
                    </select>
                    <input type="text" id="room_name" placeholder="공간이름을 작성해주세요">
                    <button id="roomAddBtn">+추가</button>
                </div>
                <form id="roomAddSubmit" onsubmit="return false">
                    <input type="submit" value="저장" id="submit">
                    <input type="text" id="space_num" value="${param.space_num}" hidden>
                </form>
            </div>
        </div>
    </div>
    <div id="footer">
        <div id="footer_area">
            <div>로고</div>
            <div>
                프로젝트명 : 워크토크
                팀원 : 이재석 이주희 최수연
                GIT : 주소....
            </div>
            <div>
                프로젝트이야기 : 노션?
            </div>
        </div>
    </div>
</body>
<script src="resources/js/roomPage.js"></script>
<script src="resources/js/header/header.js"></script>
</html>