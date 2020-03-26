<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/nanumgothic.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	 *{
            margin: 0;
            padding: 0;
        }
        
        
        a{
            text-decoration: none;
        }
        #header {
            width: 100%;
            height: 206px;
            background-color: goldenrod;
        }

        #wholeWrapper1 {
            width: 100%;

        }

        #wholeWrapper2 {
            width: 1200px;
            margin: 0 auto;
        }

        #sideNav {
            float: left;
            width: 270px;
            height: 400px;
            background-color: red;
            border: 2px solid black;
        }

        #applyFormWrapper {
            width: 880px;
            height: 1177px;
            float: right;
        }
        #applyformTitleandNav{
            width: 100%;
            height: 161px;
        }
        #applyformTitleandNav h3{
            height: 50px;
            margin-top: 30px;
            padding-top: 20px;
            font-size: 1.875em;
            font-family:  'Nanum Gothic';
            font-weight: lighter;
            
        }
        #applyformNavBar{
            height: 51px;
            border-top: 1px solid rgb(226, 214, 214, 0.904);
            border-bottom: 1px solid rgba(226, 214, 214, 0.904);
        }
        #applyformNavBar span{
            display: inline-block;
            line-height: 50px;
        }
        #applyformNavBar>a>i:nth-child(1){
            position: relative;
            top: 5px;
        }
        #applyformCore{
            width: 100%;
            height: 916px;
            padding-top: 50px;
            padding-bottom: 50px;
        }
        #tabNav{
            width: 100%;
            height: 50px;
            text-align: center;
        }
        #tabNavContents{
            list-style: none;

            
        }
        #tabNavContents li{
            float: left;
            width: 33.1%;
            border: 1px solid rgb(226, 214, 214, 0.904);
            height: 30px;
            padding-top: 10px;
            padding-bottom: 10px;
            display: block;
        }
        #tabNavContents{
            vertical-align: middle;
        }
        
        #rentPolicy{
            margin-top: 20px;
            margin-bottom: 20px;
        }
        #rendPolicyDetail li{
            list-style: inside;
            padding-top: 5px;
            font-size: 17px;
            font-weight: bold;
            color: rgb(141, 136, 136);
        }
        #rentInfo{
            height: 25px;
            margin-top: 40px;
            margin-bottom: 20px;
        }
        #rentInfoTableWrapper{
            width: 100%;
        }
        #rentInfoTable > tr, th, td{
            
            border: 1px solid black;
            text-align: center;
            vertical-align: middle;
            padding: 10px 5px 10px 5px;
        }
        #rentInfoTable th,td:nth-child(1),td:last-child{
            border-left: white;
            border-right: white;
        }
        #rentInfoTable{
            border-collapse: collapse;
            border-top: 2px solid black;

        }
        #rentInfoTable th{
            background-color: rgba(248, 242, 242, 0.931);
        }
        #rentInfoTableth1{
            width: 10%
        }    
        #rentInfoTableth2{
            width: 30%;
        }
        #rentInfoTableth3{
            width: 30%;
        }
        #rentInfoTableth4{
            width: 30%;
        }
        #howToUse{
            margin-top: 40px;
            margin-bottom: 20px;
        }
        #howToUseList{
            list-style-position: inside;
            color: rgb(141, 136, 136);
        }
        #rentLink{
            margin-top: 20px;
            padding: 10px 10px 10px 10px;
            background-color: rgb(221, 227, 233);
            height: 43px;
        }
        #rentLink dt{
           float: left;
           font-size: 20px;
           padding: 5px 5px 5px 5px;
        }
        #rentLink dd{
            float: right;
            display: block;
            
        }
        #rentLink a{
            text-decoration: none;
            
        }
        #rentLink dd button{
            width: 123px;
            height: 38px;
            font-weight: bolder;
            font-size: 14px;
            padding: 5px 15px 5px 15px;
        }
        #rentLinkBtn1, #rentLinkBtn2{
            color: white;
        }
        #rentLinkBtn1{
            background-color: RGB(100, 104, 109);
        }
        #rentLinkBtn2{
            background-color: rgb(92, 119, 30);
        }
</style>
</head>
<body>
	 <%@ include file="/WEB-INF/views/header.jsp" %>
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
            <div id="applyFormWrapper">
                <div id="applyformTitleandNav">
                    <h3>대관안내</h3>
                    <div id="applyformNavBar">
                        <a href="">
                            <i class="xi-home xi-2x" style="padding-top:5px; line-height: 10px; color:darkgray"></i>
                        </a>
                        <span><i class="xi-angle-right-thin"></i>신청서비스 <i class="xi-angle-right-thin"></i>시설대관신청 <i class="xi-angle-right-thin"></i>대관안내</span>
                    </div>
                </div><!-- applyformTitleandNav-->
                <div id="applyformCore">
                    <div id="tabNav">
                        <ul id="tabNavContents">
                            <li> <strong>대관안내</strong></li>
                            <li><strong>시설안내</strong></li>
                            <li><strong>신청현황/신청하기</strong></li>
                        </ul>
                    </div>
                    <h3 id="rentPolicy">대관 규정 안내</h3>
                    <ul id="rendPolicyDetail">
                        <li>대관대상 : 남양주시 시민 및 단체</li>
                        <li>신청방법 : 홈페이지 온라인 접수</li>
                        <li>신청취소 : 관리자 승인 전까지(승인 후 별도 연락 후 취소 가능))</li>
                    </ul>
                    <h3 id="rentInfo">대관정보</h3>
                    <div id="rentInfoTableWrapper">
                        <table id="rentInfoTable">
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col>
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col" id="rentInfoTableth1">시설구분</th>
                                    <th scope="col" id="rentInfoTableth2">문화강연실</th>
                                    <th scope="col" id="rentInfoTableth3">다목적강당</th>
                                    <th scope="col" id="rentInfoTableth4">공연장</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>    
                                    
                                    <td>운영시간</td>
                                    <td>평일 10:00 ~ 21:00 <br>주말 10:00 ~ 17:00</td>
                                    <td>평일 10:00 ~ 21:00 <br>주말 10:00 ~ 17:00</td>
                                    <td>평일 10:00 ~ 21:00 <br>주말 10:00 ~ 17:00</td>
                                </tr>
                                <tr>
                                    <td>대관시간</td>
                                    <td>일 최대 3시간(월4회 / 주 1회까지) <br>(30분 단위로 신청)</td>
                                    <td>일 최대 8시간(월 4회까지) <br>(1시간 단위로 신청)</td>
                                    <td>일 최대 8시간(월 4회까지) <br>(1시간 단위로 신청)</td>
                                </tr>
                                <tr>
                                    <td>접수기간</td>
                                    <td>대관희망일 30일전부터~3일전까지</td>
                                    <td>대관희망일 60일전부터~10일전까지</td>
                                    <td>대관희망일 60일젙부터~10일전까지</td>
                                </tr>
                                <tr>
                                    <td>이용제한</td>
                                    <td colspan="3">상업적,종교적 목적의 대관을 제한합니다.</td>
                                </tr>
                            </tbody>
                        </table>
                    </div><!--rentInfoTableWrapper-->
                    <h3 id="howToUse">이용 방법</h3>
                   <ol id="howToUseList">
                       <li>도서관 홈페이지 로그인 후 [신청현황/신청하기] 페이지로 이동</li>
                       <li>달력에서 대관 희망 날짜 선택</li>
                       <li>신청 항목 작성 후 신청완료</li>
                       <li>대관 당일 신청자(단체 대표자)는 신분증(회원증) 지참 후 안내실 방문</li>
                       <li>신분증 확인 및 담당직원 안내</li>
                       <li>대관 시설 이용</li>
                   </ol>
                    <dl id="rentLink">
                        <dt>신청조회 또는 신청하기 버튼을 누르세요</dt>
                        <dd><a href=""><button id="rentLinkBtn1">신청내역 조회</button> </a> <a href=""><button id="rentLinkBtn2"><i class="xi-pen-o xi-1x"></i>신청하기</button></a></dd>
                    </dl>
                </div><!-- applyformCore-->
            </div><!-- applyFormWrapper -->
        </div><!-- wholeWrapper2-->
    </div><!-- wholeWrapper -->
</body>
</html>