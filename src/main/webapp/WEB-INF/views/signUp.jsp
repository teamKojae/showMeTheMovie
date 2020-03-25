<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/css/megabox.min.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/js/jquery-3.4.1.min.js"></script>

<script src="/js/common.js"></script>
<script src="/js/sign.js"></script>
</head>
<body>
<body class="bg-member">
	<div class="body-wrap">
	<div class="member-wrap">
		<h1 class="ci">
				<!-- <a class="sighUpLogo" href="/main" title="메인 페이지로 이동">MEGABOX : Life Theater</a> -->
				<div class="sighUpLogo"></div>
			</h1>
		<div class="col-wrap">
			<!-- col -->
			<div class="col">
				<p class="page-info-txt">
					<strong>안녕하세요.<!--님 안녕하세요.--></strong>
					<span>회원정보를 입력해주세요.<!--회원정보를 입력해주세요.--></span>
				</p>

				<div class="table-wrap">
					<table class="board-form">
						<caption>생년월일, 휴대폰번호, 아이디, 비밀번호, 비밀번호 확인, 이메일 주소, 무인발권기 기능설정, 나만의 메가박스 항목을 가진 회원가입 정보입력 표<!--생년월일, 휴대폰번호, 아이디, 비밀번호, 비밀번호 확인, 이메일 주소, 무인발권기 기능설정, 나만의 메가박스 항목을 가진 회원가입 정보입력 표-->
							</caption>
						<colgroup>
							<col style="width:130px;">
							<col>
						</colgroup>
						<tbody>
							

							
							
							<tr id="nonMbCertRow" style="display: none;">
								<th scope="row"><label for="mblpCharCertNo">인증번호<!--인증번호--></label></th>
								<td>
									<div class="chk-num">
										<div class="line">
											<input maxlength="4" id="mblpCharCertNo" type="text"
													class="input-text w210px" title="인증번호 입력">
												<!--인증번호 입력-->

											<div class="time-limit" id="timer">
												3:00
											</div>
										</div>
									</div>

									<button id="btnMblpCharCert" type="button"
											class="button gray-line small w75px ml08 disabled">인증확인</button>
									<div id="nonMbCert-error-text" class="alert"></div>
								</td>

							</tr>
							<tr>
								<th scope="row"><label for="ibxJoinInfoRegLoginId">아이디<!--아이디--></label></th>
								<td>
									<input maxlength="12" id="ibxJoinInfoRegLoginId" type="text"
										placeholder="영문,숫자 조합(8~12자)" class="input-text w260px">
									<!--영문,숫자 조합(8~12자)-->
									<button id="btnMbLoginIdDupCnfm" type="button"
											class="button gray-line small w75px ml08 disabled">중복확인<!--중복확인-->
										</button>
									<div id="JoinInfoRegLoginId-error-text" class="alert">아이디는 영문,숫자 조합 8자리 이상 12자리 이하 입니다.</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxJoinInfoRegLoginPwd">비밀번호<!--비밀번호--></label></th>
								<td>
									<input maxlength="16" id="ibxJoinInfoRegLoginPwd"
										type="password" placeholder="영문,숫자 조합(8자~15자)"
										class="input-text w260px">
									<!--영문,숫자,특수기호 중 2가지 이상 조합-->
									<div id="JoinInfoRegLoginPwd-error-text" class="alert">비밀번호는 영문,숫자 조합 8자리 이상 16자리 이하 입니다.</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxJoinInfoRegLoginPwdConfirm">비밀번호 확인<!--비밀번호 확인--></label></th>
								<td>
									<input maxlength="16" id="ibxJoinInfoRegLoginPwdConfirm"
										type="password" placeholder="영문,숫자 조합(8자~15자)"
										class="input-text w260px">
									<!--영문,숫자,특수기호 중 2가지 이상 조합-->
									<div id="JoinInfoRegLoginPwdConfirm-error-text" class="alert"></div>
								</td>
							</tr>
							
							
							
						<tr>
								<th scope="row">생년월일<!--생년월일--></th>
								<td id="ibxMbJoinInfoRegBirthDe">0000년 00월 00일</td>
							</tr>
								<!-- 휴대폰 번호 불러올때 -->
								<tr id="trMblpTelno">
									<th scope="row">휴대폰 번호 <!--휴대폰 번호 --></th>
									<td>    010-0000-0000</td>
								</tr>
							</tbody>
					</table>
				</div>

				<!-- marketing-agree -->
				
				<!--// marketing-agree -->


				<div class="btn-member-bottom">
					<button id="btnJoinInfoRegButton" type="button"
							class="button purple large disabled">회원가입<!--회원가입-->
						</button>

				</div>
			</div>
			<!--// col -->
		</div>
		<!--// col-wrap -->
	</div>
<!--// footer -->
	</div>
  <!--// body-wrap -->

</body>

</body>

</html>