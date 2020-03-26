<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<div id="header"></div>
    <div id="wholeWrapper1">
        <div id="wholeWrapper2">

            <div id="sideNav">
                <tavle>
                    <tr>
                        <td>sdfdsfsdf</td>
                    </tr>
                    <tr>
                        <td>sdfsdfsdfdsf</td>
                    </tr>
                    <tr>
                        <td>sdfsdfsdf</td>
                    </tr>
                    <tr>
                        <td>sdfsdfdsf</td>
                    </tr>
                </tavle>

            </div>
            <div id="generalWrapper">
                <div id="generalTitleandNav">
                    <h3>대관안내</h3>
                    <div id="generalNavBar">
                        <a href="">
                            <i class="xi-home xi-2x" style="padding-top:5px; line-height: 10px; color:darkgray"></i>
                        </a>
                        <span><i class="xi-angle-right-thin"></i>신청서비스 <i class="xi-angle-right-thin"></i>시설대관신청 <i
                                class="xi-angle-right-thin"></i>시설안내</span>
                    </div>
                </div><!-- applyformTitleandNav-->
                <div id="generalCore">
                    <div id="tabNav">
                        <ul id="tabNavContents">
                            <li> <strong>대관안내</strong></li>
                            <li><strong>시설안내</strong></li>
                            <li><strong>신청현황/신청하기</strong></li>
                        </ul>
                    </div>
                    <form action="" id="placeInfo" name="placeInfo">
                        <div id="placeSearchDiv">
                            <div id="placeSearchInput">

                                <select id="searchSelect" name="">
                                    <option value="문화강좌실" selected="selected">문화강좌실</option>
                                    <option value="대강당">대강당</option>
                                    <option value="공연장">공연장</option>
                                    <option value="전시실">전시실</option>
                                    <option value="과학실">과학실</option>
                                </select>
                                <input id="searchText" type="text" name="" id="" placeholder="시설명 입력">
                                <input id="searchSubmit" type="submit" value="검색">
                            </div>
                        
                        </div>

                    </form>
                    
                    <form action="신청하기 누르면 선택한 시설 정보 넘겨줘야함">
                        <div id="placeInfoDetailWrapper1">
                            <div id="placeInfoDetailWrapper2">
                            <div id="placeThumnailDiv"><img id="placeThumnail" src="../image/s4.jpg" alt=""></div>
                            <div id="placeDetail">
                                <h4>시설명</h4>
                                <ul>
                                    <li>위치</li>
                                    <li>시설용도</li>
                                    <li>좌석수</li>
                                    <li>수용가능인원</li>
                                    <li>이용가능장비</li>
                                </ul>
                            </div>
                            <input id="bookPlace" type="submit" value="신청하기">
                        </div>
                    </div>
                </form>
                </div><!-- applyformCore-->
            </div><!-- applyFormWrapper -->
        </div><!-- wholeWrapper2-->
    </div><!-- wholeWrapper -->
</body>
</html>