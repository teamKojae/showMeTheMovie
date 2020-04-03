<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body>
	<div class="body-wrap">
		<div id="schdlContainer" class="container">
			<c:import url="/resources/common/header.jsp"></c:import>
			<div id="contents" class="location-fixed">
				<div class="inner-wrap">
					<div class="time-table-page">
						<div class="movie-choice-area">
							<div class="tab-left-area">
								<ul>
									<li class="on"><a href="#masterMovie"
										onclick="return false;" title="영화선택" class="btn"><i
											class="iconset ico-tab-movie"></i>&nbsp;영화선택</a></li>
									<li class=""><a href="#masterBrch" onclick="return false;"
										title="극장선택" class="btn"><i
											class="iconset ico-tab-theater"></i>&nbsp;극장선택</a></li>
									<li class=""><a href="#masterTheater"
										onclick="return false;" title="상영관 선택" class="btn"><i
											class="iconset ico-tab-special"> </i>&nbsp;상영관 선택</a></li>
								</ul>
							</div>

							<div class="ltab-layer-wrap">

								<div id="masterMovie" class="ltab-layer-cont has-img on">
									<a href="" class="ir"> 영화별 탭 화면 입니다.</a>
									<div class="wrap tab-area">
										<div class="tab-list-choice">
											<ul>
												<li><a href="#tab10" title="전체영화 선택" data-area-cd="10"
													class="btn on">전체영화</a></li>
											</ul>
										</div>
										<div class="list-section on">
											<div id="tab10" class="tab-layer-cont on">
												<a href="" class="ir"> 영화별 탭 화면 입니다.</a>
												<div class="scroll m-scroll mCustomScrollbar _mCS_2">
													<div id="mCSB_2"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside on"
														style="max-height: none;" tabindex="0">
														<div id="mCSB_2_container" class="mCSB_container on"
															style="position: relative; left: 0px;" dir="ltr">
															<ul class="list">
																<%-- 영화리스트 --%>
																<c:forEach var="movie" items="${data.movie}">
																	<li><button type="button" class="btn"
																			value="${movie.movieName }"
																			data-movie-no="${movie.movieCode }"
																			data-img-path="${movie.moviePoster}">${movie.movieName }</button></li>
																</c:forEach>
															</ul>
														</div>
														<div id="mCSB_2_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical"
															style="display: block;">
															<div class="mCSB_draggerContainer on">
																<div id="mCSB_2_dragger_vertical"
																	class="mCSB_dragger on"
																	style="position: absolute; min-height: 30px; display: block; height: 55px; max-height: 190px; top: 0px;">
																	<div class="mCSB_dragger_bar on"
																		style="line-height: 30px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="poster-section">
										<div class="table">
											<div class="td">
												<img class="poster" onerror="noImg(this, 'del')"
													src="/img/${data.movie[0].moviePoster }"
													alt="${data.movie[0].movieName }">
											</div>
										</div>
									</div>
								</div>

								<div id="masterBrch" class="ltab-layer-cont">
									<a href="" class="ir"> 극장별 탭 화면 입니다.</a>
									<div class="wrap tab-area">
										<div class="tab-list-choice">
											<ul>
											<%-- 지역명 --%>
												<c:forEach var="location" items="${data.location}"
													varStatus="status">
													<li><a
														href="/getBranchList?locationCode=${location.locationCode}"
														title=" ${location.locationName}지점 선택"
														data-area-cd="${location.locationCode}0" class=""
														onclick="return false">${location.locationName} (
															${location.countBranch } )</a></li>
												</c:forEach>
											</ul>
										</div>
										<div class="list-section">
										<%-- 지역별 브랜치명 --%>
											<c:forEach var="location" items="${data.location}">
												<div id="tab${location.locationCode}0"
													class="tab-layer-cont">
														<div class="scroll m-scroll">
															<ul class="list">
																<c:forEach var="branch" items="${data.branch}"
																	varStatus="status">
																	<c:if
																		test="${location.locationCode eq branch.location.locationCode }">
																		<li><button type="button" class="btn"
																				data-area-cd="${branch.location.locationCode}0"
																				data-brch-no="${branch.branchCode}">${branch.branchName }</button></li>
																	</c:if>
																</c:forEach>
															</ul>
															<div></div>
														</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>

								<div id="masterTheater" class="ltab-layer-cont">
									<a href="" class="ir"> 상영관별 탭 화면 입니다.</a>
									<div class="wrap tab-area">
									<%-- 브랜치명 --%>
										<div class="tab-list-choice">
											<ul>
												
											</ul>
										</div>
									<%-- 상영관명 --%> 
										<div class="list-section on">
											
											</div>


										</div>
									</div>
								</div>
								</div>
								</div>
							
								<%--  영화선택, 극장선택, 상영관 선택 끝 --%>
								<div class="box-alert" >
									<button type="button" class="managerButton" value="null">시간표보기</button>
								</div>
							<div class="timeTable">
								<h3 class="tit mt100 width1000">
									
								</h3>
								<h4 class="tit mt30" style="margin-bottom:20px;">
									<a href="" style="padding: 10px;">
										<span class="font-green"></span> 
									</a>
									상영시간표
								</h4>
								
								<div class="time-schedule mb30">
									<div class="wrap">
										<button type="button" title="이전 날짜 보기" class="btn-pre" disabled="true">
											<i class="iconset ico-cld-pre"></i> <em>이전</em>
										</button>
										<div class="date-list">
											<div class="year-area">
												<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.04</div>
												
											</div>
											<div class="date-area">
												<div class="wrap" style="position: relative; width: 2100px; border: none; left: -70px;">
													<button class="disabled sat" type="button" date-data="2020.03.28" month="2" tabindex="-1">
														<span class="ir">2020년 3월</span><em style="pointer-events: none;">28<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">토</span><span class="day-en" style="pointer-events: none; display: none">Sat</span>
													</button>
													<button class="on" type="button" date-data="2020.04.06" month="2">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">6<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">오늘</span><span class="day-en" style="pointer-events: none; display: none">Sun</span>
													</button>
													<button class="" type="button" date-data="2020.04.07" month="2">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">7<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">내일</span><span class="day-en" style="pointer-events: none; display: none">Mon</span>
													</button>
													<button class="" type="button" date-data="2020.04.08" month="2">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">8<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">화</span><span class="day-en" style="pointer-events: none; display: none">Tue</span>
													</button>
													<button class="disabled" type="button" date-data="2020.04.01" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">9<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">수</span><span class="day-en" style="pointer-events: none; display: none">Wed</span>
													</button>
													<button class="" type="button" date-data="2020.04.02" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">10<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">목</span><span class="day-en" style="pointer-events: none; display: none">Thu</span>
													</button>
													<button class="disabled" type="button" date-data="2020.04.03" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">11<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">금</span><span class="day-en" style="pointer-events: none; display: none">Fri</span>
													</button>
													<button class="disabled sat" type="button" date-data="2020.04.04" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">12<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">토</span><span class="day-en" style="pointer-events: none; display: none">Sat</span>
													</button>
													<button class="disabled holi" type="button" date-data="2020.04.05" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">14<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">일</span><span class="day-en" style="pointer-events: none; display: none">Sun</span>
													</button>
													<button class="disabled" type="button" date-data="2020.04.06" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">15<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">월</span><span class="day-en" style="pointer-events: none; display: none">Mon</span>
													</button>
													<button class="disabled" type="button" date-data="2020.04.07" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">16<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">화</span><span class="day-en" style="pointer-events: none; display: none">Tue</span>
													</button>
													<button class="disabled" type="button" date-data="2020.04.08" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">17<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">수</span><span class="day-en" style="pointer-events: none; display: none">Wed</span>
													</button>
													<button class="disabled" type="button" date-data="2020.04.09" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">18<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">목</span><span class="day-en" style="pointer-events: none; display: none">Thu</span>
													</button>
													<button class="disabled" type="button" date-data="2020.04.10" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">19<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">금</span><span class="day-en" style="pointer-events: none; display: none">Fri</span>
													</button>
													<button class="disabled sat" type="button" date-data="2020.04.11" month="3">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">20<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">토</span><span class="day-en" style="pointer-events: none; display: none">Sat</span>
													</button>
													<button class="disabled holi" type="button" date-data="2020.04.12" month="3" tabindex="-1">
														<span class="ir">2020년 4월</span><em style="pointer-events: none;">21<span style="pointer-events: none;" class="ir">일</span></em><span class="day-kr" style="pointer-events: none; display: inline-block">일</span><span class="day-en" style="pointer-events: none; display: none">Sun</span>
													</button>
												</div>
											</div>
										</div>
										<button type="button" title="다음 날짜 보기" class="btn-next" disabled="true">
											<i class="iconset ico-cld-next"></i> <em>다음</em>
										</button>
										<div class="bg-line">
											<input type="hidden" name="datePicker" id="dp1585469503187" class="hasDatepicker" value="2020.03.29">
											<button type="button" class="btn-calendar-large" title="달력보기">
												달력보기</button>
										</div>
									</div>
								</div>
								
								<div class="reserve theater-list-box">
									
									<div class="theater-list">
										<div class="theater-tit">
											<p class="movie-grade age-12"></p>
											<p>라라랜드</p>
											<p class="infomation">
												<span>상영중</span>/상영시간 128분
											</p>
										</div>
										<div class="theater-type-box">
											<div class="theater-type">
												<p class="theater-name">1관</p>
												<p class="chair">총 232석</p>
											</div>
											<div class="theater-time">
												<div class="theater-type-area">2D(자막)</div>
												<div class="theater-time-box">
													<table class="time-list-table">
														<caption>상영시간을 보여주는 표 입니다.</caption>
														<colgroup>
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
														</colgroup>
														<tbody>
															<tr>
																<td class="" brch-no="1372"
																	play-schdl-no="2003291372004" rpst-movie-no="20007800"
																	theab-no="01" play-de="20200329" play-seq="4">
																	<div class="td-ab">
																		<div class="txt-center">
																			<a href="" title="영화예매하기">
																				<div class="ico-box">
																					<i class="iconset ico-off"></i>
																				</div>
																				<p class="time">19:35</p>
																				<p class="chair">104석</p>
																				<div class="play-time">
																					<p>19:35~21:53</p>
																					<p>4회차</p>
																				</div>
																			</a>
																		</div>
																	</div>
																</td>
																<td class="" brch-no="1372"
																	play-schdl-no="2003291372060" rpst-movie-no="20007800"
																	theab-no="01" play-de="20200329" play-seq="5">
																	<div class="td-ab">
																		<div class="txt-center">
																			<a href="" title="영화예매하기">
																				<div class="ico-box">
																					<i class="iconset ico-off"></i>
																				</div>
																				<p class="time">22:10</p>
																				<p class="chair">121석</p>
																				<div class="play-time">
																					<p>22:10~24:28</p>
																					<p>5회차</p>
																				</div>
																			</a>
																		</div>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="theater-list">
										<div class="theater-tit">
											<p class="movie-grade age-15"></p>
											<p>1917</p>
											<p class="infomation">
												<span>상영중</span>/상영시간 119분
											</p>
										</div>
										<div class="theater-type-box">
											<div class="theater-type">
												<p class="theater-name">2관</p>
												<p class="chair">총 103석</p>
											</div>
											<div class="theater-time">
												<div class="theater-type-area">2D(자막)</div>
												<div class="theater-time-box">
													<table class="time-list-table">
														<caption>상영시간을 보여주는 표 입니다.</caption>
														<colgroup>
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
														</colgroup>
														<tbody>
															<tr>
																<td class="" brch-no="1372"
																	play-schdl-no="2003291372058" rpst-movie-no="01685000"
																	theab-no="02" play-de="20200329" play-seq="4">
																	<div class="td-ab">
																		<div class="txt-center">
																			<a href="" title="영화예매하기">
																				<div class="ico-box">
																					<i class="iconset ico-off"></i>
																				</div>
																				<p class="time">19:30</p>
																				<p class="chair">41석</p>
																				<div class="play-time">
																					<p>19:30~21:39</p>
																					<p>4회차</p>
																				</div>
																			</a>
																		</div>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="theater-list">
										<div class="theater-tit">
											<p class="movie-grade age-19"></p>
											<p>지푸라기라도 잡고 싶은 짐승들</p>
											<p class="infomation">
												<span>상영중</span>/상영시간 109분
											</p>
										</div>
										<div class="theater-type-box">
											<div class="theater-type">
												<p class="theater-name">5관</p>
												<p class="chair">총 96석</p>
											</div>
											<div class="theater-time">
												<div class="theater-type-area">2D</div>
												<div class="theater-time-box">
													<table class="time-list-table">
														<caption>상영시간을 보여주는 표 입니다.</caption>
														<colgroup>
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
															<col style="width: 99px;">
														</colgroup>
														<tbody>
															<tr>
																<td class="" brch-no="1372"
																	play-schdl-no="2003291372064" rpst-movie-no="01677700"
																	theab-no="05" play-de="20200329" play-seq="5">
																	<div class="td-ab">
																		<div class="txt-center">
																			<a href="" title="영화예매하기">
																				<div class="ico-box">
																					<i class="iconset ico-off"></i>
																				</div>
																				<p class="time">21:50</p>
																				<p class="chair">48석</p>
																				<div class="play-time">
																					<p>21:50~23:49</p>
																					<p>5회차</p>
																				</div>
																			</a>
																		</div>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
</div>
				</div>
			<script src="/js/manager.js" type="text/javascript"></script>
</body>
</html>