<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<body>

	<div class="container">
		<c:import url="/resources/common/header.jsp"></c:import>
		<div class="inner-wrap">
			<div id="myLoactionInfo" style="display: none;">
				<div class="location">
					<span>Home</span> <a href="/mypage" title="나의 메가박스 페이지로 이동">나의
						메가박스</a> <a href="/mypage/bookinglist?tab=01" title="예매/구매내역 페이지로 이동">예매/구매내역</a>
				</div>
			</div>

			<!-- container -->
			<div id="contents" class="location-fixed">
				<h2 class="tit">예매/취소 내역</h2>

				<div class="tab-block tab-layer">
					<ul>
						<li data-url="/mypage/bookinglist?tab=01" data-tit="예매내역"
							title="예매내역 탭으로 이동" class="on"><a href="#myBokdArea"
							class="btn">예매 </a></li>

					</ul>
				</div>
				<div class="tab-cont-wrap">

					<!-- 예매내역 -->
					<div id="myBokdArea" class="tab-cont on">
						<a href="" class="ir">예매 탭 화면 입니다.</a>

						<!-- 예매 조회 조건 -->
						<div class="board-list-search mt20">
							<table summary="예매 조회 조건">
								<colgroup>
									<col style="width: 75px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">구분</th>
										<td><input type="radio" id="radBokd01" name="radBokd"
											value="B" checked="checked"> <label for="radBokd01">예매내역
										</label> <input type="radio" id="radBokd02" name="radBokd" value="E">
											<label for="radBokd02">지난내역 </label>

											<div class="dropdown bootstrap-select disabled small bs3">
												<select name="selYM" class="selectpicker small"
													disabled="disabled" tabindex="-98">

													<option value="202003">2020년 3월</option>

													<option value="202002">2020년 2월</option>

													<option value="202001">2020년 1월</option>

													<option value="201912">2019년 12월</option>

													<option value="201911">2019년 11월</option>

													<option value="201910">2019년 10월</option>

													<option value="201909">2019년 9월</option>

													<option value="201908">2019년 8월</option>

													<option value="201907">2019년 7월</option>

													<option value="201906">2019년 6월</option>

													<option value="201905">2019년 5월</option>

													<option value="201904">2019년 4월</option>

												</select>
												<button type="button"
													class="btn dropdown-toggle disabled btn-default"
													data-toggle="dropdown" role="button" tabindex="-1"
													aria-disabled="true" title="2020년 3월">
													<div class="filter-option">
														<div class="filter-option-inner">
															<div class="filter-option-inner-inner">2020년 3월</div>
														</div>
													</div>
													<span class="bs-caret"><span class="caret"></span></span>
												</button>
												<div class="dropdown-menu open" role="combobox">
													<div class="inner open" role="listbox"
														aria-expanded="false" tabindex="-1">
														<ul class="dropdown-menu inner "></ul>
													</div>
												</div>
											</div>

											<button type="button" class="button gray-line small ml05"
												name="search">
												<i class="iconset ico-search-gray"></i> 조회
											</button></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- 예매 조회 조건 End -->

						<!-- 예매 영화 목록 -->
						<div id="bokdList">
							<div class="board-list-util">
								<p class="result-count pt00">
									<strong> 총 <b class="font-gblue">1</b>건
									</strong>
								</p>
							</div>
							<div class="history-reservation">
								<ul>
									<li sell-tran-no="13722003170094915348">
										<div class="round">
											<a href="/movie-detail?rpstMovieNo=20003000" class="img"
												title="다크 워터스 "><img
												src="https://img.megabox.co.kr/SharedImg/2020/02/21/lczdtI1vz3Dd1ShuXb0iXj8pTJGbh4wa_316.jpg"
												alt="다크 워터스" onerror="noImg(this)"></a>
											<table class="table">
												<colgroup>
													<col style="width: 75px;">
													<col style="width: 230px;">
													<col style="width: 80px;">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<th scope="row" class="a-r">예매번호</th>
														<td colspan="3"><em class="num">9400-111-42624</em></td>
													</tr>
													<tr>
														<th scope="row" class="a-r">영화명</th>
														<td colspan="3">
															<p class="tit-movie">
																<span>다크 워터스</span> <span>2D(자막)</span>
															</p>
														</td>
													</tr>
													<tr>
														<th scope="row" class="a-r">극장/상영관</th>
														<td>강남/1관</td>
														<th scope="row">관람인원</th>
														<td>성인 1명</td>
													</tr>
													<tr>
														<th scope="row" class="a-r">관람일시</th>
														<td>2020.03.18 (수) 19:55 (4회차)</td>
														<th scope="row">관람좌석</th>
														<td>F열 11</td>
													</tr>
												</tbody>
											</table>
											<div class="bg-round">
												<table class="table">
													<colgroup>
														<col style="width: 75px;">
														<col style="width: 230px;">
														<col style="width: 100px;">
														<col>
													</colgroup>
													<tbody>
														<tr>
															<th scope="row" class="a-r">결제일시</th>
															<td>2020.03.17</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="btn-group">
												<a href="" class="button gray" name="btnCancelBokd"
													title="예매취소">예매취소</a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<h3 class="tit mt70">예매취소내역</h3>

						<ul class="dot-list">
							<li>상영일 기준 7일간 취소내역을 확인하실 수 있습니다.</li>
						</ul>

						<!-- 취소한 예매 영화 목록 -->
						<div class="table-wrap mt10">
							<table class="board-list"
								summary="취소일시, 영화명, 극장, 상영일시, 취소금액 항목을 가진 취소내역 목록 표">
								<caption>취소일시, 영화명, 극장, 상영일시, 취소금액 항목을 가진 취소내역 목록 표</caption>
								<colgroup>
									<col style="width: 160px;">
									<col>
									<col style="width: 130px;">
									<col style="width: 188px;">
									<col style="width: 105px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">취소일시</th>
										<th scope="col">영화명</th>
										<th scope="col">극장</th>
										<th scope="col">상영일시</th>
										<th scope="col">취소금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2020.03.17 (23:14)</td>
										<th scope="row">다크 워터스</th>
										<td>강남</td>
										<td>2020.03.18 (수) 19:55</td>
										<td class="a-r"><span class="font-red">11,000원</span></td>
									</tr>
								</tbody>
							</table>
						</div>

						<nav class="pagination" id="navBokd"></nav>

						<!-- 예매 안내상황  -->
						<div class="box-pulldown mt30">
							<div class="tit">
								<button type="button" class="btn-toggle">
									이용안내<i class="iconset ico-arr-toggle-down"></i>
								</button>
							</div>
							<div class="cont">
								<strong>[예매 안내]</strong>
								<ul class="dot-list mb30">
									<li>만 4세(48개월) 이상부터는 영화티켓을 반드시 구매하셔야 입장 가능합니다.</li>
									<li>예매 변경은 불가능하며, 취소 후 재 예매를 하셔야만 합니다.</li>
									<li>메가박스 모바일앱을 이용할 경우 티켓출력없이 모바일티켓을 통해 바로 입장하실 수 있습니다.</li>
								</ul>

								<strong>[티켓교환 안내]</strong>
								<ul class="dot-list mb30">
									<li>극장의 무인발권기(KIOSK)를 통해 예매번호 또는 고객확인번호(생년월일+휴대폰번호)를 입력하여
										편리하게 티켓을 발권하실 수 있습니다.</li>
									<li>무인발권기 이용이 어려우신경우, 티켓교환권을 출력하여 매표소에 방문하시면 티켓을 발권하실 수
										있습니다.</li>
									<li>(티켓교환권 출력이 어려운경우 예매번호와 신분증을 지참하여 매표소에 방문하시면 티켓을 발권하실 수
										있습니다)</li>
								</ul>

								<strong>[예매취소 안내]</strong>
								<ul class="dot-list">
									<li>온라인(홈페이지/모바일) 예매 취소는 상영시간 20분전까지 입니다.</li>
									<li>위탁 예매 사이트 이용 시 취소 및 환불 규정은 해당 사이트 규정을 따릅니다.</li>
									<li>LIVE 공연 콘텐트는 취소 기준은 아래와 같습니다.
										<ul class="dash-list">
											<li>관람 4일전 : 취소 가능</li>
											<li>관람 3일 ~ 1일전 : 취소 수수료 부담 후 취소 가능</li>
											<li>관람 당일 : 취소 및 환불 불가</li>
										</ul>
									</li>
									<li>공연 관람시 시작 시간 이후에는 입장이 제한 됩니다.</li>
									<li>발권된 티켓은 상영시간 전까지 현장 방문 시에만 취소가 가능합니다.</li>
								</ul>
							</div>
						</div>
						<!-- 예매 안내상황 End -->
					</div>



				</div>
			</div>

		</div>
		<c:import url="/resources/common/footer.jsp"></c:import>
	</div>
	<script src="/js/common.js"></script>
</body>
</html>