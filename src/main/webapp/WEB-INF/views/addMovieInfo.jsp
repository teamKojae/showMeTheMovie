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
											class="iconset ico-tab-movie"></i>영화선택</a></li>
									<li class=""><a href="#masterBrch" onclick="return false;"
										title="극장등록" class="btn"><i
											class="iconset ico-tab-theater"></i>극장등록</a></li>
									<li class=""><a href="" onclick="return false;"
										title="상영관 선택" class="btn"><i class="iconset ico-tab-special">
										</i>상영관 선택</a></li>
								</ul>
							</div>

							<div class="ltab-layer-wrap">

								<div id="masterMovie" class="ltab-layer-cont has-img on">
									<a href="" class="ir"> 영화별 탭 화면 입니다.</a>
									<div class="wrap tab-area">
										<div class="tab-list-choice">
											<ul>
												<li><a href="#masterMovie_AllMovie" title="전체영화 선택"
													class="btn on">전체영화</a></li>
											</ul>
										</div>
										<div class="list-section on">
											<div id="masterMovie_AllMovie" class="tab-layer-cont on">
												<a href="" class="ir"> 영화별 탭 화면 입니다.</a>
												<div class="scroll m-scroll mCustomScrollbar _mCS_2">
													<div id="mCSB_2"
														class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside on"
														style="max-height: none;" tabindex="0">
														<div id="mCSB_2_container" class="mCSB_container on"
															style="position: relative; left: 0px;" dir="ltr">
															<ul class="list">
																<li><button type="button" class="btn on"
																		data-movie-nm="라라랜드" data-movie-no="20007800"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/03/11/Qgl73W9FxEMYJnnaOYPFtyqSrqB3vmJ2_316.jpg">라라랜드</button></li>
																<li><button type="button" class="btn disabled"
																		data-movie-nm="킹 오브 프리즘 올 스타즈 -프리즘 쇼☆베스트10-"
																		data-movie-no="20004100"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/02/12/uPvwgYBnTlO1fdZm8bzilwDoaQJ2F8uA_316.jpg">킹
																		오브 프리즘 올 스타즈 -프리즘 쇼☆베스트10-</button></li>
																<li><button type="button" class="btn"
																		data-movie-nm="1917" data-movie-no="01685000"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/02/21/IyeZJvAzV3QgEoW4F7HzdS97zfLYfcni_316.jpg">1917</button></li>
																<li><button type="button" class="btn"
																		data-movie-nm="주디" data-movie-no="01687700"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/03/20/DR3GwlMyGWDPNqoX0E5ywhdqxrYSMSXi_316.jpg">주디</button></li>
																<li><button type="button" class="btn disabled"
																		data-movie-nm="[오페라] 리골레토" data-movie-no="20000100"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/02/18/JR4a3oWNNricpgDfDeGdrZP8bY2DZkLT_316.jpg">[오페라]
																		리골레토</button></li>
																<li><button type="button" class="btn"
																		data-movie-nm="인비저블맨" data-movie-no="01694800"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/02/25/cH7qHYtiXhvrIwZVNraUkjfGPPUj4M5W_316.jpg">인비저블맨</button></li>
																<li><button type="button" class="btn"
																		data-movie-nm="바이올렛 에버가든 - 영원과 자동 수기 인형 -"
																		data-movie-no="20006800"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/03/03/75uijLWJo1DGxC7zFNo0rZix01dXa3Ea_316.jpg">바이올렛
																		에버가든 - 영원과 자동 수기 인형 -</button></li>
																<li><button type="button" class="btn"
																		data-movie-nm="페임" data-movie-no="20006000"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/03/05/vxKb6uRpY1ThTPxP8TW7jX86tPYdKeTN_316.jpg">페임</button></li>
																<li><button type="button" class="btn"
																		data-movie-nm="다크 워터스" data-movie-no="20003000"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/02/21/lczdtI1vz3Dd1ShuXb0iXj8pTJGbh4wa_316.jpg">다크
																		워터스</button></li>
																<li><button type="button" class="btn"
																		data-movie-nm="작은 아씨들" data-movie-no="01680400"
																		data-img-path="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2020/73/C2E59B-7D34-4220-8D51-580299453B88.medium.jpg">작은
																		아씨들</button></li>
																<li><button type="button" class="btn disabled"
																		data-movie-nm="[다시봄] 극장판 쿠로코의 농구 라스트 게임"
																		data-movie-no="20009600"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/03/23/c6SWPeJVvbYs0nFSYZlla2vyrrFDPaF0_316.jpg">[다시봄]
																		극장판 쿠로코의 농구 라스트 게임</button></li>
																<li><button type="button" class="btn"
																		data-movie-nm="모리의 정원" data-movie-no="20002200"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/03/18/KXUsaJc8U56TwsVpqc7dPbsnsBzjJop5_316.jpg">모리의
																		정원</button></li>
																<li><button type="button" class="btn disabled"
																		data-movie-nm="패왕별희 디 오리지널" data-movie-no="20004800"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/02/21/wmC2DR1KajoKMds5hb683vDjgVxRaTwj_316.jpg">패왕별희
																		디 오리지널</button></li>
																<li><button type="button" class="btn disabled"
																		data-movie-nm="[오페라] 마농 @ The Met"
																		data-movie-no="20007900"
																		data-img-path="https://img.megabox.co.kr/SharedImg/2020/03/12/yZRChDE2ZGDqoLxVrhPf9J21CgwUAGhr_316.jpg">[오페라]
																		마농 @ The Met</button></li>
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
													src="https://img.megabox.co.kr/SharedImg/2020/03/11/Qgl73W9FxEMYJnnaOYPFtyqSrqB3vmJ2_316.jpg"
													alt="라라랜드">
											</div>
										</div>
									</div>
								</div>

								<div id="masterBrch" class="ltab-layer-cont">
									<a href="" class="ir"> 극장별 탭 화면 입니다.</a>
									<div class="wrap tab-area">
										<div class="tab-list-choice">
											<ul>
												<li><a href="#tab10" title="서울지점 선택" data-area-cd="10"
													class="on">서울(20)</a></li>
												<li><a href="#tab30" title="경기지점 선택" data-area-cd="30">경기(25)</a></li>
												<li><a href="#tab35" title="인천지점 선택" data-area-cd="35">인천(6)</a></li>
												<li><a href="#tab45" title="대전/충청/세종지점 선택"
													data-area-cd="45">대전/충청/세종(13)</a></li>
												<li><a href="#tab55" title="부산/대구/경상지점 선택"
													data-area-cd="55">부산/대구/경상(24)</a></li>
												<li><a href="#tab65" title="광주/전라지점 선택"
													data-area-cd="65">광주/전라(9)</a></li>
												<li><a href="#tab70" title="강원지점 선택" data-area-cd="70">강원(4)</a></li>
												<li><a href="#tab80" title="제주지점 선택" data-area-cd="80">제주(1)</a></li>
											</ul>
										</div>
										<div class="list-section">
											<div id="tab10" class="tab-layer-cont">
												<div class="scroll m-scroll">
													<ul class="list">
														<li><button type="button" class="btn on"
																data-area-cd="10" data-brch-no="1372">강남</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1359">강남대로(씨티)</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1341">강동</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1431">군자</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1003">동대문</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1572">마곡</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1581">목동</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1311">상봉</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1211">상암월드컵경기장</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1331">성수</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1371">센트럴</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1381">송파파크하비오</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1202">신촌</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1221">은평</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1561">이수</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1321">창동</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1351">코엑스</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1212">홍대</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1571">화곡</button></li>
														<li><button type="button" class="btn"
																data-area-cd="10" data-brch-no="1562">ARTNINE</button></li>
													</ul>
													<div></div>
												</div>
											</div>
											<div id="tab30" class="tab-layer-cont">
												<div class="scroll m-scroll">
													<ul class="list">
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4121">고양스타필드</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4152">김포한강신도시</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4721">남양주</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4451">동탄</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4652">미사강변</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4113">백석</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4722">별내</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4221">부천스타필드시티</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4631">분당</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4411">수원</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4421">수원남문</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4291">시흥배곧</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4253">안산중앙</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4821">양주</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4431">영통</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4462">용인테크노밸리</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4804">의정부민락</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4111">일산</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4104">일산벨라시타</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4112">킨텍스</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4132">파주금촌</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4115">파주운정</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4131">파주출판도시</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4501">평택</button></li>
														<li><button type="button" class="btn"
																data-area-cd="30" data-brch-no="4651">하남스타필드</button></li>
													</ul>
													<div></div>
												</div>
											</div>
											<div id="tab35" class="tab-layer-cont">
												<div class="scroll m-scroll">
													<ul class="list">
														<li><button type="button" class="btn"
																data-area-cd="35" data-brch-no="4041">검단</button></li>
														<li><button type="button" class="btn"
																data-area-cd="35" data-brch-no="4062">송도</button></li>
														<li><button type="button" class="btn"
																data-area-cd="35" data-brch-no="4001">영종</button></li>
														<li><button type="button" class="btn"
																data-area-cd="35" data-brch-no="4051">인천논현</button></li>
														<li><button type="button" class="btn"
																data-area-cd="35" data-brch-no="4042">청라</button></li>
														<li><button type="button" class="btn"
																data-area-cd="35" data-brch-no="4043">청라지젤</button></li>
													</ul>
													<div></div>
												</div>
											</div>
											<div id="tab45" class="tab-layer-cont">
												<div class="scroll m-scroll">
													<ul class="list">
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3141">공주</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3021">대전</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="0009">
																대전유성&nbsp;<i class="iconset ico-theater-new"></i>
															</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3011">대전중앙로</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3391">세종(조치원)</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3392">세종나성</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3631">오창</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3901">제천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3651">진천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3301">천안</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3611">청주사창</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3801">충주</button></li>
														<li><button type="button" class="btn"
																data-area-cd="45" data-brch-no="3501">홍성내포</button></li>
													</ul>
													<div></div>
												</div>
											</div>
											<div id="tab55" class="tab-layer-cont">
												<div class="scroll m-scroll">
													<ul class="list">
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6701">거창</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7602">경북도청</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7122">경산하양</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7801">경주</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7303">구미강동</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7401">김천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7901">남포항</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7022">대구(칠성로)</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7011">대구신세계(동대구)</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7012">대구이시아</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6161">덕천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6312">마산</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7451">문경</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6001">부산극장</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6906">부산대</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="7021">북대구(칠곡)</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6641">사천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6642">삼천포</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6261">양산</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6262">양산라피에스타</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6811">울산</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6191">정관</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6421">창원</button></li>
														<li><button type="button" class="btn"
																data-area-cd="55" data-brch-no="6121">해운대(장산)</button></li>
													</ul>
													<div></div>
												</div>
											</div>
											<div id="tab65" class="tab-layer-cont">
												<div class="scroll m-scroll">
													<ul class="list">
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="5021">광주상무</button></li>
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="5061">광주하남</button></li>
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="5901">남원</button></li>
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="5302">목포하당(포르모)</button></li>
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="5612">송천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="5401">순천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="5552">여수웅천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="0010">전대(광주)</button></li>
														<li><button type="button" class="btn"
																data-area-cd="65" data-brch-no="5064">첨단</button></li>
													</ul>
													<div></div>
												</div>
											</div>
											<div id="tab70" class="tab-layer-cont">
												<div class="scroll m-scroll">
													<ul class="list">
														<li><button type="button" class="btn"
																data-area-cd="70" data-brch-no="2001">남춘천</button></li>
														<li><button type="button" class="btn"
																data-area-cd="70" data-brch-no="2171">속초</button></li>
														<li><button type="button" class="btn"
																data-area-cd="70" data-brch-no="2201">원주</button></li>
														<li><button type="button" class="btn"
																data-area-cd="70" data-brch-no="2202">원주센트럴</button></li>
													</ul>
													<div></div>
												</div>
											</div>
											<div id="tab80" class="tab-layer-cont">
												<div class="scroll m-scroll">
													<ul class="list">
														<li><button type="button" class="btn"
																data-area-cd="80" data-brch-no="6901">제주</button></li>
													</ul>
													<div></div>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>
						</div>

						<div class="box-alert mt40" style="display: none">
							<i class="iconset ico-bell"></i> <strong></strong> <span></span>
						</div>

						<h3 class="tit mt60" style="display: none">
							<span class="font-green">강남</span> 무대인사
						</h3>
						<div class="reserve movie-greeting" style="display: none"></div>

						<h3 class="tit mt60">
							<span class="font-green">강남</span> 상영시간표
						</h3>
						<div class="time-schedule mb30">
							<div class="wrap">
								<button type="button" title="이전 날짜 보기" class="btn-pre"
									disabled="true">
									<i class="iconset ico-cld-pre"></i> <em>이전</em>
								</button>
								<div class="date-list">
									<div class="year-area">
										<div class="year" style="left: 30px; z-index: 1; opacity: 1;">2020.03</div>
										<div class="year" style="left: 240px; z-index: 1; opacity: 1;">2020.04</div>
									</div>
									<div class="date-area">
										<div class="wrap"
											style="position: relative; width: 2100px; border: none; left: -70px;">
											<button class="disabled sat" type="button"
												date-data="2020.03.28" month="2" tabindex="-1">
												<span class="ir">2020년 3월</span><em
													style="pointer-events: none;">28<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">토</span><span
													class="day-en" style="pointer-events: none; display: none">Sat</span>
											</button>
											<button class="on" type="button" date-data="2020.03.29"
												month="2">
												<span class="ir">2020년 3월</span><em
													style="pointer-events: none;">29<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">오늘</span><span
													class="day-en" style="pointer-events: none; display: none">Sun</span>
											</button>
											<button class="" type="button" date-data="2020.03.30"
												month="2">
												<span class="ir">2020년 3월</span><em
													style="pointer-events: none;">30<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">내일</span><span
													class="day-en" style="pointer-events: none; display: none">Mon</span>
											</button>
											<button class="" type="button" date-data="2020.03.31"
												month="2">
												<span class="ir">2020년 3월</span><em
													style="pointer-events: none;">31<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">화</span><span
													class="day-en" style="pointer-events: none; display: none">Tue</span>
											</button>
											<button class="disabled" type="button" date-data="2020.04.01"
												month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">1<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">수</span><span
													class="day-en" style="pointer-events: none; display: none">Wed</span>
											</button>
											<button class="" type="button" date-data="2020.04.02"
												month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">2<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
											<button class="disabled" type="button" date-data="2020.04.03"
												month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">3<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">금</span><span
													class="day-en" style="pointer-events: none; display: none">Fri</span>
											</button>
											<button class="disabled sat" type="button"
												date-data="2020.04.04" month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">4<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">토</span><span
													class="day-en" style="pointer-events: none; display: none">Sat</span>
											</button>
											<button class="disabled holi" type="button"
												date-data="2020.04.05" month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">5<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">일</span><span
													class="day-en" style="pointer-events: none; display: none">Sun</span>
											</button>
											<button class="disabled" type="button" date-data="2020.04.06"
												month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">6<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">월</span><span
													class="day-en" style="pointer-events: none; display: none">Mon</span>
											</button>
											<button class="disabled" type="button" date-data="2020.04.07"
												month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">7<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">화</span><span
													class="day-en" style="pointer-events: none; display: none">Tue</span>
											</button>
											<button class="disabled" type="button" date-data="2020.04.08"
												month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">8<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">수</span><span
													class="day-en" style="pointer-events: none; display: none">Wed</span>
											</button>
											<button class="disabled" type="button" date-data="2020.04.09"
												month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">9<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">목</span><span
													class="day-en" style="pointer-events: none; display: none">Thu</span>
											</button>
											<button class="disabled" type="button" date-data="2020.04.10"
												month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">10<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">금</span><span
													class="day-en" style="pointer-events: none; display: none">Fri</span>
											</button>
											<button class="disabled sat" type="button"
												date-data="2020.04.11" month="3">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">11<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">토</span><span
													class="day-en" style="pointer-events: none; display: none">Sat</span>
											</button>
											<button class="disabled holi" type="button"
												date-data="2020.04.12" month="3" tabindex="-1">
												<span class="ir">2020년 4월</span><em
													style="pointer-events: none;">12<span
													style="pointer-events: none;" class="ir">일</span></em><span
													class="day-kr"
													style="pointer-events: none; display: inline-block">일</span><span
													class="day-en" style="pointer-events: none; display: none">Sun</span>
											</button>
										</div>
									</div>
								</div>
								<button type="button" title="다음 날짜 보기" class="btn-next"
									disabled="true">
									<i class="iconset ico-cld-next"></i> <em>다음</em>
								</button>
								<div class="bg-line">
									<input type="hidden" name="datePicker" id="dp1585469503187"
										class="hasDatepicker" value="2020.03.29">
									<button type="button" class="btn-calendar-large" title="달력보기">
										달력보기</button>
								</div>
							</div>
						</div>
						<div class="movie-option mb20">
							<div class="option">
								<ul>
									<li><i class="iconset ico-stage" title="무대인사"></i>등록불가</li>
									<li><i class="iconset ico-user" title="회원시사"></i>등록가능</li>
								</ul>
							</div>
							<div class="rateing-lavel"></div>
						</div>
						<div class="reserve theater-list-box">
							<div class="tab-block tab-layer mb30" style="display: none;">
								<ul>
									<li class="on"><a href="" class="btn" data-area-cd="10"
										title="서울 선택">서울</a></li>
									<li><a href="" class="btn" data-area-cd="30" title="경기 선택">경기</a></li>
									<li><a href="" class="btn" data-area-cd="35" title="인천 선택">인천</a></li>
									<li><a href="" class="btn" data-area-cd="45"
										title="대전/충청/세종 선택">대전/충청/세종</a></li>
									<li><a href="" class="btn" data-area-cd="55"
										title="부산/대구/경상 선택">부산/대구/경상</a></li>
									<li><a href="" class="btn" data-area-cd="65"
										title="광주/전라 선택">광주/전라</a></li>
									<li><a href="" class="btn" data-area-cd="70" title="강원 선택">강원</a></li>
									<li><a href="" class="btn" data-area-cd="80" title="제주 선택">제주</a></li>
								</ul>
							</div>
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
														<td class="" brch-no="1372" play-schdl-no="2003291372004"
															rpst-movie-no="20007800" theab-no="01" play-de="20200329"
															play-seq="4">
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
														<td class="" brch-no="1372" play-schdl-no="2003291372060"
															rpst-movie-no="20007800" theab-no="01" play-de="20200329"
															play-seq="5">
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
														<td class="" brch-no="1372" play-schdl-no="2003291372058"
															rpst-movie-no="01685000" theab-no="02" play-de="20200329"
															play-seq="4">
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
														<td class="" brch-no="1372" play-schdl-no="2003291372064"
															rpst-movie-no="01677700" theab-no="05" play-de="20200329"
															play-seq="5">
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
						<div class="box-border v1 mt30" style="display: block;">
							<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분 후 시작됩니다.</li>
							<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/js/manager.js" type="text/javascript"></script>
</body>
</html>