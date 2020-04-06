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
									<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.04</div>
									<div class="year" style="left: 450px; z-index: 1; opacity: 0;"></div>
								</div>


								<div class="date-area" id="formDeList">
									<div class="wrap"
										style="position: relative; width: 2100px; border: none; left: -70px;">
										<button class="disabled" type="button" value="2020.04.05"
											month="4" tabindex="-1">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">05<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">일</span><span
												class="day-en" style="pointer-events: none; display: none">Sun</span>
										</button>
										<button class="on" type="button" value="2020.04.06">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">06<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">오늘</span><span
												class="day-en" style="pointer-events: none; display: none">Mon</span>
										</button>
										<button class="" type="button" value="2020.04.07"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">07<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">내일</span><span
												class="day-en" style="pointer-events: none; display: none">Tue</span>
										</button>
										<button class="" type="button" value="2020.04.08"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">08<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">수</span><span
												class="day-en" style="pointer-events: none; display: none">Wen</span>
										</button>
										<button class="" type="button" value="2020.04.09"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">09<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">목</span><span
												class="day-en" style="pointer-events: none; display: none">Thu</span>
										</button>
										<button class="sat" type="button" value="2020.04.10"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">10<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">금</span><span
												class="day-en" style="pointer-events: none; display: none">Fri</span>
										</button>
										<button class="holi" type="button" value="2020.04.11"
											month="2">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">11<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">토</span><span
												class="day-en" style="pointer-events: none; display: none">Sat</span>
										</button>
										<button class="" type="button" value="2020.04.12"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">12<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">일</span><span
												class="day-en" style="pointer-events: none; display: none">Sun</span>
										</button>
										<button class="" type="button" value="2020.04.13"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">13<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">월</span><span
												class="day-en" style="pointer-events: none; display: none">Mon</span>
										</button>
										<button class="" type="button" value="2020.04.14"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">14<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">화</span><span
												class="day-en" style="pointer-events: none; display: none">Tue</span>
										</button>
										<button class="disabled" type="button" value="2020.04.15"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">15<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">수</span><span
												class="day-en" style="pointer-events: none; display: none">Wen</span>
										</button>
										<button class="" type="button" value="2020.04.16"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">16<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">목</span><span
												class="day-en" style="pointer-events: none; display: none">Thu</span>
										</button>
										<button class="sat" type="button" value="2020.04.17"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">17<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">금</span><span
												class="day-en" style="pointer-events: none; display: none">Fri</span>
										</button>
										<button class="holi" type="button" value="2020.04.18"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">18<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">토</span><span
												class="day-en" style="pointer-events: none; display: none">Sat</span>
										</button>
										<button class="disabled" type="button" value="2020.04.19"
											month="4">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">19<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">일</span><span
												class="day-en" style="pointer-events: none; display: none">Sun</span>
										</button>
										<button class="" type="button" value="2020.04.20"
											month="4" tabindex="-1">
											<span class="ir">2020년 4월</span><em
												style="pointer-events: none;">20<span
												style="pointer-events: none;" class="ir">일</span></em><span
												class="day-kr"
												style="pointer-events: none; display: inline-block">월</span><span
												class="day-en" style="pointer-events: none; display: none">Mon</span>
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
														<c:forEach items="${movies.movieList }" var="movieList" varStatus="status">
																<li>
																	<button type="button" class="btn" value="${movieList.movieName }" disabled>
																		<i
																			class="iconset ico-heart-small">보고싶어 설정안함</i>
																			<span class="movie-grade small age-12">12세이상관람가</span>
																			<span
																			class="txt">${movieList.movieName }</span>
																	</button>
																</li>
														</c:forEach>
														
														<c:forEach items="${movies.movie }" var="movie">
															<input type="hidden" value="${movie.movieName }" class="regisMovie" name="regisMovie">
														</c:forEach>
														
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<!--// 영화탭 끝  -->
								<div class="other-list">
									<button type="button" class="btn-tab" id="movieCrtn">TEMP</button>
								</div>

							</div>
						</div>
						<!--// 영화선택 끝  -->
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
												<li><button type="button" class="btn" id="10" value="강북구">
														<span calss="txt">강북구(20)</span>
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
														<span calss="txt">노원구(25)</span>
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
														<span calss="txt">동대문구(6)</span>
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
														<span calss="txt">성동구(5)</span>
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
														<span calss="txt">강남구(23)</span>
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
														<span calss="txt">서초구(17)</span>
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
														<span calss="txt">동작구(12)</span>
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
														<span calss="txt">관악구(10)</span>
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
	<script src="/js/ticketting.js"></script>
</body>
</html>