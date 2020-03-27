<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- 합쳐지고 최소화된 최신 CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

  <!--font-->
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
  <!-- 부가적인 테마 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

  <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>

  <style>
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Noto Sans', '나눔고딕', 'Nanum Gothic', 'Helvetica',
		sans-serif;
	font-size: 20px;
}

h1, h2, h3, h4, h5, p, div, span, ul, li, ol, img, a, a:visited {
	margin: 0px;
	padding: 0px;
}

.terms {
	top: 0;
	left: 0;
	width: 880px;
	position: relative;
	margin: 0 auto;
}

.joinStep {
	overflow: hidden;
	margin-bottom: 40px;
}

.joinStep li {
	margin-left: 80px;
	/* border-radius: 100px; */
}

.fieldTexta {
	margin-top: 10px;
	font-weight: bold;
}

#agree {
	border-radius: 0px;
	background: #46B7D9;
	border-color: #46B7D9;
}

#noagree {
	border-radius: 0px;
	background: rgb(19, 97, 121);
	border-color: #46B7D9;
}

#active {
	background: #46B7D9;
	border-color: #46B7D9;
}

.agree {
	margin-top: 20px;
}

.noct {
	width: 880px;
	height: 250px;
	resize: none;
	clear: both;
}

.noct1 {
	/* padding-top: 20px; */
	
}

.fieldTexta {
	clear: both;
}

ul li {
	list-style-type: none;
	float: left;
	margin-left: 6px;
	margin-right: 6px;
	border-radius: 10px;
}

.text {
	/* font-style: initial; */
	font-size: 20px;
	margin-bottom: 10px;
}

.title {
	font-size: 36px;
	margin: 40px 0 20px;
}

/* .sub {
      width: 1200px;
    } */
.wrap {
	width: 100%;
	margin: auto;
}

.contentcore {
	width: 880px;
}

#container {
	margin: 0;
	padding: 0;
	border: 0;

	/* height: 100%; */
	/* margin:auto; */
}

.btnfield {
	margin-top: 80px;
	text-align: center;
}

.contentGroup {
	margin: auto;
}
</style>


  <!-- <script type="text/javascript" src="../js/httpRequest.js"></script> -->

  <script type="text/javascript">
    window.onload = function () {

      var frm = document.frm;
      var agree = document.getElementById("agree");


      // btn1.disabled = true; //가입신청 버튼 숨기기.  보류

      agree.onclick = function () {
        var ch1 = $("input[name='group1']:checked").val();
        var ch2 = $("input[name='group2']:checked").val();
        var ch3 = $("input[name='group3']:checked").val();

        if (ch1 != "yes" || ch2 != "yes2") {
          if (ch1 != "yes") {
            alert("이용약관에 동의해주시기 바랍니다.")
          } else if (ch2 != "yes2") {
            alert("개인정보취급방침에 동의해주시기 바랍니다.")
          } else if (ch1 != "yes" || ch2 != "yes2") {
            alert("이용약관 및 개인정보취급방침에 동의해주시기 바랍니다.");
          } else if (ch1 == "yes" && ch2 == "yes2") {
            // frm.action = "pregisterOk.jsp";
            // frm.method = "get";
            // frm.submit();
          } else {


          }
        }
      }

      $(document).ready(function(){
        $('.allcheck').click(function(){
          $('.yes').prop('checked', this.checked);
        });
      });





    }
  </script>

<title>Insert title here</title>
</head>
<body>
	<div id="wrap" class="wrap">
		<div id="container" class="sub">
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
								<li class="list-group-item active" id="active">약관동의</li>
								<li class="list-group-item">정보입력</li>
							</ul>
						</div>


						<div class="noct1">
							<div class=title>
								이용약관
								</h4>
							</div>
							<!-- <pre>   -->
							<textarea class="noct" readonly="readonly">
 제1장 총칙
                제1조 목적
                이 약관은 남양주도서관(이하 "도서관"이라 한다) 홈페이지가 제공하는 모든 서비스(이하 "서비스"라 한다)의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다.

                제2조 정의
                이용자 : 서비스에 접속하여 남양주도서관이 제공하는 서비스를 이용하는 회원 및 비회원
                비회원 : 회원가입하지 않고 서비스에 접속하거나 이용하는 사람
                준회원 : 서비스에 접속하여 이 약관에 동의하고 본인인증 절차를 거친 후 아이디와 비밀번호를 발급 받은 사람
                정회원 : 준회원 상태에서 도서관에 방문하여 회원증 발급을 받은 사람
                이용계약 : 서비스 이용과 관련하여 도서관과 이용자간에 체결하는 계약
                가입 : 도서관이 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위
                ID : 회원의 식별을 위한 고유정보로 도서관이 승인하는 문자 또는 숫자의 조합
                비밀번호 : 회원ID로 식별되는 회원의 본인 여부를 검증하기 위하여 회원이 설정한 고유의 문자와 숫자의 조합
                이용해지 : 준회원의 경우 홈페이지의 회원탈퇴 페이지에서 탈퇴하는 것. 정회원의 경우 홈페이지 탈퇴 후 도서관에 방문하여 오프라인 탈퇴하는 것을 의미한다.
                제3조 효력의 발생과 변경
                회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.

                이 약관의 내용은 도서관 홈페이지 화면에 게시하거나 기타의 방법으로 공지함으로써 효력이 발생됩니다.
                도서관은 이 약관을 변경할 수 있으며, 변경된 약관은 이용자에게 공지함으로써 효력이 발생됩니다.
                제4조 준용규정
                이 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법 및 기타 관련법령의 규정에 따릅니다.

                제2장 서비스 이용계약
                제5조 이용계약의 성립
                이용계약은 이용자의 이용신청에 대한 도서관의 승낙과 이용자의 약관 내용에 대한 동의로 성립됩니다.

                제6조 이용신청
                이용신청은 인터넷을 통하여 이용자가 도서관에서 정한 가입신청서에 기록하여 신청할 수 있습니다.

                제7조 이용신청의 승낙
                회원이 신청서의 모든 사항을 정확히 기재하여 이용신청을 하였을 경우에 승낙합니다.
                다음 각호의 1에 해당하는 경우에는 이용 승낙을 하지 않을 수 있습니다.
                01. 이용신청의 내용을 허위로 기재한 경우
                02. 다른 사람의 명의를 사용하여 신청한 경우
                03. 기타 이용신청 요건에 미비 되었을 때
                04. 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우

              </textarea>
							<!-- </pre> -->
						</div>
						<div class="fieldTexta">
							이용약관에 동의합니다 <input type="radio" name="group1" value="yes"
								class="yes" //>

						</div>


						<div class="noct1">
							<div class="title">개인정보취급방침에 대한 안내</div>
							<textarea class="noct" readonly="readonly">
                남양주도서관에서 취급하는 모든 개인정보는 관련법령에 근거하거나 정보주체의 동의에 의하여 수집·보유 및 처리되고 있습니다.
                [개인정보 보호법]은 이러한 개인정보의 취급에 대한 일반적 규범을 제시하고 있으며, 남양주도서관에서는 이러한 법령의 규정에 따라 수집 보유 및 처리하는 개인정보를 공공업무의 적절한 수행과 국민의 권익을 보호하기 위해 적법하고 적정하게 취급할 것입니다.
                남양주도서관에서는 [개인정보 보호법]에 따라 이용자의 개인정보보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 개인정보 처리방침을 두고 있습니다.
                제1조 개인정보의 처리목적
                남양주도서관은 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경될 시에는 사전 동의를 받을 예정입니다.

                홈페이지 회원 가입 및 관리
                회원가입 및 회원제 서비스 이용 및 제한적 본인 확인절차에 따른 본인확인, 개인식별, 부정이용방지, 비인가 이용방지, 가입 의사 확인, 고지사항 전달 등을 목적으로 개인정보를 처리
                남양주도서관 홈페이지 서비스 향상 및 정책평가
                민원처리
                제2조 개인정보의 처리 및 보유기간
                이용자의 개인정보는 원칙적으로 개인정보의 처리 목적이 달성되면 지체없이 파기합니다.
                회원정보
                보존항목 : 이름, 생년월일, 성별, 주소, 휴대폰번호, 전화번호, 개인 아이디, 비밀번호, 이메일주소, I-PIN 정보
                보존기간 : 탈퇴 즉시 삭제
                제3조 개인정보의 제3자 제공
                남양주도서관은 원칙적으로 이용자의 개인정보를 제1조 (개인정보의 처리 목적)에서 명시한 범위 내에서 처리하며, 이용자의 사전 동의 없이 본래의 범위를 초과하여 처리하거나 제3자에게 제공하지 않습니다.

                다만, 다음의 경우는 예외로 처리됩니다.

                다른 법률에 특별한 규정이 있는 경우
                범죄의 수사와 같이 개인정보 보호법 제 18조 ②에 해당되는 경우
                이용자가 사전에 제3자 제공 및 공개에 동의한 경우
                서비스의 제공에 관한 계약의 이행을 위하여 필요한 개인정보로서 경제적/기술적인 사유로 통상의 동의를 받는 것이 현저히 곤란한 경우
                개인을 식별하기에 특정할 수 없는 상태로 가공하여 이용하는 경우
                제4조 개인정보처리의 위탁
                남양주도서관은 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
                위탁받는 자	위탁 업무	계약기간
                ㈜제이넷	도서관 홈페이지 유지보수	2020.1.1. ~ 2020.12.31.
                ㈜채움씨앤아이	도서관리시스템 유지보수	2020.1.1. ~ 2020.12.31.
                남양주도서관은 위탁계약 체결시 『개인정보 보호법』 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적ㆍ관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리ㆍ감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
                위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
                제5조 정보주체와 법정대리인의 권리·의무 및 행사방법
                수집방법
                정보주체는 남양주도서관에 대해 언제든지 개인정보 열람ㆍ정정ㆍ삭제ㆍ처리정지 요구 등의 권리를 행사할 수 있습니다.
                제1항에 따른 권리 행사는 남양주도서관에 대해 『개인정보 보호법 시행령』 제41조 제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 남양주도서관은 이에 대해 지체 없이 조치하겠습니다.
                제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 『개인정보 보호법 시행규칙』 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
                개인정보 열람 및 처리정지 요구는 『개인정보 보호법』 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
                개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
                남양주도서관은 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
                제6조 처리하는 개인정보의 항목
                남양주도서관에서 서비스 제공 및 민원 처리를 위해 처리하는 개인정보 항목 및 수집 방법은 다음과 같습니다.

                개인정보항목
                이름, 생년월일, 성별, 주소, 휴대폰번호, 전화번호, 개인 아이디, 비밀번호, 이메일주소, I-PIN 정보
                수집방법
                온라인 수집 (홈페이지 회원)
                제7조 개인정보의 파기
                남양주도서관은 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

                파기절차
                이용자가 입력한 정보는 목적 달성 후 내부 방침 및 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다.
                파기방법
                남양주도서관에서 처리하는 개인정보파일은 전자적 파일 형태로 기록되기 때문에 재생할 수 없는 기술적 방법을 사용하여 파기합니다.
                제8조 개인정보의 안전성 확보조치
                남양주도서관은 「개인정보 보호법」 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.

                개인정보의 암호화
                이용자의 개인정보는 암호화 되어 저장 및 관리되고 있습니다. 또한 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등 별도 보안기능을 사용하고 있습니다.
                개인정보 취급 담당자의 최소화 및 교육
                개인정보를 취급하는 담당자를 지정하고 최소화하여 개인정보를 관리하는 대책을 시행 및 개인정보 교육을 실시하고 있습니다.
                비인가자에 대한 출입 통제
                개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.
                내부관리계획의 수립 및 시행
                남양주도서관의 내부관리계획 수립 및 시행은 행정안전부의 내부관리 지침을 준수하여 시행합니다.
                접속기록의 보관 및 위변조 방지
                개인정보처리시스템에 접속한 기록(웹 로그, 요약정보 등)을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.
                개인정보에 대한 접근 제한
                개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근 통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.
                해킹 등에 대비한 기술적 대책
                남양주도서관은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다. 또한 네트워크 트래픽의 통제(Monitoring)는 물론 불법적으로 정보를 변경하는 등의 시도를 탐지하고 있습니다.
                제9조 개인정보 보호책임자
                남양주시 도서관은 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.

                개인정보 보호책임자
                소속 : 평생학습원
                성명 : 조성기
                개인정보 보호담당자
                소속 : 도서관운영과
                성명 : 성명준
                전화번호 : 031-590-2874
                제10조 개인정보 처리방침의 변경
                이 개인정보처리방침은 게시일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 공지사항을 통하여 고지할 것입니다.

                제11조 권익침해 구제방법
                정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.

                개인정보분쟁조정위원회 : (국번없이) 118(내선2번)
                정보보호마크인증위원회 : 02-580-0533~4 (http://eprivacy.or.kr)
                대검찰청 첨단범죄수사과 : 02-3480-2000 (http://www.spo.go.kr)
                경찰청 사이버테러대응센터 : 1566-0112 (http://www.netan.go.kr)
    </textarea>
						</div>
						<div class="fieldTexta">
							개인정보취급방침에 동의합니다 <input type="radio" name="group2" value="yes2"
								class="yes" />

						</div>
						<div class="fieldTexta">
							약관에 모두 동의합니다 <input type="radio" name="group3" value="allcheck"
								class="allcheck" //>

						</div>

						<div class="btnfield">
							<button type="button" id="agree" class="btn btn-primary">동의합니다.</button>

							<button type="button" id="noagree" class="btn btn-warning">
								동의하지 않습니다.</button>

						</div>

					</div>
				</div>
			</div>
</body>
</html>