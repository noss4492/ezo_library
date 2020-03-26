<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <script type="text/javascript">
        $(document).ready(function() {
            buildCalendar();
            $(".mainbanner").bxSlider({
                auto: true,
                speed: 1500,
                pause: 3000,
                mode: 'horizontal',
                autoControls: false,
                pager: false,
                slideHeight: 370,
                slideWidth: 340,
            });
            let eventtap = $(".eventtap");
            let eventview = $(".eventmiddle");
            let eventlist = $(".eventlist");

            eventtap.on("click", function() {
                if (eventtap[0] === this) {
                    this.classList.add("selecttap");
                    eventtap[1].classList.remove("selecttap");
                    eventview[0].classList.remove("addOn");
                    eventview[1].classList.add("addOn");
                    eventlist[0].classList.remove("addOn");
                    eventlist[1].classList.add("addOn");
                    console.log("공지");
                } else if (eventtap[1] === this) {
                    this.classList.add("selecttap");
                    eventtap[0].classList.remove("selecttap");
                    eventview[1].classList.remove("addOn");
                    eventview[0].classList.add("addOn");
                    eventlist[1].classList.remove("addOn");
                    eventlist[0].classList.add("addOn");
                    console.log("문화");
                }
            })

            let bestgroup = $(".tapclear>li>a");
            let bookli = $(".tapclear>li");

            let bookgroup = $("#bookgroup>div");

            console.log(bookgroup[0].classList);
            console.log(bookgroup[1].classList);
            console.log(bookgroup[2].classList);
            
            bestgroup.on("click", function() {
                console.log("실행됨")
                for(var i = 0; i < 3; i++){
                    if(bestgroup[i]===this){
                        bookli[i].classList.add("on");
                        bookgroup[i].classList.remove("addOn");
                    }else if(bestgroup[i]!=this){
                        bookli[i].classList.remove("on");
                        bookgroup[i].classList.add("addOn");
                    }
                }
            });

        });

        //        <li class="on"><a href="#bookBest">대출베스트</a></li>
        //                    <li><a href="#newBook">신착도서</a></li>
        //                    <li><a href="#publicBook">공공도서관 인기도서</a></li>
        //공지사항 문화행사 탭변경

        var today = new Date(); //오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
        var date = new Date(); //today의 Date를 세어주는 역할
        function prevCalendar() { //이전 달
            // 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
            //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
            //getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
            today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
            buildCalendar(); //달력 cell 만들어 출력 
        }

        function nextCalendar() { //다음 달
            // 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
            //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
            //getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
            today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
            buildCalendar(); //달력 cell 만들어 출력
        }

        function buildCalendar() { //현재 달 달력 만들기
            var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
            //이번 달의 첫째 날,
            //new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
            //new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
            //왜냐면 getMonth()는 0~11을 반환하기 때문
            var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
            //이번 달의 마지막 날
            //new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
            //day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
            //대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
            var tbCalendar = document.getElementById("calendar");
            //날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
            var tbCalendarYM = document.getElementById("tbCalendarYM");
            //테이블에 정확한 날짜 찍는 변수
            //innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
            //new를 찍지 않아서 month는 +1을 더해줘야 한다. 
            tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월";

            /*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
            while (tbCalendar.rows.length > 2) {
                //열을 지워줌
                //기본 열 크기는 body 부분에서 2로 고정되어 있다.
                tbCalendar.deleteRow(tbCalendar.rows.length - 1);
                //테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
                //30일 이후로 담을달에 순서대로 열이 계속 이어진다.
            }
            var row = null;
            row = tbCalendar.insertRow();
            //테이블에 새로운 열 삽입//즉, 초기화
            var cnt = 0; // count, 셀의 갯수를 세어주는 역할
            // 1일이 시작되는 칸을 맞추어 줌
            for (i = 0; i < doMonth.getDay(); i++) {
                /*이번달의 day만큼 돌림*/
                cell = row.insertCell(); //열 한칸한칸 계속 만들어주는 역할
                cnt = cnt + 1; //열의 갯수를 계속 다음으로 위치하게 해주는 역할
            }
            /*달력 출력*/
            for (i = 1; i <= lastDate.getDate(); i++) {
                //1일부터 마지막 일까지 돌림
                cell = row.insertCell(); //열 한칸한칸 계속 만들어주는 역할
                cell.innerHTML = i; //셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
                cnt = cnt + 1; //열의 갯수를 계속 다음으로 위치하게 해주는 역할
                if (cnt % 7 == 0) {
                    /* 1주일이 7일 이므로 토요일 구하기*/
                    //월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
                    //7번째의 cell에만 색칠
                    row = calendar.insertRow();
                    //토요일 다음에 올 셀을 추가
                }
                
            }
        }

        
        
    </script>
    <title>Document</title>
    <style>
        body {
            font-family: 'Noto Sans', '나눔고딕', 'Nanum Gothic', 'Helvetica', sans-serif;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        p,
        div,
        span,
        ul,
        li,
        ol,
        img,
        a,
        a:visited {
            margin: 0px;
            padding: 0px;


        }

        a {
            text-decoration: none;
            color: inherit;
        }

        a:hover {
            text-decoration: none;
            color: inherit;
        }

        .main_slogan {
            font-size: 1.875em;
            color: white;
            text-align: center;
            padding-top: 75px;
            min-width: 1200px;
            height: 175px;
        }

        .main_slogan>span {
            font-size: 1.333em;
            color: white;
            text-align: center;
        }

        /* 로그인쪽 */
        #divgroup {
            width: 1200px;
            padding-top: 30px;
            padding-bottom: 40px;
            margin: auto;
            overflow: auto;
        }

        #topOne {
            width: 100%;
            margin: auto;
            height: 575px;
            background-image: url(img/main.jpg);
        }

        #topOne>#divgroup>div {
            float: left;
        }

        #div1 {
            width: 280px;
            height: 330px;
            float: none;
            overflow: hidden;
        }


        #btns {
            border-radius: 0px;
            background: #46B7D9
        }

        #div1>form>div>div>input,
        #div1 form>div>div>span {
            border-radius: 0px;
            height: 40px;
            padding: 7px;
        }

        #loginMenu a {
            font-weight: bold;
            color: white;
            font-size: 14px;
        }

        .rightA {
            margin-left: 8px;
            padding-left: 10px;
            border-left: 1px solid;
        }

        #loginMenu {
            text-align: center;
            margin: 15px 0px 10px 0px
        }

        #lookup {
            font-size: 16px;
            color: black;
            font-weight: bold;
            background: white;
            text-align: center;
            width: 280px;
            height: 40px;
            display: table-cell;
            vertical-align: middle;
            text-decoration: none;
        }

        #roomgroup {
            font-size: 18px;
            font-weight: bold;
            background-color: #46B7D9;
            width: 280px;
            height: 100px;
            margin-top: 20px;
            padding: 0 20px;
        }

        #roomgroup a {
            display: block;
            color: white;
        }

        #roomgroup a:hover {
            text-decoration: none;
        }

        .roomicon {
            font-size: 20px;
        }

        .roomup {
            padding-top: 8px;
            padding-bottom: 8px;
            margin-bottom: 10px;
            border-bottom: 1px solid #8CD3E8;
        }

        .roomdiv {
            display: inline;

        }

        #roomicon1,
        #roomicon2 {
            margin-right: 20px
        }

        #plus1,
        #plus2,
        #plus3 {
            margin-left: 20px;
        }

        /* 로그인쪽 종료*/
        /* 자주가는 메뉴 */
        #div2 {
            background-color: #fff;
            width: 580px;
            height: 330px;
            margin: 0px 30px;
            padding: 30px;
            box-sizing: border-box;
        }

        .shortcutList li {
            float: left;
            width: 20%;
            margin: 12px 0;
            text-align: center;
            list-style: none;
            text-decoration: none;
        }

        .shortcutList li a {
            display: inline-block;
            color: #000;
            font-size: 1.063em;
        }

        .shortcutList li.tline a {
            letter-spacing: -2.7px;
        }

        .shortcutList li .ico {
            display: block;
            width: 80px;
            height: 80px;
            margin: 0 auto 5px;
            background: url(./img/scicon.png) 0 0 no-repeat;
            border-radius: 50%;
        }

        .shortcutList li.svc2 .ico {
            background-position: -110px 0
        }

        .shortcutList li.svc3 .ico {
            background-position: -220px 0
        }

        .shortcutList li.svc4 .ico {
            background-position: -330px 0
        }

        .shortcutList li.svc5 .ico {
            background-position: -440px 0
        }

        .shortcutList li.svc6 .ico {
            background-position: 0 -120px
        }

        .shortcutList li.svc7 .ico {
            background-position: -110px -120px
        }

        .shortcutList li.svc8 .ico {
            background-position: -220px -120px
        }

        .shortcutList li.svc9 .ico {
            background-position: -330px -120px
        }

        .shortcutList li.svc10 .ico {
            background-position: -440px -120px
        }

        /* 자주가는 메뉴 종료*/
        /* 휴관일 */
        #div3 {
            width: 280px;
            height: 330px;
            background-color: fuchsia;
        }

        #holidayarea {
            background-color: #46B7D9;
            width: 280px;
            height: 145px;
            padding: 25px 30px;
            margin: 0px;
        }

        #holidayarea>a {
            color: white;
        }

        #searchMonth {
            background: #46B7D9;
            border: 1px solid #fff;
            color: #fff;
            font-size: 0.875em;
            line-height: 28px;
            width: 70px;
            height: 38px;
            padding: 0px 0px 0px 5px;
        }

        #div3 h4 {
            margin: 0px;
            color: white;
        }

        #holidayArea h4 select option {
            color: #ffffff;
        }


        .clearfix {
            margin-top: 10px;
        }

        .ballul {
            list-style: none;
        }

        .ballul li {
            text-align: center;
            padding-top: 3.5px;
            float: left;
            font-size: 17px;
            border: 1px solid white;
            border-radius: 50%;
            height: 27px;
            width: 27px;
            margin-right: 5px;
            color: #46B7D9;
            background-color: white;
        }

        #infoarea {
            height: 185px;
            width: 280px;
            background: #ffffff;
            padding: 20px 30px;
        }

        #infoarea h2 {
            color: #666666;
            font-size: 20px;
            float: left;
            margin: 0px;
            font-weight: bold;
        }

        #infoarea p {
            font-size: 18px;
        }

        #infoarea span {
            font-size: 15px;
            color: #666666;
        }

        #plus4 {
            float: right;
        }

        #infotitle {
            overflow: auto;
            padding-bottom: 10px;
            margin-bottom: 10px;
            border-bottom: 1px solid #dddddd;
        }

        #infotitle>a {
            color: #666666;
        }

        .desc {
            color: white;
            font-size: 14px;
            margin-top: 10px;
        }

        /*휴관일 안내 끝*/
        /*탑 원 끝*/
        /*탑 투 시작*/
        #toptwo {
            overflow: auto;
            margin: 0px;
            height: 495px;
            width: 1200px;
            margin: auto;
            background-color: #F5F5F5;
            padding-top: 50px;
            padding-bottom: 75px;
        }

        #divgroup2 {
            min-width: 1200px;
            width: 1200px;
            margin: auto;
            height: 370px;
        }

        #divgroup2 > div {
            float: left;
        }

        .schedule {
            width: 340px;
            height: 370px;
        }

        .mainevent {
            width: 480px;
            height: 370px;
            margin: 0 20px;
        }

        .mainevent a {
            color: white;
            text-decoration: none;
        }

        .mainevent a:hover {
            text-decoration: none;
        }

        .mainbanner {
            width: 340px;
            height: 370px;
        }

        /*스케쥴 시작*/
        .schedule>h4 {
            position: relative;
            font-size: 1.563em;
            background: #444;
            color: #fff;
            text-align: left;
            z-index: 1;
            padding: 0 20px;
            line-height: 60px;
            margin: 0;
        }

        #plus5 {
            margin-left: 150px;
            color: #ffffff;
        }

        .topgroup {
            text-align: center;
            padding-top: 15px;
            margin-bottom: 15px;
            height: 46px;
        }

        .topgroup>span,
        .topgroup>a {
            font-size: 27px;
        }

        .cal {
            width: 340px;
            height: 281px;
            padding: 20px;
            
        }
        .cal tr:nth-child(2) th{
            border-bottom: 1px solid #ddd;
        }

        .cal th {
            height: 20px;
            font-weight: bold;
            line-height: 20px;
            color: #666666;
            padding-bottom: 10px;
            width: 43px;
            height: 28px;
            text-align: center;
        }

        .cal tr:nth-child(1) th{
            font-size: 20px;
        }
        
        .cal tr{
            border: none;
        }
        .cal td {
            height: 20px;
            font-weight: bold;
            line-height: 20px;
            font-size: 1em;
            color: #666666;
            padding-bottom: 10px;
            width: 43px;
            height: 28px;
            text-align: center;
        }
        .cal_info{
            text-align: center;
        }
        .schedule .cal_info i.redcircle{
            width:15px;
            height:15px;
            margin:0 1px;
            background:#fc424d; 
            border-radius:50%;
            display: inline-block;            
        }
        .schedule .cal_info i.bluesquare{
            width:15px;
            height:15px;
            background:#008ace;
            display: inline-block;
        }
        .schedule .cal_info i.greensquare{
            width:15px;
            height:15px;
            background:#1ea953;
            display: inline-block;
        }
        /*        캘린더 종료*/
        /*        미들 공지랑 문화행사*/
        .eventtop {
            height: 61px;
            font-size: 25px;
            background-color: #46B7D9;
            padding: 0 20px;
            border-bottom: 1px solid #8CD3E8;

        }

        .eventtap {
            color: #c2e5f0;
        }

        .selecttap {
            color: #ffffff;
        }

        .eventtop>a {
            height: 60px;
            line-height: 60px;
        }

        .eventtop>a:nth-child(1) {
            padding: 0 15px 0 0;
            border-right: 1px solid #8CD3E8;
        }

        .eventtop>a:nth-child(2) {
            padding: 0 15px;
        }

        #plus6 {
            float: right;
            line-height: 60px;
            margin-right: 15px;
            color: white;
        }

        .eventmiddle {
            height: 110px;
            padding: 10px 20px 20px 20px;
            background-color: #46B7D9;
        }

        .eventmiddle>a>p:nth-child(1) {
            font-size: 20px;
            font-weight: bold;
            color: #ffffff;
            white-space: nowrap; 
            overflow: hidden; 
            text-overflow: ellipsis;
        }

        .eventmiddle>a:nth-child(2)>p {
            font-size: 1em;
            line-height: 1.5;
            margin-top: 5px;
            font-weight: 300;
            height: 3em;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: normal;
            word-wrap: break-word;
        }

        .mainbanner {
            height: 370px;
            width: 340px;
            position: relative;
        }

        .mainbanner>a {
            height: 370px;
            width: 340px;
        }

        .mainbanner>a>img {
            height: 370px;
            width: 340px;
        }

        .bx-wrapper {
            margin: 0px;
            padding: 0px;
            border: 0px;
        }

        .eventlist {
            padding-top: 20px;
            padding-right: 20px;
            padding-left: 20px;
            padding-bottom: 13px;
        }

        .eventlist>ul>li {
            color: #464646;
            font-size: 16px;
            margin-bottom: 7px;
            list-style: none;
            white-space: nowrap; 
            overflow: hidden; 
            text-overflow: ellipsis;
        }

        /*탑 three*/
        #topthree {
            height: 587px;
            width: 1200px;
            margin: auto;
            padding-top: 80px;
        }

        .tapclear {
            width: 833px;
            height: 54px;
            text-align: center;
            margin: auto;
            margin-bottom: 45px;
        }

        .tapclear>li {
            list-style: none;
            text-align: center;
            border: 2px solid #46B7D9;
            width: 271px;
            height: 50px;
            margin: auto;
            float: left;
            line-height: 45px;
            border-radius: 25px;

        }

        .tapclear>li:nth-child(2) {
            margin: 0 10px;
        }

        .tapclear>.on,
        .tapclear>.on>a {
            background: #46B7D9;
            color: #ffffff;
            border-radius: 25px;
        }

        .tapclear>li a {
            color: #46B7D9;
            font-size: 25px;
            display: block;
        }

        .addOn {
            display: none;
        }

        .booklist>a {
            color: black;
            width: 200px;
            min-width: 200px;
            max-width: 200px;
        }

        .booklist>a:hover {
            text-decoration: none;
        }

        .booklist {
            padding-bottom: 30px;
        }

        .booklist img {
            width: 200px;
            height: 289px;
        }

        .booklist>a>li {
            float: left;
            list-style: none;
            text-align: center;
            width: 20%;
        }

        .booktitle {
            font-weight: bold;
            margin-top: 10px;
            font-size: 17px;
            white-space: nowrap; 
            overflow: hidden; 
            text-overflow: ellipsis;
        }

        .bookinfo {
            font-size: 17px;
            white-space: nowrap; 
            overflow: hidden; 
            text-overflow: ellipsis;
        }
    </style>
</head>

<body>
    <div id="main">
        <div id="topOne">
            <div class="main_slogan">남양주 시민의 꿈을 펼쳐 갈 미래 유비쿼터스,<br><span>남양주시 도서관</span>입니다.</div>
            <div id="divgroup">
                <div id="div1">
                    <form action="#">
                        <div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon" id="">
                                    <div class="glyphicon glyphicon-user"></div>
                                </span>
                                <input type="text" class="form-control" placeholder="ID" aria-describedby="sizing-addon1">
                            </div>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon" id="">
                                    <div class="glyphicon glyphicon-lock"></div>
                                </span>
                                <input type="password" class="form-control" placeholder="PASSWORD" aria-describedby="sizing-addon1">
                            </div>
                            <button id="btns" class="btn btn-lg btn-info btn-block" type="submit">로그인</button>
                        </div>
                    </form>
                    <div id="loginMenu">
                        <a href="">회원가입</a>
                        <a href="" class="rightA">아이디 찾기</a>
                        <a href="" class="rightA">비밀번호 재발급</a>
                    </div>
                    <a href="">
                        <div id="lookup">
                            대출/예약 조회
                        </div>
                    </a>
                    <div id="roomgroup">
                        <a href="" class="roomup">
                            <div class="roomicon">
                                <div id="roomicon1" class="glyphicon glyphicon-film"></div>
                                <div class="roomdiv">디지털자료예약</div>
                                <div id="plus1" class="glyphicon glyphicon-plus"></div>
                            </div>
                        </a>
                        <a href="">
                            <div class="roomicon">
                                <div id="roomicon2" class="glyphicon glyphicon-pencil"></div>
                                <div class="roomdiv">열람실좌석현황</div>
                                <div id="plus2" class="glyphicon glyphicon-plus"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div id="div2">
                    <ul class="shortcutList">
                        <li class="svc1"><a href=""><i class="ico"></i>이용시간</a></li>
                        <li class="svc2"><a href=""><i class="ico"></i>대출/예약안내</a></li>
                        <li class="svc3"><a href=""><i class="ico"></i>상호대차</a></li>
                        <li class="svc4"><a href=""><i class="ico"></i>회원가입안내</a></li>
                        <li class="svc5"><a href=""><i class="ico"></i>희망도서신청</a></li>
                        <li class="svc6"><a href=""><i class="ico"></i>문화행사신청</a></li>
                        <li class="svc7"><a href=""><i class="ico"></i>견학신청</a></li>
                        <li class="svc8"><a href=""><i class="ico"></i>시설대관신청</a></li>
                        <li class="svc9"><a href=""><i class="ico"></i>자원봉사신청</a></li>
                        <li class="svc10"><a href=""><i class="ico"></i>전자도서관</a></li>
                    </ul>

                </div>
                <div id="div3">
                    <h4>
                        <div id="holidayarea">
                            <select id="searchMonth" title="월 선택">
                                <option value="2020-01">1월</option>
                                <option value="2020-02">2월</option>
                                <option value="2020-03" selected="selected">3월</option>
                                <option value="2020-04">4월</option>
                                <option value="2020-05">5월</option>
                                <option value="2020-06">6월</option>
                                <option value="2020-07">7월</option>
                                <option value="2020-08">8월</option>
                                <option value="2020-09">9월</option>
                                <option value="2020-10">10월</option>
                                <option value="2020-11">11월</option>
                                <option value="2020-12">12월</option>
                            </select>
                            휴관일 안내<a href="">
                                <div id="plus3" class="glyphicon glyphicon-plus"></div>
                            </a>
                            <div class="clearfix">
                                <ul class="ballul">
                                    <li class="ball">03</li>
                                    <li class="ball">06</li>
                                    <li class="ball">09</li>
                                    <li class="ball">12</li>
                                </ul>
                            </div>
                            <div class="desc">
                                <p>
                                    매월 첫째·셋째 금요일, 법정공휴일<br />(일요일 제외)
                                </p>
                            </div>
                        </div>
                    </h4>
                    <div id="infoarea">
                        <div id="infotitle">
                            <h2>이용안내</h2>
                            <a href="">
                                <div id="plus4" class="glyphicon glyphicon-plus"></div>
                            </a>
                        </div>
                        <p>
                            열람실<br />
                            <span>평일·주말 08시~22시</span>
                        </p>
                        <p>
                            문헌정보실<br />
                            <span>평일 09시~22시 주말09시~18시</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div id="toptwo">
            <div id="divgroup2">
                <div class="schedule">
                    <h4>도서관 달력 <a href="">
                            <div id="plus5" class="glyphicon glyphicon-plus"></div>
                        </a></h4>
                
                        
                    
                    <div class="cal">
                        <table id="calendar" align="center" >
                            <tr>
                                <!-- label은 마우스로 클릭을 편하게 해줌 -->
                                <th colspan="2"><i class="xi-angle-left caltitle" onclick="prevCalendar()"></i></th>
                                <th align="center" id="tbCalendarYM" class="caltitle" colspan="3"> 
                                <div class="topgroup">
                                <span>yyyy.mm</span>
                                </div>
                                </th>
                                <th colspan="2"><i class="xi-angle-right caltitle" onclick="nextCalendar()"></i></th>
                            </tr>
                            <tr>
                                <th align="center">일</th>
                                <th align="center">월</th>
                                <th align="center">화</th>
                                <th align="center">수</th>
                                <th align="center">목</th>
                                <th align="center">금</th>
                                <th align="center">토</th>
                            </tr>
                        </table>
	                    <p class="cal_info">
	                        <i class="redcircle"></i>
	                        휴관일
	                        <i class="bluesquare"></i>
	                        행사일
	                        <i class="greensquare"></i>
	                        문화행사프로그램
	                        
	                    </p>
	                </div>
	            </div>
                <div class="mainevent">
                    <div class="eventtop">
                        <a href="#eventtap">
                            <span class="eventtap selecttap">
                                공지사항
                            </span>
                        </a>
                        <a href="#eventtap">
                            <span class="eventtap">
                                문화행사
                            </span>
                        </a>
                        <span>
                            <div id="plus6" class="glyphicon glyphicon-plus"></div>
                        </span>
                    </div>
                    <!-- ------------------ 아래 둘중 하나만 켜짐-->
                    <div class="eventmiddle ">
                        <a href="">
                            <p>남양주 도서관 북드라이브 스루(도서예약대출시스템)</p>
                        </a>
                        <a href="">
                            <p></p>
                        </a>
                    </div>
                    <div class="eventlist">
                        <ul>
                            <li>a</li>
                            <li>b</li>
                            <li>c</li>
                            <li>d</li>
                            <li>e</li>
                        </ul>
                    </div>

                    <div class="eventmiddle addOn">
                        <a href="">
                            <p>책 읽어주세요(2월 29일)</p>
                        </a>
                        <a href="">
                            <p>1인 월 2회 신청 가능합니다.</p>
                        </a>
                    </div>
                    <div class="eventlist addOn">
                        <ul>
                            <li>1</li>
                            <li>2</li>
                            <li>3</li>
                            <li>4</li>
                            <li>5</li>
                        </ul>
                    </div>
                    <!-- ------------------ -->
                </div>
                <div class="mainbanner">
                    <a href=""><img src="img/banner/banner1.jpg" alt=""></a>
                    <a href=""><img src="img/banner/banner2.jpg" alt=""></a>
                    <a href=""><img src="img/banner/banner3.jpg" alt=""></a>
                    <a href=""><img src="img/banner/banner4.png" alt=""></a>
                </div>
            </div>
        </div>
        </div>
        <div id="topthree">
            <div class="bookzone">
                <ul class="tapclear">
                    <li class="on"><a href="#.">대출베스트</a></li>
                    <li><a href="#.">신착도서</a></li>
                    <li><a href="#.">공공도서관 인기도서</a></li>
                </ul>
            </div>
             
            <div id="bookgroup">
                <div id="bookBest">
                    <ul class="booklist">
                        <a href="">
                            <li><img src="img/banner/imgOne.jpg" alt="">
                                <p class="booktitle">치즈 인 더 트랩</p>
                                <p class="bookinfo">순끼 글/그림</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/imgOne.jpg" alt="">
                                <p class="booktitle">치즈 인 더 트랩</p>
                                <p class="bookinfo">순끼 글/그림</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/imgOne.jpg" alt="">
                                <p class="booktitle">치즈 인 더 트랩</p>
                                <p class="bookinfo">순끼 글/그림</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/imgOne.jpg" alt="">
                                <p class="booktitle">치즈 인 더 트랩</p>
                                <p class="bookinfo">순끼 글/그림</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/imgOne.jpg" alt="">
                                <p class="booktitle">치즈 인 더 트랩</p>
                                <p class="bookinfo">순끼 글/그림</p>
                            </li>
                        </a>
                    </ul>
                </div>
                <div id="newBook" class="addOn">
                    <ul class="booklist">
                        <a href="">
                            <li><img src="img/banner/noImg.png" alt="">
                                <p class="booktitle">잃어버린 시간을 찾아서. 2</p>
                                <p class="bookinfo">마르셀 프루스트 저 ; 김창석 역</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/noImg.png" alt="">
                                <p class="booktitle">잃어버린 시간을 찾아서. 2</p>
                                <p class="bookinfo">마르셀 프루스트 저 ; 김창석 역</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/noImg.png" alt="">
                                <p class="booktitle">잃어버린 시간을 찾아서. 2</p>
                                <p class="bookinfo">마르셀 프루스트 저 ; 김창석 역</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/noImg.png" alt="">
                                <p class="booktitle">잃어버린 시간을 찾아서. 2</p>
                                <p class="bookinfo">마르셀 프루스트 저 ; 김창석 역</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/noImg.png" alt="">
                                <p class="booktitle">잃어버린 시간을 찾아서. 2</p>
                                <p class="bookinfo">마르셀 프루스트 저 ; 김창석 역</p>
                            </li>
                        </a>
                    </ul>
                </div>
                <div id="publicBook" class="addOn">
                    <ul class="booklist">
                        <a href="">
                            <li><img src="img/banner/Img2.jpg" alt="">
                                <p class="booktitle">바삭바삭 갈매기</p>
                                <p class="bookinfo">전민걸 글·그림</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/Img2.jpg" alt="">
                                <p class="booktitle">바삭바삭 갈매기</p>
                                <p class="bookinfo">전민걸 글·그림</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/Img2.jpg" alt="">
                                <p class="booktitle">바삭바삭 갈매기</p>
                                <p class="bookinfo">전민걸 글·그림</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/Img2.jpg" alt="">
                                <p class="booktitle">바삭바삭 갈매기</p>
                                <p class="bookinfo">전민걸 글·그림</p>
                            </li>
                        </a>
                        <a href="">
                            <li><img src="img/banner/Img2.jpg" alt="">
                                <p class="booktitle">바삭바삭 갈매기</p>
                                <p class="bookinfo">전민걸 글·그림</p>
                            </li>
                        </a>
                    </ul>
                </div>
            </div>

        </div>
    </div>


</body></html>
