<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<link rel="stylesheet" href="<c:url value="resources/css/header.css"/>" />


</head>
<body>
	<div id="headerWrapper">
        <header id="header">

            <div id="headerTopWrapper">

                <div id="headerTop">
                    <div id="siteUtilGroup">
                        <div id="libraryShortcut" class="dropdown">

                            <button class="dropdownbtn"><a href="">도서관바로가기 </a> </button>
                            <div id="dropdown-content">
                                <a href="">123123</a>
                                <a href="">123123123</a>
                                <a href="">12312312</a>
                                <a href="">3123213</a>
                            </div>

                        </div>
                        <div id="siteMenu" class="siteMenu">
                            <ul>
                                <li class="login"><a href="">로그인</a></li>
                                <li class="register"><a href="">회원가입</a></li>
                                <li class="sitemap"><a href="">사이트맵</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

            <div id="headerMid">
                <div id=logo>
                    <img src="<c:url value="resources/images/logo.png"/>" alt="">
                </div>
                <div id="topSearchBarDiv">
                    <input type="text" name="topSearchBar" id="topSearchBarInput" placeholder="도서명 또는 저자명 입력">
                    <a href="" id="topSearchBtn"><img id="searchBtn" src="<c:url value="resources/images/searchImg.png"/>" alt=""></a>
                </div>
            </div>
            <div id="navBarWrapper">

                <div id="navBar1">
                    <ul id="navBarMain">
                        <li class="navBarLi"><a href="">도서관소개</a>

                            <ul class="navBarSub">
                                <li class="navBarLiSub"><a href="">도서관안내</a></li>
                                <li class="navBarLiSub"><a href="">이용안내</a></li>
                            </ul>

                        </li>
                        <li class="navBarLi"><a href="">자료검색</a>


                            <ul class="navBarSub">
                                <li class="navBarLiSub"><a href="">통합검색</a> </li>
                                <li class="navBarLiSub"><a href="">주제별검색</a> </li>
                                <li class="navBarLiSub"><a href="">신착자료검색</a> </li>
                                <li class="navBarLiSub"><a href="">대출베스트</a> </li>
                                <li class="navBarLiSub"><a href="">공공도서관 인기도서</a> </li>
                                <li class="navBarLiSub"><a href="">희망도서신청</a> </li>
                            </ul>

                        </li>


                        <li class="navBarLi"><a href="">신청서비스</a>

                            <ul class="navBarSub">
                                <li class="navBarLiSub"><a href="">시설대관싱청</a></li>
                                <li class="navBarLiSub"><a href="">도서관견학신청</a></li>
                                <li class="navBarLiSub"><a href="">자원봉사신청</a></li>
                            </ul>

                        </li>
                        <li class="navBarLi"><a href="">도서관소식</a>

                            <ul class="navBarSub">
                                <li class="navBarLiSub"><a href="">공지사항</a></li>
                                <li class="navBarLiSub"><a href="">열린소리함</a></li>
                                <li class="navBarLiSub"><a href="">자주하는질문</a></li>
                                <li class="navBarLiSub"><a href="">기증도서알림</a></li>
                                <li class="navBarLiSub"><a href="">설문조사</a></li>
                            </ul>

                        </li>
                        <li class="navBarLi"><a href="">나만의도서관</a>

                            <ul class="navBarSub">
                                <li class="navBarLiSub"><a href="">기본정보</a></li>
                                <li class="navBarLiSub"><a href="">나의신청정보</a></li>
                                <li class="navBarLiSub"><a href="">도서이용정보</a></li>
                                <li class="navBarLiSub"><a href="">상호대차조회</a></li>
                                <li class="navBarLiSub"><a href="">관심자료목록</a></li>
                                <li class="navBarLiSub"><a href="">도서추천서비스</a></li>
                            </ul>


                        </li>
                    </ul>
                </div>
            </div>
        </header>
    </div>
</body>
</html>