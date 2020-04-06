<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="/css/component.css" rel="stylesheet">
<link href="/css/megabox.min.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"> -->
</head>
<body>
	<div class="container">
		<c:import url="/resources/common/header.jsp"></c:import>
		<div class="inner-wrap"
			style="padding-top: 40px; padding-bottom: 100px;">
			<div class="quick-reserve">
				<h2 class="tit">빠른예매</h2>
				<div class="topLevel">
					<div class="seat-select-section">
						<div class="seat-section">
							<div class="tit-util">
							<!-- 최대 8명까지만 선택 .. 그리고 화살표로 내려서 8까지만 나오게 하고 싶다. -->
								<h3 class="tit small">
								관람 인원 선택 
								<select name="numberOf" size="1">
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
					
					 </select>
								<% String n1= request.getParameter("numberOf");
								int fixedNum = 10000;
								
								int sum = 0;
								
								if(n1==null){
									n1="0";
								}
								int num1 = Integer.parseInt(n1);
								sum = num1*fixedNum;
								
								%>
								</h3>
								
							</div>
							<div class="seat-layout">
								<div class="plan plan--shown">
									<div class="rows rows--mini">
										<div class="row">

<script type="text/javascript">
${session.user}
</script>
<!-- 											<div class="row__seat A1">A1</div>
											<div class="row__seat A2">A2</div>
											<div class="row__seat A3">A3</div>
											<div class="row__seat A4">A4</div>
											<div class="row__seat A5">A5</div>
											<div class="row__seat A6">A6</div>
											<div class="row__seat A7">A7</div>
											<div class="row__seat A8">A8</div>
											<div class="row__seat A9">A9</div>
											<div class="row__seat" id="A10" ></div>
											<div class="row__seat"></div>
											<div class="row__seat"></div>
											<div class="row__seat A13"></div>
											<div class="row__seat A14"></div>
											<div class="row__seat A15"></div>
											<div class="row__seat A16"></div>
											<div class="row__seat A17"></div>
											<div class="row__seat A18"></div> -->
											
											
											<c:forEach items="${seatList }" var="seat" varStatus="status" >
												
												<div class="row__seat">
												<c:if test=""></c:if>
											
												${seat.seatName}&nbsp;
											</div>
											</c:forEach>
										
										</div>
										
										
										<div class="row">
											<div class="row__seat B1"></div>
											<div class="row__seat B2"></div>
											<div class="row__seat B3"></div>
											<div class="row__seat B4"></div>
											<div class="row__seat B5"></div>
											<div class="row__seat B6"></div>
											<div class="row__seat B7"></div>
											<div class="row__seat B8"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat B11"></div>
											<div class="row__seat B12"></div>
											<div class="row__seat B13"></div>
											<div class="row__seat B14"></div>
											<div class="row__seat B15"></div>
											<div class="row__seat B16"></div>
											<div class="row__seat B17"></div>
											<div class="row__seat B18"></div>
										</div>
										<div class="row">
											<div class="row__seat C1"></div>
											<div class="row__seat C2"></div>
											<div class="row__seat C3"></div>
											<div class="row__seat C4"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat C8"></div>
											<div class="row__seat C9"></div>
											<div class="row__seat C10"></div>
											<div class="row__seat C11"></div>
											<div class="row__seat C12"></div>
											<div class="row__seat C13"></div>
											<div class="row__seat C14"></div>
											<div class="row__seat C15"></div>
											<div class="row__seat C16"></div>
											<div class="row__seat C17"></div>
											<div class="row__seat C18"></div>
										</div>
										<div class="row">
											<div class="row__seat D1"></div>
											<div class="row__seat D2"></div>
											<div class="row__seat D3"></div>
											<div class="row__seat D4"></div>
											<div class="row__seat D5"></div>
											<div class="row__seat D6"></div>
											<div class="row__seat D7"></div>
											<div class="row__seat D8"></div>
											<div class="row__seat D9"></div>
											<div class="row__seat D10"></div>
											<div class="row__seat D11"></div>
											<div class="row__seat D12"></div>
											<div class="row__seat D13"></div>
											<div class="row__seat D14"></div>
											<div class="row__seat D15"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
										</div>
										<div class="row">
											<div class="row__seat E1"></div>
											<div class="row__seat E2"></div>
											<div class="row__seat E3"></div>
											<div class="row__seat E4"></div>
											<div class="row__seat E5"></div>
											<div class="row__seat E6"></div>
											<div class="row__seat E7"></div>
											<div class="row__seat E8"></div>
											<div class="row__seat E9"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat E12"></div>
											<div class="row__seat E13"></div>
											<div class="row__seat E14"></div>
											<div class="row__seat E15"></div>
											<div class="row__seat E16"></div>
											<div class="row__seat E17"></div>
											<div class="row__seat E18"></div>
										</div>
										<div class="row">
											<div class="row__seat F1"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat F3"></div>
											<div class="row__seat F4"></div>
											<div class="row__seat F5"></div>
											<div class="row__seat F6"></div>
											<div class="row__seat F7"></div>
											<div class="row__seat F8"></div>
											<div class="row__seat F9"></div>
											<div class="row__seat F10"></div>
											<div class="row__seat F11"></div>
											<div class="row__seat F12"></div>
											<div class="row__seat F13"></div>
											<div class="row__seat F14"></div>
											<div class="row__seat F15"></div>
											<div class="row__seat F16"></div>
											<div class="row__seat F17"></div>
											<div class="row__seat F18"></div>
										</div>
										<div class="row">
											<div class="row__seat G1"></div>
											<div class="row__seat G2"></div>
											<div class="row__seat G3"></div>
											<div class="row__seat G4"></div>
											<div class="row__seat G5"></div>
											<div class="row__seat G6"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat G9"></div>
											<div class="row__seat G10"></div>
											<div class="row__seat G11"></div>
											<div class="row__seat G12"></div>
											<div class="row__seat G13"></div>
											<div class="row__seat G14"></div>
											<div class="row__seat G15"></div>
											<div class="row__seat G16"></div>
											<div class="row__seat G17"></div>
											<div class="row__seat G18"></div>
										</div>
										<div class="row">
											<div class="row__seat H1"></div>
											<div class="row__seat H2"></div>
											<div class="row__seat H3"></div>
											<div class="row__seat H4"></div>
											<div class="row__seat H5"></div>
											<div class="row__seat H6"></div>
											<div class="row__seat H7"></div>
											<div class="row__seat H8"></div>
											<div class="row__seat H9"></div>
											<div class="row__seat H10"></div>
											<div class="row__seat H11"></div>
											<div class="row__seat H12"></div>
											<div class="row__seat H13"></div>
											<div class="row__seat H14"></div>
											<div class="row__seat H15"></div>
											<div class="row__seat H16"></div>
											<div class="row__seat H17"></div>
											<div class="row__seat H18"></div>
										</div>
										<div class="row">
											<div class="row__seat I1"></div>
											<div class="row__seat I2"></div>
											<div class="row__seat I3"></div>
											<div class="row__seat I4"></div>
											<div class="row__seat I5"></div>
											<div class="row__seat I6"></div>
											<div class="row__seat I7"></div>
											<div class="row__seat I8"></div>
											<div class="row__seat I9"></div>
											<div class="row__seat I10"></div>
											<div class="row__seat I11"></div>
											<div class="row__seat I12"></div>
											<div class="row__seat I13"></div>
											<div class="row__seat I14"></div>
											<div class="row__seat I15"></div>
											<div class="row__seat I16"></div>
											<div class="row__seat I17"></div>
											<div class="row__seat I18"></div>
										</div>
										<div class="row">
											<div class="row__seat J1"></div>
											<div class="row__seat J2"></div>
											<div class="row__seat J3"></div>
											<div class="row__seat J4"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat J8"></div>
											<div class="row__seat J9"></div>
											<div class="row__seat J10"></div>
											<div class="row__seat J11"></div>
											<div class="row__seat J12"></div>
											<div class="row__seat J13"></div>
											<div class="row__seat J14"></div>
											<div class="row__seat J15"></div>
											<div class="row__seat J16"></div>
											<div class="row__seat J17"></div>
											<div class="row__seat J18"></div>
										</div>
										<div class="row">
											<div class="row__seat K1"></div>
											<div class="row__seat K2"></div>
											<div class="row__seat K3"></div>
											<div class="row__seat K4"></div>
											<div class="row__seat K5"></div>
											<div class="row__seat K6"></div>
											<div class="row__seat K7"></div>
											<div class="row__seat K8"></div>
											<div class="row__seat K9"></div>
											<div class="row__seat K10"></div>
											<div class="row__seat K11"></div>
											<div class="row__seat K12"></div>
											<div class="row__seat K13"></div>
											<div class="row__seat K14"></div>
											<div class="row__seat K15"></div>
											<div class="row__seat K16"></div>
											<div class="row__seat K17"></div>
											<div class="row__seat K18"></div>
										</div>
										<div class="row">
											<div class="row__seat L1"></div>
											<div class="row__seat L2"></div>
											<div class="row__seat L3"></div>
											<div class="row__seat L4"></div>
											<div class="row__seat L5"></div>
											<div class="row__seat L6"></div>
											<div class="row__seat L7"></div>
											<div class="row__seat L8"></div>
											<div class="row__seat L9"></div>
											<div class="row__seat L10"></div>
											<div class="row__seat L11"></div>
											<div class="row__seat L12"></div>
											<div class="row__seat L13"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat L17"></div>
											<div class="row__seat L18"></div>
										</div>
										<div class="row">
											<div class="row__seat M1"></div>
											<div class="row__seat M2"></div>
											<div class="row__seat M3"></div>
											<div class="row__seat M4"></div>
											<div class="row__seat M5"></div>
											<div class="row__seat M6"></div>
											<div class="row__seat M7"></div>
											<div class="row__seat  row__seat--selected"></div>
											<div class="row__seat M9"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat M14"></div>
											<div class="row__seat M15"></div>
											<div class="row__seat M16"></div>
											<div class="row__seat M17"></div>
											<div class="row__seat M18"></div>
										</div>
										<div class="row">
											<div class="row__seat N1"></div>
											<div class="row__seat N2"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat N5"></div>
											<div class="row__seat  row__seat--selected"></div>
											<div class="row__seat N7"></div>
											<div class="row__seat N8"></div>
											<div class="row__seat N9"></div>
											<div class="row__seat N10"></div>
											<div class="row__seat N11"></div>
											<div class="row__seat N12"></div>
											<div class="row__seat N13"></div>
											<div class="row__seat N14"></div>
											<div class="row__seat N15"></div>
											<div class="row__seat N16"></div>
											<div class="row__seat N17"></div>
											<div class="row__seat N18"></div>
										</div>
										<div class="row">
											<div class="row__seat O1"></div>
											<div class="row__seat O2"></div>
											<div class="row__seat O3"></div>
											<div class="row__seat O4"></div>
											<div class="row__seat O5"></div>
											<div class="row__seat O6"></div>
											<div class="row__seat O7"></div>
											<div class="row__seat O8"></div>
											<div class="row__seat O9"></div>
											<div class="row__seat O10"></div>
											<div class="row__seat O11"></div>
											<div class="row__seat O12"></div>
											<div class="row__seat O13"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat row__seat--reserved"></div>
											<div class="row__seat O16"></div>
											<div class="row__seat O17"></div>
											<div class="row__seat O18"></div>
										</div>
										<div class="row">
											<div class="row__seat P1"></div>
											<div class="row__seat P2"></div>
											<div class="row__seat P3"></div>
											<div class="row__seat P4"></div>
											<div class="row__seat P5"></div>
											<div class="row__seat P6"></div>
											<div class="row__seat P7"></div>
											<div class="row__seat P8"></div>
											<div class="row__seat P9"></div>
											<div class="row__seat P10"></div>
											<div class="row__seat P11"></div>
											<div class="row__seat P12"></div>
											<div class="row__seat P13"></div>
											<div class="row__seat P14"></div>
											<div class="row__seat P15"></div>
											<div class="row__seat P16"></div>
											<div class="row__seat P17"></div>
											<div class="row__seat P18"></div>
										</div>
										<div class="row">
											<div class="row__seat Q1"></div>
											<div class="row__seat Q2"></div>
											<div class="row__seat Q3"></div>
											<div class="row__seat Q4"></div>
											<div class="row__seat Q5"></div>
											<div class="row__seat Q6"></div>
											<div class="row__seat Q7"></div>
											<div class="row__seat Q8"></div>
											<div class="row__seat Q9"></div>
											<div class="row__seat Q10"></div>
											<div class="row__seat Q11"></div>
											<div class="row__seat Q12"></div>
											<div class="row__seat Q13"></div>
											<div class="row__seat  row__seat--selected"></div>
											<div class="row__seat Q15"></div>
											<div class="row__seat Q16"></div>
											<div class="row__seat Q17"></div>
											<div class="row__seat Q18"></div>
										</div>
										<div class="row">
											<div class="row__seat R1"></div>
											<div class="row__seat R2"></div>
											<div class="row__seat R3"></div>
											<div class="row__seat R4"></div>
											<div class="row__seat R5"></div>
											<div class="row__seat R6"></div>
											<div class="row__seat R7"></div>
											<div class="row__seat R8"></div>
											<div class="row__seat R9"></div>
											<div class="row__seat R10"></div>
											<div class="row__seat R11"></div>
											<div class="row__seat R12"></div>
											<div class="row__seat R13"></div>
											<div class="row__seat R14"></div>
											<div class="row__seat R15"></div>
											<div class="row__seat R16"></div>
											<div class="row__seat R17"></div>
											<div class="row__seat R18"></div>
										</div>
									</div>
									<!-- /rows -->
									<ul class="legend">
										<li class="legend__item legend__item--free">선택가능</li>
										<li class="legend__item legend__item--reserved">선택불가</li>
										<li class="legend__item legend__item--selected">선택된 좌석</li>
									</ul>
								</div>
							</div>
							
						</div>
						<form action="/kakaoPay" method="post" id="kakaoPay">
						<div class="seat-result">
							<div class="wrap">
								<div class="tit-area">
								<input type="hidden" name="movieName" value="${movieInfo.movie.movieName}">
								<input type="hidden" name="moviePrice" value="8000">
									<span class="movie-grade small age-all age-15">15세이상관람가</span>
									<p class="tit" name="movieName">${movieInfo.movie.movieName}</p>
									<p class="cate">2D(자막)</p>
								</div>
								<div class="info-area">
									<p class="theater">${movieInfo.branch.branchName }점</p>
									<p class="special">${movieInfo.theater.theaterName}</p> 
									<p class="date">
										 <span>${movieInfo.movieDate}</span><em></em>
										 <script>
										 	var date = new Date( ${movieInfo.movieDate} ).getDay();
										 	console.log(date);
										 	var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
										 	var getDay = week[date];
										 	$('.date').find('em').text('('+getDay+')');
										 </script>
										 
									</p>
									<div class="other-time">
										<button type="button" class="now">
											${movieInfo.movieStartTime}~${movieInfo.movieEndTime}<i class="arr"></i>
										</button>
										<ul class="other">
											<li><button type="button" choicnt="48"
													playschdlno="2003191372070" class="btn on ">
													${movieInfo.movieStartTime}~${movieInfo.movieEndTime}</button></li>
										</ul>
									</div>
									<p class="poster">
										<img src="/img/${movieInfo.movie.moviePoster}" alt="영화없오요">
									</p>
								</div>

								<div class="pay-area">
									<p class="count"></p>
									<div class="pay">
										<p class="tit">최종결제금액</p>
										<div class="money">
											<em name = "totalPrice"><%=sum %></em> <span>원</span>
										</div>
									</div>
								</div>
								<div class="btn-group">
									<a href="javaScript:void(0)" class="button" id="pagePrevious"
										title="이전">이전</a>
										<a href=""  class="button active" onclick="return false"
											id="pageNext" title="다음">다음</a>
											</div>
											<%-- <script>
											$('.button').on('click', function(event) {
											var str = ${user.userId}
											alert.log(str);
											  if(typeof str == "undefined" || str == null || str == ""){
													var confirm = confirm('로그인이 필요한 서비스입니다.');
													if(confirm){
														$(location).attr('href','/login');
													}else{
														return;
													}
												}else{
													alert('카카오페이 가욧');
													requestKakaoPay();
												}
											  
											})
											</script> --%>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/js/ticketting.js"></script>
</body>
</html>