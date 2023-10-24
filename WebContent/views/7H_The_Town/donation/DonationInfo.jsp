<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7H THE TOWN | 후원 신청</title>
<link rel="icon" type="image/png" sizes="32x32" href="views/7H_The_Town/resource/img/favicon-32x32.png">
<link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/fonts/fonts.css">
<link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materialize.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/header.css">
<script src="views/7H_The_Town/resource/CSS,JS/header.js"></script>
<link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/footer.css">
<link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materializeBtn.css">
    <script src="views/7H_The_Town/resource/CSS,JS/materialize/js/materialize.js"></script>
<style>
body input {
	border: 2px solid rgb(210, 210, 210, 1);
	border-radius: 10px;
}

body button {
	border: 2px solid rgb(210, 210, 210, 1);
	border-radius: 10px;
}

body select {
	border: 2px solid rgb(210, 210, 210, 1);
	border-radius: 10px;
}

a {
	text-decoration: none;
	color: black;
}


.outer {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top:250px;
	margin-bottom:250px;
	width:auto;
}
#give {
	background-color: white;
	width:700px;
}


.rightAlign {
	text-align: right;
	display: flex;
	flex-direction: column;
	align-items: end;
}
select{
	width:450px !important;
}
input[type="text"]{
	width:450px !important;
}
.termsInfo {
	width:450px;
    height: 250px;
    font-weight: bold;
    border: 1px solid black; 
    background-color: rgb(250, 250, 250);
    white-space: pre-line; 
    overflow-y: scroll; 
    margin: 0px;
}
.termsInfo>p{
    margin: 30px;
}
</style>
</head>
<body>


	<%@ include file="/views/common/Header.jsp"%>

	<div class="outer">


		<fieldset id="give" class="col s12 m2 z-depth-2"
			style="width: auto; padding:45px 70px 90px 70px; border-radius: 5px;">
			
			<form action="<%=contextPath%>/donation.po" method="post">
				<h4>후원 방식</h4>
				<br>
				<button type="button" id="kind" class="waves-effect waves-light btn" style="width: 90px; height: 40px; line-height:0">
					<p>정기후원</p>
				</button>
				<button type="button" id="kind1" class="waves-effect waves-light btn" style="width: 90px; height: 40px; line-height:0">
					<p>일시후원</p>
				</button>
				<br>
				<span class="helper-text" style="font-size: 10px; font-weight: bold;">정기후원은 결제일 기준으로 선택하신 금액만큼 매달 자동결제됩니다.</span>
				<input type="hidden" class="kind" name="donationKind2"> 
				<input type="hidden" id="userNo" name="userNo" value="<%= loginUser.getUserNo() %>"> <br>
				<br>
				<h6>* 후원금액</h6>
				<br>
				<select name="donaPrice" onchange="priceInsert();">
					<option selected>10000</option>
					<option>30000</option>
					<option>50000</option>
					<option>100000</option>
					<option>직접입력</option>
				</select> 
				<br>
				<div class="input-field inline">
                	<input autocomplete="off" name="donaPrice1" id="donaPrice1" type="text" style="width: 350px;">
                    <label for="donaPrice1" style="font-weight: bold;"></label>
                </div>
                <br>
				<br>
				<br>
				<h4>결제정보</h4>
				<br>
				<br>
				<h6>* 결제수단</h6>
				<select name="payment">
					<option selected>신용카드</option>
					<option>무통장입금</option>
					<option>핸드폰결제</option>
					<option>간편결제</option>
				</select>
				<br>
				<br>
				<div class="input-field inline">
                	<input autocomplete="off" name="keyword1" id="keyword1" type="text" style="width: 350px;">
                    <label for="keyword1" style="font-weight: bold;">카드번호</label>
                    <span class="helper-text" style="font-size: 10px; font-weight: bold;">- 제외</span>
                </div>
                <br>
				<div class="input-field inline">
                	<input autocomplete="off" name="keyword2" id="keyword2" type="text" style="width: 350px;">
                    <label for="keyword2" style="font-weight: bold;">유효기간</label>
                    <span class="helper-text" style="font-size: 10px; font-weight: bold;">- 제외</span>
                </div>
				<br>
				<br>
				<div class="input-field inline">
                	<input autocomplete="off" name="phonenumber" id="phonenumber" type="text" style="width: 350px;">
                    <label for="phonenumber" style="font-weight: bold;">* 휴대폰번호</label>
                    <span class="helper-text" style="font-size: 10px; font-weight: bold;">- 제외</span>
                </div>
				<div class="rightAlign">
					<label> <input type="checkbox" required /> <span>문자 수신 동의</span> </label>
				</div>
				<br>
				<br>
				<br>
				<div>
				</div>
				<br>
				<div class="termsInfo"><p>개인정보보호법에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.

	                1. 수집하는 개인정보
	                이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
	                
	                회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
	                - 회원 가입 시 필수항목으로 아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호를, 선택항목으로 본인확인 이메일주소를 수집합니다. 실명 인증된 아이디로 가입 시, 암호화된 동일인 식별정보(CI), 중복가입 확인정보(DI), 내외국인 정보를 함께 수집합니다. 만14세 미만 아동의 경우, 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다.
	                - 비밀번호 없이 회원 가입 시에는 필수항목으로 아이디, 이름, 생년월일, 휴대전화번호를, 선택항목으로 비밀번호를 수집합니다.
	                - 단체 회원가입 시 필수 항목으로 단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를, 선택항목으로 단체 대표자명을 수집합니다.
	                서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
	                - 회원정보 또는 개별 서비스에서 프로필 정보(별명, 프로필 사진)를 설정할 수 있습니다. 회원정보에 별명을 입력하지 않은 경우에는 마스킹 처리된 아이디가 별명으로 자동 입력됩니다.
	                - 네이버 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
	                
	                
	                
	                서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.
	                구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다.
	                서비스 이용 과정에서 위치정보가 수집될 수 있으며,
	                네이버에서 제공하는 위치기반 서비스에 대해서는 '네이버 위치기반서비스 이용약관'에서 자세하게 규정하고 있습니다.
	                이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.
	                2. 수집한 개인정보의 이용
	                네이버 및 네이버 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
	                
	                - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
	                - 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
	                - 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
	                - 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
	                - 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
	                - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
	                - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
	                3. 개인정보의 보관기간
	                회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
	                단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.
	                이용자에게 개인정보 보관기간에 대해 회원가입 시 또는 서비스 가입 시 동의를 얻은 경우는 아래와 같습니다.
	                - 부정 가입 및 이용 방지
	                부정 이용자의 가입인증 휴대전화번호 또는 DI (만14세 미만의 경우 법정대리인DI) : 탈퇴일로부터 6개월 보관
	                탈퇴한 이용자의 휴대전화번호(복호화가 불가능한 일방향 암호화(해시처리)) : 탈퇴일로부터 6개월 보관
	                - QR코드 복구 요청 대응
	                QR코드 등록 정보:삭제 시점으로부터6개월 보관
	                - 스마트플레이스 분쟁 조정 및 고객문의 대응
	                휴대전화번호:등록/수정/삭제 요청 시로부터 최대1년
	                - 네이버 플러스 멤버십 서비스 혜택 중복 제공 방지
	                암호화처리(해시처리)한DI :혜택 제공 종료일로부터6개월 보관
	                - 지식iN eXpert 재가입 신청 및 부정 이용 방지
	                eXpert 서비스 및 eXpert 센터 가입 등록정보 : 신청일로부터 6개월(등록 거절 시, 거절 의사 표시한 날로부터 30일) 보관
	                전자상거래 등에서의 소비자 보호에 관한 법률, 전자문서 및 전자거래 기본법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. 네이버는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
	                - 전자상거래 등에서 소비자 보호에 관한 법률
	                계약 또는 청약철회 등에 관한 기록: 5년 보관
	                대금결제 및 재화 등의 공급에 관한 기록: 5년 보관
	                소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
	                - 전자문서 및 전자거래 기본법
	                공인전자주소를 통한 전자문서 유통에 관한 기록 : 10년 보관
	                - 전자서명 인증 업무
	                인증서와 인증 업무에 관한 기록: 인증서 효력 상실일로부터 10년 보관
	                - 통신비밀보호법
	                로그인 기록: 3개월
	                
	                참고로 네이버는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다.
	                
	                4. 개인정보 수집 및 이용 동의를 거부할 권리
	                이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다. 회원가입 시 수집하는 최소한의 개인정보, 즉, 필수 항목에 대한 수집 및 이용 동의를 거부하실 경우, 회원가입이 어려울 수 있습니다.</p>
                	</p>
            	</div>
				<div class="rightAlign">
					<label> <input type="checkbox" required /> <span>이용약관 동의</span>
					</label>
				</div>
				<br>
				<br>
				<div class="rightAlign">
					<button type="submit" id="" class="waves-effect waves-light btn" style="width: 110px; height: 45px; line-height:0">
						<p>결제하기</p>
					</button>
				</div>
			</form>
		</fieldset>
	</div>

	<script>
             $(function(){
            	 $("#kind").click(function(){
            		 $(this).css("backgroundColor","yellowgreen");
            		 $("#kind1").css("backgroundColor","gray");
            		 $(".kind").val("정기후원")
                 });
                 $("#kind1").click(function(){
                	 $(this).css("backgroundColor","yellowgreen");
                	 $("#kind").css("backgroundColor","gray");
                	 $(".kind").val("일시후원")
                 });
             })
             
             
             function priceInsert(){
            	 const price = $("select[name='donaPrice']").val();
            	 $("#donaPrice1").val(price);
             }
    </script>


	<%@ include file="/views/7H_The_Town/Footer.jsp" %>


</body>
</html>