<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!--font-->
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<!--datatimepicker 사용-->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css"
	rel="stylesheet" />
<!--아래에서 올림-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.13.0/moment.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<!--datatimepicker 사용-->



<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 주소 api -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<style>
* {
	margin: 0;
	padding: 0;
}

/* css초기화 */
/* html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
/* article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
} */
/* css초기화 */
body {
	font-family: 'Noto Sans', '나눔고딕', 'Nanum Gothic', 'Helvetica',
		sans-serif;
	font-size: 20px;
}

h1, h2, h3, h4, h5, p, div, span, ul, li, ol, img, a, a:visited {
	margin: 0px;
	padding: 0px;
}

/* 아래는 클래스 input */
.input {
	display: inline;
	text-align: right;
	position: relative;
	/* padding-bottom: 10px; */
	/* border-radius: 0ex; */
	/* margin-left: 100px; */
	/* left: 100px; */
	border: none;
	/* border:0px 0px 0px 90px; */
}

.joinStep {
	overflow: hidden;
	margin-bottom: 40px;
}

.joinStep li {
	margin-left: 80px;
}

#container {
	border: 1px solid red;
	margin: 0;
	padding: 0;
	border: 0;
}

tr
    .contentGroup {
	margin: auto;
}

.terms {
	top: 0;
	left: 0;
	width: 880px;
	position: relative;
	margin: 0 auto;
}

#rcontainer {
	width: 880px;
	display: table;
	border-top: 1px solid black;
	margin-top: 80px;
}

.wrap {
	width: 100%;
	margin: auto;
}

.temp {
	padding-top: 20px;
	padding-bottom: 20px;
	border-top: 1px dotted gray;
}

.fieldText {
	padding-right: 20px;
	font-weight: bold;
	font-size: 20px;
	display: table-cell;
}

#bd {
	/* display: block; */
	margin: 0;
	padding: 0;
	text-align: left;
	/* width: 140px; */
	height: 36px;
}

.idCh, .pwCh, .nCh {
	padding-left: 95px;
}

td {
	padding-left: 50px;
}

th, td {
	margin-left: 30px;
	padding-top: 10px;
	padding-bottom: 10px;
	border-bottom: 1px solid rgb(195, 190, 190);
}

th {
	background-color: rgb(239, 255, 255);
}

ul li {
	float: left;
	margin-left: 6px;
	margin-right: 6px;
	border-radius: 10px;
}

.noct1 {
	padding-left: 40px;
	padding-top: 50px;
}

#active {
	background: #46B7D9;
	border-color: #46B7D9;
}

.fieldTexta {
	clear: both;
}

#btn1, input button {
	border-radius: 0px;
	background: #46B7D9;
	border-color: #46B7D9;
	height: 50px;
}

#btn2 {
	border-radius: 0px;
	background: rgb(19, 97, 121);
	border-color: #46B7D9;
	height: 50px;
}

#btn {
	background-color: rgb(240, 241, 175);
	border: 4;
	/* outline: 0; */
}

#gbutton {
	background-color: aqua;
}

.btnfield {
	margin-top: 80px;
	text-align: center;
}

#gbutton {
	border: 1px solid #ccc;
	position: relative;
	top: 0;
	left: 15px;
	width: 50px;
}

.contentcore {
	width: 880px;
}

.mv {
	margin-top: 5px;
}

.leftLabel {
	display: inline-block;
	width: 140px;
	height: 100%;
	/* height:36px; */
	border: 1px solid black;
	/* height: 100px; */
	/* clear: initial; */
}

.addr1input {
	/* margin-left: 145px; */
	width: 343px;
}
</style>



<script type="text/javascript" src="../js/httpRequest.js"></script>

<script type="text/javascript">
	//중복확인 버튼을 누르면 콘솔에 메세지 출력



	var idflag = 0; // id확인 논리값
	var pwflag = 0; // 비밀번호 재입력 확인 논리값
	var nickflag = 0; // 닉네임 중복 논리값
	var nameflag = 0; //이름 중복 논리값

	//////////////////////////////////////닉네임 중복 확인 및 아이디 중복 확인 버튼 클릭시//////////////////////////////////
	$(function() {
		// $("#header").load("header.html");
		// $("#contents").load("side.html");

		$("input[value='중복확인']").on("click", idcheckup);
		$("input[value='닉네임중복확인']").on("click", ncheckup);

		$('#datet').datetimepicker({
			viewMode : 'years',
			format : 'DD/MM/YYYY',
			// defaultDate: moment('01/01/1990', 'DD/MM/YYYY'),
			showClear : true

		});
	});

	function idcheckup() {//아이디체크업
		var userid = document.getElementById("id").value;
		if (!userid) {
			alert("아이디를 입력하지 않았습니다.");
			idflag = 2;
			return false;
		}
		var txt = $("#id").val().trim(); //공백제거
		var params = "id=" + txt;
		sendRequest("pidCheckup.jsp", params, idcallback, "GET")

		function idcallback() {//아이디 콜백
			//통신완료이고 정상 페이지라면
			if (xhr.readyState == 4 && xhr.status == 200) {
				var msg = xhr.responseText.trim();
				//만약 응답이 true라면 div에 아이디가 존재합니다.
				//false라면 사용가능합니다.
				if (msg == 'true') {
					$(".idCh").html("같은 아이디가 존재합니다");
					idflag = 0;
				} else {
					$(".idCh").html("사용 가능한 아이디입니다");
					idflag = 1;
				}
			}
		}
	}
	//닉네임체크업
	function ncheckup() {
		var userNick = document.getElementById("nick").value;
		if (!userNick) {
			alert("닉네임을 입력하지 않았습니다.");
			nickflag = 2;
			return false;
		}
		var txt = $("#nick").val().trim(); //공백제거
		var params = "nick=" + txt;
		sendRequest("pnCheckup.jsp", params, ncallback, "GET")
	}
	//닉네임 콜백
	function ncallback() {
		//통신완료이고 정상 페이지라면
		if (xhr.readyState == 4 && xhr.status == 200)
			var msg = xhr.responseText.trim();
		//만약 응답이 true라면 div에 아이디가 존재합니다.
		//false라면 사용가능합니다.
		if (msg == 'true') {
			$(".nCh").html("같은 닉네임이 존재합니다");
			nickflag = 0;
		} else {
			$(".nCh").html("사용 가능한 닉네임입니다");
			nickflag = 1;

		}
	}
	//------------------------------------------------------------------------------------------------

	////////////////////////////////////////////비밀번호 체크/////////////////////////////////
	$(function() {
		$('#uPw').keyup(function() {
			$('.pwCh').html('');
		});

		$('#uPwch').keyup(function() {
			if ($('#uPw').val() != $('#uPwch').val()) {
				$('.pwCh').html('비밀번호가 일치하지 않습니다.');
				pwflag = 0;

			} else {
				$('.pwCh').html("비밀번호가 일치합니다.")
				pwflag = 1;
			}
		});
	});
	//-----------------------------------------------------------------------------------

	///////////////////////////////////////////이메일 보내기////////////////////////////////
	function chCosendgo() {
		var em1 = document.getElementById("em1").value;
		var em2 = document.getElementById("em2").value;

		if (em1 == '' || em2 == '') {//이메일 둘중 하나라도 공백자리라면
			alert("이메일을 정확히 입력해주세요");
		} else {
			var params1 = "em1=" + encodeURIComponent(em1);
			/* var params1 = em1; */
			var params2 = "em2=" + encodeURIComponent(em2); /* var params2 = em2; */

			/* console.log(params1+"확인용 " + params2); */
			sendRequest("codeCheck.jsp", params1 + '&' + params2, callback1,
					"POST");
		}
	}

	function callback1() {
		console.log("콜백함수 ㅎ");
		key = xhr.responseText.trim();//값 받아와서.
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
			}
		}
	}
	//------------------------------------------------------------------

	function postCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				//참고 항목은 지웠음.
				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.

				// if(data.userSelectedType === 'R'){
				//     // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				//     // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				//     if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				//         extraAddr += data.bname;
				//     }
				//     // 건물명이 있고, 공동주택일 경우 추가한다.
				//     if(data.buildingName !== '' && data.apartment === 'Y'){
				//         extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				//     }
				//     // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				//     if(extraAddr !== ''){
				//         extraAddr = ' (' + extraAddr + ')';
				//     }
				//     // 조합된 참고항목을 해당 필드에 넣는다.
				//     document.getElementById("sample6_extraAddress").value = extraAddr;

				// } else {
				//     document.getElementById("sample6_extraAddress").value = '';
				// }

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('addr1').value = data.zonecode;
				document.getElementById("addr2").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("addr3").focus();
			}
		}).open();
	}

	///////////////////////////////////////최종검사///////////////////////////////////////////////////////
	window.onload = function() {

		var frm = document.frm;
		var btn1 = document.getElementById("btn1");
		var btn2 = document.getElementById("chCosend");

		// 		btn1.disabled = true; //가입신청 버튼 숨기기.  보류

		btn1.onclick = function() {
			var ch1 = $("input[name='group1']:checked").val();
			var ch2 = $("input[name='group2']:checked").val();
			for (var i = 0; i < $("#name").val().length; i++) {
				var chk = $("#name").val().substring(i, i + 1);
				if (chk.match(/[0-9]|[a-z]|[A-Z]/)) {
					alert("이름에는 영문 및 특수문자,숫자를 사용하실 수 없습니다.");
					return;
				}
				if (chk.match(/([^가-힣\x7])/i)) {
					alert("이름을 정확히 입력해주세요");
					return;
				}
				if ($("#name").val() == "") {
					alert("이름을 입력해주세요");
					return;
				}
			}

			if (ch1 == "no" || ch2 == "no2" || idflag == 0
					|| idflag == 2 || nickflag == 0 || nickflag == 2
					|| pwflag == 0 || pwflag == 2) {
				if (ch1 == "no" || ch2 == "no2") {
					alert("이용약관 및 개인정보취급방침에 동의해주시기 바랍니다.");
				} else if (idflag == 0 || idflag == 2) {
					alert("아이디를 확인해주세요.")
				} else if (nickflag == 0 || nickflag == 2) {
					alert("닉네임을 확인해주세요")
				} else if (pwflag == 0 || pwflag == 2) {
					alert("패스워드를 확인해주세요")
				} 
			} else if (ch1 == "yes" && ch2 == "yes2" && pwflag == 1 && idflag == 1 && nickflag == 1) {
				frm.action = "pregisterOk.jsp";
				frm.method = "get";
				frm.submit();
			} else {
				console.log("ch1 : " + ch1);
				console.log("ch1 : " + ch2);
				console.log("idflag : " + idflag);
				console.log("nickflag : " + nickflag);
				console.log("pwflag : " + pwflag);

			}
		}
	}
</script>

</head>
<body>
	<div id="wrap" class="wrap">
		<!-- <div id="header">이부분은 헤더</div> -->
		<!-- <div id="container" class="sub"> -->
		<!-- <div id="contents"></div> -->
		<div class="contentGroup">
			<div class="terms">
				<div class="contentcore">
					<h3>회원가입</h3>
					<hr class="one">
					<div>네비게이션</div>
					<hr class="one">
					<div class="joinStep">
						<ul class="list-group list-group-horizontal">

							<li class="list-group-item">가입확인</li>
							<li class="list-group-item">본인확인</li>
							<li class="list-group-item">약관동의</li>
							<li class="list-group-item active" id="active">정보입력</li>

						</ul>
					</div>



					<form action="pregisterOk.jsp" id="register" name="frm">


						<div id="rcontainer">
							<table>

								<tr>
									<th>이름</th>
									<td>
										<div class="input">
											<input type="text" name="name" id="name" max-width="220"
												maxlength="5">
										</div>
										<div class=nameCheck></div>
									</td>
								</tr>
								<tr>
									<th>아이디</th>
									<td>
										<div class="input">
											<input type="text" name="id" id="id" max-width="220" />&nbsp;&nbsp;
											<input type="button" value="중복확인" id="btn" />
										</div>
									</td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td>
										<div class="input">
											<input type="password" NAME="uPw" id="uPw" max-width="220"
												height="5px">
										</div>
									</td>
								</tr>
								<tr>
									<th>비밀번호 확인</th>
									<td>
										<div class="input">
											<input type="password" id="uPwch" max-width="220"> <span
												class="pwCh"></span>
										</div>

									</td>
								</tr>
								<tr>
									<th>닉네임</th>
									<td>
										<div class="input">
											<input type="text" name="nick" id="nick" max-width="220" />&nbsp;&nbsp;
											<input type="button" value="닉네임중복확인" id="btn" />
										</div>
									</td>
								</tr>
								<tr>
									<th>성별</th>
									<td>
										<div class="input">
											<input type="radio" name="gender" id="mail" class="frm_input">남
											&nbsp;&nbsp; <input type="radio" name="gender" id="femail"
												class="frm_input">여
											<!-- <select class="form-control" id="gender">
                    <option value="M">남</option>
                    <option value="F">여</option>
                  </select> -->
										</div>
									</td>
								</tr>
								<tr>
									<th>생년월일</th>
									<td>
										<div class="input-group date" id="datet">
											<div class="input">
												<input type="text" name="bd" id="bd" max-width="220" />
											</div>
											<div class="input-group-addon" id="gbutton" name="btn">
												<div class="glyphicon-calendar glyphicon"></div>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<th rowspan="2">주소</th>
									<td rowspan="2">
										<div class="input">
											<input type="text" id="addr1" max-width="220"
												placeholder="우편번호" />&nbsp;&nbsp; <input type="button"
												onclick="postCode()" value="우편번호 찾기" id="btn" /><br>
										</div>
										<div>
											<input type="text" id="addr2" placeholder="주소"
												class="addr1input mv" /> <input type="text" id="addr3"
												placeholder="상세주소 " class="mv" />
										</div>
										</div>
									</td>
								</tr>
								<tr>								</tr>
							</table>
							<div class=btnfield>
								<input type="button" id="btn1" class="btn btn-primary"
									value="가입신청" onclick=> <input type="button" id="btn2"
									class="btn btn-warning" value="취소"
									onclick="window.location='main.jsp'">
							</div>

						</div>


					</form>
				</div>
			</div>
		</div>

	</div>
	</div>
</body>
</html>