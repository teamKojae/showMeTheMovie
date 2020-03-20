<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
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
<script src="/js/ticketting.js"></script>
</head>
<body class="body-iframe">
	<div class="container">
		<c:import url="/resources/common/header.jsp"></c:import>
		<div class="inner-wrap"
			style="padding-top: 40px; padding-bottom: 100px;">
			<input type="hidden" id="playDe" name="playDe" value="2020.03.17">
			<input type="hidden" id="crtDe" name="crtDe" value="2020.03.17">

			<!-- quick-reserve -->
			<div class="quick-reserve">
				<div class="tit-util">
					<h2 class="tit">빠른예매</h2>

					<div id="btnLangChg" class="right btn-ticket" style="display: none">
						<button type="button" class="button gray-line"
							onclick="parent.setLangChg()">English</button>
					</div>
				</div>

				<!-- cti 일때만 출력 -->
				<div class="cti-area" style="display: none">
					<p>이름</p>
					<input maxlength="20" name="riaName" type="text" title="이름 출력"
						class="input-text a-c w120px" placeholder="이름" value="">

					<p>생년월일</p>
					<input maxlength="8" name="riaBirthday" type="text" title="생년월일 출력"
						class="input-text a-c w150px" placeholder="6자리 또는 8자리" value="">

					<p>휴대폰번호</p>
					<input maxlength="11" name="riaMobileNo" type="text"
						title="휴대폰번호 출력" class="input-text a-c w150px"
						placeholder="- 없이 입력" value="">

					<p>회원</p>
					<input name="riaMemberYn" type="text" title="회원여부 출력"
						class="input-text a-c w100px" value="" readyonly="readyonly">


					<button type="button" class="button gray ml10" login-at="N"></button>

				</div>

				<!-- mege-quick-reserve-inculde : 다른 페이지에서 iframe 으로 설정될 영역 -->
				<div class="mege-quick-reserve-inculde">

					<!-- time-schedule -->
					<div class="time-schedule quick">
						<div class="wrap">

							<!-- 이전날짜 -->
							<button type="button" title="이전 날짜 보기" class="btn-pre"
								disabled="true">
								<i class="iconset ico-cld-pre"></i> <em>이전</em>
							</button>
							<!--// 이전날짜 -->

							<div class="date-list">
								<!-- 년도, 월 표시 -->
								<div class="year-area">
									<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.03</div>
									<div class="year" style="left: 450px; z-index: 1; opacity: 0;"></div>
								</div>


								<div class="date-area" id="formDeList">
									<div class="wrap"
										style="position: relative; width: 2100px; border: none; left: -70px;">
										<button class="disabled" type="button" date-data="2020.03.16"
											month="2" tabindex="-1">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">16<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">월</span><span
												class="day-en" style="pointer-events: none; display: none">Mon</span>
										</button>
										<button class="on" type="button" date-data="2020.03.17"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">17<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">오늘</span><span
												class="day-en" style="pointer-events: none; display: none">Tue</span>
										</button>
										<button class="" type="button" date-data="2020.03.18"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">18<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">내일</span><span
												class="day-en" style="pointer-events: none; display: none">Wed</span>
										</button>
										<button class="" type="button" date-data="2020.03.19"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">19<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">목</span><span
												class="day-en" style="pointer-events: none; display: none">Thu</span>
										</button>
										<button class="" type="button" date-data="2020.03.20"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">20<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">금</span><span
												class="day-en" style="pointer-events: none; display: none">Fri</span>
										</button>
										<button class="sat" type="button" date-data="2020.03.21"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">21<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">토</span><span
												class="day-en" style="pointer-events: none; display: none">Sat</span>
										</button>
										<button class="holi" type="button" date-data="2020.03.22"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">22<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">일</span><span
												class="day-en" style="pointer-events: none; display: none">Sun</span>
										</button>
										<button class="" type="button" date-data="2020.03.23"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">23<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">월</span><span
												class="day-en" style="pointer-events: none; display: none">Mon</span>
										</button>
										<button class="" type="button" date-data="2020.03.24"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">24<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">화</span><span
												class="day-en" style="pointer-events: none; display: none">Tue</span>
										</button>
										<button class="" type="button" date-data="2020.03.25"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">25<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">수</span><span
												class="day-en" style="pointer-events: none; display: none">Wed</span>
										</button>
										<button class="disabled" type="button" date-data="2020.03.26"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">26<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">목</span><span
												class="day-en" style="pointer-events: none; display: none">Thu</span>
										</button>
										<button class="" type="button" date-data="2020.03.27"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">27<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">금</span><span
												class="day-en" style="pointer-events: none; display: none">Fri</span>
										</button>
										<button class="sat" type="button" date-data="2020.03.28"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">28<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">토</span><span
												class="day-en" style="pointer-events: none; display: none">Sat</span>
										</button>
										<button class="holi" type="button" date-data="2020.03.29"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">29<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">일</span><span
												class="day-en" style="pointer-events: none; display: none">Sun</span>
										</button>
										<button class="disabled" type="button" date-data="2020.03.30"
											month="2">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">30<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">월</span><span
												class="day-en" style="pointer-events: none; display: none">Mon</span>
										</button>
										<button class="" type="button" date-data="2020.03.31"
											month="2" tabindex="-1">
											<span class="ir">2020년 3월</span><em
												style="pointer-events: none;">31<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">화</span><span
												class="day-en" style="pointer-events: none; display: none">Tue</span>
										</button>
									</div>
								</div>
							</div>

							<!-- 다음날짜 -->
							<button type="button" title="다음 날짜 보기" class="btn-next">
								<i class="iconset ico-cld-next"></i> <em>다음</em>
							</button>
							<!--// 다음날짜 -->

							<!-- 달력보기 -->
							<div class="bg-line">
								<input type="hidden" id="datePicker" value="2020.03.17"
									class="hasDatepicker">
								<button type="button" id="calendar"
									onclick="$('#datePicker').datepicker('show')"
									class="btn-calendar-large" title="달력보기">달력보기</button>

							</div>
							<!--// 달력보기 -->
						</div>
					</div>
					<!--// time-schedule -->

					<!-- quick-reserve-area -->
					<div class="quick-reserve-area">

						<!-- movie-choice : 영화 선택  -->
						<div class="movie-choice">
							<p class="tit">영화</p>

							<!-- list-area -->
							<div class="list-area">

								<!-- all : 전체 -->
								<div class="all-list">
									<button type="button" class="btn-tab on" id="movieAll">전체</button>
									<div class="list">
									<input type="hidden" value="${movie.movieName}" id="ticketMovieName">
										<div class="scroll m-scroll mCustomScrollbar _mCS_1"
											id="movieList">
											<div id="mCSB_1"
												class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
												style="max-height: none;" tabindex="0">
												<div id="mCSB_1_container" class="mCSB_container"
													style="position: relative; left: 0px;"
													dir="ltr">
													<ul>
														<li><button type="button" class="btn">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">다크 워터스</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="시원찮은 그녀를 위한 육성방법 피날레" movie-no="20000400"
																img-path="/SharedImg/2020/02/07/jO2LnVNFJxLzAL62WxHjDUBKbtPcV8ET_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">시원찮은 그녀를 위한 육성방법 피날레</span>
															</button></li>
														<li><button type="button" class="btn" movie-nm="1917"
																movie-no="01685000"
																img-path="/SharedImg/2020/02/21/IyeZJvAzV3QgEoW4F7HzdS97zfLYfcni_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="Y">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">1917</span>
															</button></li>
																<li><button type="button" class="btn" movie-nm="레토"
																movie-no="01492400"
																img-path="/SharedImg/asis/system/mop/poster/2018/FB/2BAA70-3391-4FB0-A22C-F4476AA2BADB.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">Dark Waters</span>
															</button></li>
														<li><button type="button" class="btn" movie-nm="레토"
																movie-no="01492400"
																img-path="/SharedImg/asis/system/mop/poster/2018/FB/2BAA70-3391-4FB0-A22C-F4476AA2BADB.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">레토</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="인비저블맨" movie-no="01694800"
																img-path="/SharedImg/2020/02/25/cH7qHYtiXhvrIwZVNraUkjfGPPUj4M5W_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="Y">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">인비저블맨</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="바이올렛 에버가든 – 영원과 자동 수기 인형 -"
																movie-no="20006800"
																img-path="/SharedImg/2020/03/03/75uijLWJo1DGxC7zFNo0rZix01dXa3Ea_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-all">전체관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">바이올렛 에버가든 – 영원과 자동 수기 인형 -</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="스타 이즈 본" movie-no="01438700"
																img-path="/SharedImg/asis/system/mop/poster/2018/C6/013959-C07F-401A-AAC0-CA9A76DB48AE.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="Y">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">스타 이즈 본</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="작은 아씨들" movie-no="01680400"
																img-path="/SharedImg/asis/system/mop/poster/2020/73/C2E59B-7D34-4220-8D51-580299453B88.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-all">전체관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">작은 아씨들</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="[뮤지컬] 안나 카레니나" movie-no="20008100"
																img-path="/SharedImg/2020/03/13/lO50Lzt8jtvavM9Rjj3LrW5TeRHj6sPn_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">[뮤지컬] 안나 카레니나</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="찬실이는 복도 많지" movie-no="01695700"
																img-path="/SharedImg/2020/02/28/Mz9o5hkBM8JVixfUCyZY4NDnkIFTY4pk_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="Y">
																<span class="movie-grade small age-all">전체관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">찬실이는 복도 많지</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="그랜드 부다페스트 호텔" movie-no="01447500"
																img-path="/SharedImg/asis/system/mop/poster/2018/2A/D7FA43-5B42-46FB-982E-0BF2344AA0BA.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">그랜드 부다페스트 호텔</span>
															</button></li>
														<li><button type="button" class="btn" movie-nm="파바로티"
																movie-no="01671300"
																img-path="/SharedImg/asis/system/mop/poster/2019/71/2F8D96-22A7-40E9-8024-F0F887E7506A.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">파바로티</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="하이큐!! 땅 VS 하늘" movie-no="01680800"
																img-path="/SharedImg/asis/system/mop/poster/2020/E9/D8512A-EDC9-41E1-868E-2C5262B5BF83.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-all">전체관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">하이큐!! 땅 VS 하늘</span>
															</button></li>
													</ul>
												</div>
												<div id="mCSB_1_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical"
													style="display: block;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 30px; display: block; max-height: 310px; top: 48px; height: 272px;">
															<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--// all : 전체 -->

								<!-- other-list  : 큐레이션 -->
								<div class="other-list">
									<button type="button" class="btn-tab" id="movieCrtn">TEMP</button>
									<div class="list">
										<div
											class="scroll m-scroll mCustomScrollbar _mCS_2 mCS_no_scrollbar"
											id="crtnMovieList">
											<div id="mCSB_2"
												class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
												style="max-height: none;" tabindex="0">
												<div id="mCSB_2_container"
													class="mCSB_container mCS_no_scrollbar_y"
													style="position: relative; top: 0; left: 0;" dir="ltr">
													<ul>
														<li><button type="button" class="btn"
																movie-nm="[뮤지컬] 안나 카레니나" movie-no="20008100"
																img-path="/SharedImg/2020/03/13/lO50Lzt8jtvavM9Rjj3LrW5TeRHj6sPn_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">[뮤지컬] 안나 카레니나</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="찬실이는 복도 많지" movie-no="01695700"
																img-path="/SharedImg/2020/02/28/Mz9o5hkBM8JVixfUCyZY4NDnkIFTY4pk_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="Y">
																<span class="movie-grade small age-all">전체관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">찬실이는 복도 많지</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="[오페라] 투란도트 @ The Met" movie-no="01693100"
																img-path="/SharedImg/asis/system/mop/poster/2020/88/3AE4B6-4E71-4828-B553-2A48ECC8B3EE.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">[오페라] 투란도트 @ The Met</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="[유니텔 앙코르] 오르페오와 에우리디체" movie-no="20004500"
																img-path="/SharedImg/2020/02/18/ePaV0pMZEmSTm0aaLbB40MUx9BWZP9Iw_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-all">전체관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">[유니텔 앙코르] 오르페오와 에우리디체</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="[오페라] 리골레토" movie-no="20000100"
																img-path="/SharedImg/2020/02/18/JR4a3oWNNricpgDfDeGdrZP8bY2DZkLT_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">[오페라] 리골레토</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="작가 미상" movie-no="01694300"
																img-path="/SharedImg/2020/02/10/vZBqbvO5prnUcTnNa45VtY0nStlT2zBw_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-19">청소년관람불가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">작가 미상</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="조조 래빗" movie-no="01687800"
																img-path="/SharedImg/2020/02/18/4iTesYoC8NXnMzWQWZjs0jt9a2xvhMBo_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">조조 래빗</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="파라다이스 힐스" movie-no="20005500"
																img-path="/SharedImg/2020/02/28/1UawwDaQy3wvv0Q9whlWS4aMtgRrgA7F_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">파라다이스 힐스</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="용길이네 곱창집" movie-no="20006900"
																img-path="/SharedImg/2020/03/03/TsBP4S9rfBSHhTcRwks6RZCt4S2hPl67_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="Y">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">용길이네 곱창집</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="[오페라] 마농 @ The Met" movie-no="20007900"
																img-path="/SharedImg/2020/03/12/yZRChDE2ZGDqoLxVrhPf9J21CgwUAGhr_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">[오페라] 마농 @ The Met</span>
															</button></li>
														<li><button type="button" class="btn" movie-nm="샤인"
																movie-no="01694000"
																img-path="/SharedImg/2020/02/10/SBuyrEnlyuNVVNPAecxkzdENpTVEGhOZ_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">샤인</span>
															</button></li>
														<li><button type="button" class="btn" movie-nm="스킨"
																movie-no="20007500"
																img-path="/SharedImg/2020/03/10/7CZPuvQKvzfqbzc6iuOlNRrOjVdpzC8L_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-19">청소년관람불가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">스킨</span>
															</button></li>
														<li><button type="button" class="btn" movie-nm="빈폴"
																movie-no="01693900"
																img-path="/SharedImg/2020/02/10/4g6tizvzxksWGGyQ5WbqzADrFxG0p0zR_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">빈폴</span>
															</button></li>
														<li><button type="button" class="btn" movie-nm="비행"
																movie-no="20005600"
																img-path="/SharedImg/2020/02/25/VLrXJa5MCtWXQyBlLS3PPLaL8BLUxSj3_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">비행</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="기억의 전쟁" movie-no="01694500"
																img-path="/SharedImg/2020/02/18/tqnd5A4yQ8RlHCu2O8VUsPw62C48tzWk_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">기억의 전쟁</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="집에 돌아오면, 언제나 아내가 죽은 척을 하고 있다"
																movie-no="01694200"
																img-path="/SharedImg/asis/system/mop/poster/2020/33/155B39-BB58-4DB4-A25E-E37255D3224E.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">집에 돌아오면, 언제나 아내가 죽은 척을 하고 있다</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="고흐, 영원의 문에서" movie-no="01663500"
																img-path="/SharedImg/asis/system/mop/poster/2019/9C/687967-1DC4-4DE4-802D-B7DB43302FFC.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">고흐, 영원의 문에서</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="피아니스트의 전설" movie-no="01671900"
																img-path="/SharedImg/asis/system/mop/poster/2019/DF/75D37E-31D8-4EDA-8100-1F0E45CEC07B.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-15">15세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">피아니스트의 전설</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="산티아고의 흰 지팡이" movie-no="20008000"
																img-path="/SharedImg/2020/03/12/d28Q5dbZKzvCRd1eb4DJErA2Cy6FKcQU_150.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-all">전체관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">산티아고의 흰 지팡이</span>
															</button></li>
														<li><button type="button" class="btn"
																movie-nm="카잔자키스" movie-no="01689700"
																img-path="/SharedImg/asis/system/mop/poster/2020/80/99C961-C41B-4CB3-8E40-77DAA7FE306A.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">카잔자키스</span>
															</button></li>
														<li><button type="button" class="btn" movie-nm="파바로티"
																movie-no="01671300"
																img-path="/SharedImg/asis/system/mop/poster/2019/71/2F8D96-22A7-40E9-8024-F0F887E7506A.small.jpg"
																movie-popup-at="N" movie-popup-no="0" form-at="N">
																<span class="movie-grade small age-12">12세이상관람가</span><i
																	class="iconset ico-heart-small">보고싶어 설정안함</i><span
																	class="txt">파바로티</span>
															</button></li>
													</ul>
												</div>
												<div id="mCSB_2_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 30px; display: none; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--// other-list  : 큐레이션 -->
							</div>
							<!--// list-area -->

							<!-- view-area -->

							<!--// view-area -->
						</div>
						<!--// movie-choice : 영화 선택  -->

						<!-- theater-choice : 극장 선택  -->
						<div class="theater-choice">
							<div class="tit-area">
								<p class="tit">극장</p>
							</div>

							<!-- list-area -->
							<div class="list-area" id="brchTab">

								<!-- all-list : 전체 -->
								<div class="all-list">
									<button type="button" class="btn-tab on">전체</button>
									<div class="list">
										<div class="scroll" id="brchList">
											<ul>
												<li><button type="button" class="btn" id="10">
														<span calss="txt">서울(20)</span>
													</button>
													<%--  실제 구현할때 style 빼세요 --%>
													<div class="depth" style="display:flex; " >
														<div
															class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4 mCS_no_scrollbar">
															<div id="mCSB_4"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_4_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		

																	</ul>
																</div>
																<div id="mCSB_4_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_4_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="30">
														<span calss="txt">경기(25)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cd30 mCustomScrollbar _mCS_5 mCS_no_scrollbar">
															<div id="mCSB_5"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_5_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="4121"
																				brch-nm="고양스타필드" brch-eng-nm="Goyang Starfield"
																				form-at="N" area-cd="30" area-cd-nm="경기"
																				spclb-yn="N" brch-bokd-unable-at="N"
																				brch-popup-at="Y" brch-popup-no="976">고양스타필드</button></li>

																	</ul>
																</div>
																<div id="mCSB_5_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_5_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_5_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="35">
														<span calss="txt">인천(6)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cd35 mCustomScrollbar _mCS_6 mCS_no_scrollbar">
															<div id="mCSB_6"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_6_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="4041"
																				brch-nm="검단" brch-eng-nm="Geomdan" form-at="N"
																				area-cd="35" area-cd-nm="인천" spclb-yn="N"
																				brch-bokd-unable-at="N" brch-popup-at="Y"
																				brch-popup-no="945">검단</button></li>

																	</ul>
																</div>
																<div id="mCSB_6_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_6_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_6_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="45">
														<span calss="txt">대전/충청/세종(13)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cd45 mCustomScrollbar _mCS_7 mCS_no_scrollbar">
															<div id="mCSB_7"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_7_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="3141"
																				brch-nm="공주" brch-eng-nm="Gongju" form-at="N"
																				area-cd="45" area-cd-nm="대전/충청/세종" spclb-yn="N"
																				brch-bokd-unable-at="N" brch-popup-at="N"
																				brch-popup-no="0">공주</button></li>

																	</ul>
																</div>
																<div id="mCSB_7_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_7_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_7_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="55">
														<span calss="txt">부산/대구/경상(24)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cd55 mCustomScrollbar _mCS_8 mCS_no_scrollbar">
															<div id="mCSB_8"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_8_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="6701"
																				brch-nm="거창" brch-eng-nm="Geochang" form-at="N"
																				area-cd="55" area-cd-nm="부산/대구/경상" spclb-yn="N"
																				brch-bokd-unable-at="N" brch-popup-at="N"
																				brch-popup-no="0">거창</button></li>
																	</ul>
																</div>
																<div id="mCSB_8_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_8_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_8_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="65">
														<span calss="txt">광주/전라(9)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cd65 mCustomScrollbar _mCS_9 mCS_no_scrollbar">
															<div id="mCSB_9"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_9_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="5021"
																				brch-nm="광주상무" brch-eng-nm="Gwangju Sangmu"
																				form-at="Y" area-cd="65" area-cd-nm="광주/전라"
																				spclb-yn="N" brch-bokd-unable-at="N"
																				brch-popup-at="Y" brch-popup-no="970">광주상무</button></li>

																	</ul>
																</div>
																<div id="mCSB_9_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_9_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_9_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="70">
														<span calss="txt">강원(4)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cd70 mCustomScrollbar _mCS_10 mCS_no_scrollbar">
															<div id="mCSB_10"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_10_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="2001"
																				brch-nm="남춘천" brch-eng-nm="Namchuncheon" form-at="N"
																				area-cd="70" area-cd-nm="강원" spclb-yn="N"
																				brch-bokd-unable-at="N" brch-popup-at="N"
																				brch-popup-no="0">남춘천</button></li>

																	</ul>
																</div>
																<div id="mCSB_10_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_10_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_10_dragger_vertical"
																			class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="80">
														<span calss="txt">제주(1)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cd80 mCustomScrollbar _mCS_11 mCS_no_scrollbar">
															<div id="mCSB_11"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_11_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="6901"
																				brch-nm="제주" brch-eng-nm="Jeju" form-at="Y"
																				area-cd="80" area-cd-nm="제주" spclb-yn="N"
																				brch-bokd-unable-at="N" brch-popup-at="N"
																				brch-popup-no="0">제주</button></li>
																	</ul>
																</div>
																<div id="mCSB_11_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_11_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_11_dragger_vertical"
																			class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</div>
								<!--// all-list : 전체 -->

								<!-- other-list : 특별관 -->
								<div class="other-list">
									<button type="button" class="btn-tab">TEMP</button>
									<!-- list -->
									<div class="list" id="specialBrchTab">
										<div class="scroll" id="specialBrchList">
											<ul>
												<li><button type="button" class="btn" id="MX">
														<span calss="txt">MX(9)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cdMX mCustomScrollbar _mCS_12 mCS_no_scrollbar">
															<div id="mCSB_12"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_12_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="4121"
																				brch-nm="고양스타필드" brch-eng-nm="Goyang Starfield"
																				form-at="N" area-cd="MX" area-cd-nm="MX"
																				spclb-yn="Y" ori-area-cd="30"
																				brch-bokd-unable-at="N" brch-popup-at="Y"
																				brch-popup-no="976">고양스타필드</button></li>

																	</ul>
																</div>
																<div id="mCSB_12_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_12_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_12_dragger_vertical"
																			class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="CFT">
														<span calss="txt">COMFORT(27)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cdCFT mCustomScrollbar _mCS_13 mCS_no_scrollbar">
															<div id="mCSB_13"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_13_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="4041"
																				brch-nm="검단" brch-eng-nm="Geomdan" form-at="N"
																				area-cd="CFT" area-cd-nm="COMFORT" spclb-yn="Y"
																				ori-area-cd="35" brch-bokd-unable-at="N"
																				brch-popup-at="Y" brch-popup-no="945">검단</button></li>

																	</ul>
																</div>
																<div id="mCSB_13_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_13_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_13_dragger_vertical"
																			class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="TBQ">
														<span calss="txt">THE BOUTIQUE(6)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cdTBQ mCustomScrollbar _mCS_14 mCS_no_scrollbar">
															<div id="mCSB_14"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_14_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="4631"
																				brch-nm="분당" brch-eng-nm="Bundang" form-at="N"
																				area-cd="TBQ" area-cd-nm="THE BOUTIQUE" spclb-yn="Y"
																				ori-area-cd="30" brch-bokd-unable-at="N"
																				brch-popup-at="Y" brch-popup-no="958">분당</button></li>

																	</ul>
																</div>
																<div id="mCSB_14_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_14_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_14_dragger_vertical"
																			class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="MKB">
														<span calss="txt">MEGABOX KIDS(4)</span>
													</button>
													<div class="depth">
														<div
															class="detail-list m-scroll area-cdMKB mCustomScrollbar _mCS_15 mCS_no_scrollbar">
															<div id="mCSB_15"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_15_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="6312"
																				brch-nm="마산" brch-eng-nm="Masan" form-at="N"
																				area-cd="MKB" area-cd-nm="MEGABOX KIDS" spclb-yn="Y"
																				ori-area-cd="55" brch-bokd-unable-at="N"
																				brch-popup-at="Y" brch-popup-no="986">마산</button></li>

																	</ul>
																</div>
																<div id="mCSB_15_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_15_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_15_dragger_vertical"
																			class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
												<li><button type="button" class="btn" id="TFC">
														<span calss="txt">THE FIRST CLUB(1)</span>
													</button>
																
													<div class="depth" >
														<div
															class="detail-list m-scroll area-cdTFC mCustomScrollbar _mCS_16 mCS_no_scrollbar">
															<div id="mCSB_16"
																class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																style="max-height: none;" tabindex="0">
																<div id="mCSB_16_container"
																	class="mCSB_container mCS_no_scrollbar_y"
																	style="position: relative; top: 0; left: 0;" dir="ltr">
																	<ul>
																		<li><button id="btn" type="button" brch-no="4112"
																				brch-nm="킨텍스" brch-eng-nm="KINTEX" form-at="N"
																				area-cd="TFC" area-cd-nm="THE FIRST CLUB"
																				spclb-yn="Y" ori-area-cd="30"
																				brch-bokd-unable-at="N" brch-popup-at="Y"
																				brch-popup-no="981">킨텍스</button></li>
																	</ul>
																</div>
																<div id="mCSB_16_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_16_scrollbar mCS-light mCSB_scrollTools_vertical">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_16_dragger_vertical"
																			class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; display: none; top: 0px;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
									<!--// list -->
								</div>
								<!--// other-list : 특별관 -->
							</div>
							<!--// list-area -->

							<!-- view-area -->

							<!--// view-area -->


						</div>
						<!--// theater-choice : 영화관 선택  -->

						<!-- time-choice : 상영시간표 선택 -->
						<div class="time-choice">
							<div class="tit-area">
								<p class="tit">시간</p>


							</div>

							<!-- hour-schedule : 시간 선택  : 00~30 시-->

							<!--// hour-schedule : 시간 선택  : 00~30 시-->

							<!-- movie-schedule-area : 시간표 출력 영역-->
							<div class="movie-schedule-area">




								<!-- 영화, 영화관 선택 했을때 -->
								<div class="result">
									<div
										class="scroll m-scroll mCustomScrollbar _mCS_21 mCS_no_scrollbar"
										id="playScheduleList" >
										<div id="mCSB_21"
											class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_21_container"
												class="mCSB_container mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<ul>
													
												</ul>
											</div>
											
																			<!-- 영화, 영화관 선택 안했을때 -->
								<!---->
								<div class="no-result" id="playScheduleNonList" style="display: block;">
									<i class="iconset ico-movie-time"></i>

									<p class="txt">
										영화와 극장을 선택하시면<br> 상영시간표를 비교하여 볼 수 있습니다.
									</p>
								</div>
											
											
											<div id="mCSB_21_scrollbar_vertical"
												class="mCSB_scrollTools mCSB_21_scrollbar mCS-light mCSB_scrollTools_vertical">
												<div class="mCSB_draggerContainer">
													<div id="mCSB_21_dragger_vertical" class="mCSB_dragger"
														style="position: absolute; min-height: 30px; display: none; height: 554px; max-height: 420px; top: 0px;">
														<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
													</div>
													<div class="mCSB_draggerRail"></div>
												</div>
											</div>
										</div>
									</div>

								</div>

							</div>
						</div>
						<!--// movie-schedule-area : 시간표 출력 영역-->

					</div>
					<!--// time-choice : 상영시간표 선택 -->
				</div>
				<!--// quick-reserve-area -->
			</div>
			<!--// mege-quick-reserve-inculde : 다른 페이지에서 iframe 으로 설정될 영역 -->

		</div>
		<!--// quick-reserve -->

		<c:import url="/resources/common/footer.jsp"></c:import>
	</div>
	
</body>
</html>