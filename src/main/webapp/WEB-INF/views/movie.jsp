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
<script type="text/javascript">

//더보기 버튼
$('#btnAddMovie').on('click', function() {
	console.log("더보기 버튼");
	addMovieList();
});

//function addMovieList(){
//	$(function(){ //btn-more v1 ?
//		${".movie-list" }.slice(0,8).show();
//		$("#addMovieDiv").click(function(e){
//			e.preventDefault();
//			${".movie-list:hidden" }.slice(0,8).show();
//			if($(".movie-list:hidden").length==0){
//				$("#addMovieDiv").css("display","none");
//			}});
//	});
//}

</script>
</head>
<body>
	<c:import url="/resources/common/header.jsp"></c:import>
	<div class="container">

		<div class="page-util"></div>

		<!-- contents -->
		<div id="contents" class="">
			<!-- inner-wrap -->
			<div class="inner-wrap">
				<h2 class="tit">전체영화</h2>

				<div class="tab-list fixed">
					<ul id="topMenu">
						<li class="on"><a href="/movie" title="박스오피스 탭으로 이동">상영작</a></li>


						<li><a href="/movie/classic" title="클래식소사이어티 탭으로 이동">temp</a></li>

					</ul>
				</div>

				<!-- movie-list-util -->
				<div class="movie-list-util mt40">
					<!-- 박스오피스 -->

					<!--// 박스오피스 -->

					<!-- 상영예정작 -->
					<div class="topSort" style="display: none;">
						<div class="movie-sorting sortTab">
							<span><button type="button" class="btn on"
									sort-type="rfilmDe">개봉일순</button></span> <span><button
									type="button" class="btn" sort-type="title">가나다순</button></span>
						</div>
					</div>
					<!--// 상영예정작 -->

					<!-- 필름소사이어티 -->
					<div class="topSort" style="display: none;">
						<div class="movie-sorting sortTab">
							<span><button type="button" class="btn on"
									sort-type="ticketing" tab-cd="">전체</button></span>

						</div>


					</div>
					<!--// 필름소사이어티 -->

					<!-- 클래식소사이어티 -->
					<div class="topSort" style="display: none;">
						<div class="movie-sorting sortTab">
							<span><button type="button" class="btn on"
									sort-type="ticketing" tab-cd="">전체</button></span>

						</div>

						<div class="onair-condition">
							<button type="button" title="개봉작만 보기" class="btn-onair btnOnAir">개봉작만</button>
						</div>
					</div>
					<!--// 클래식소사이어티 -->


					<!-- 검색결과 없을 때 -->
					<p class="no-result-count">
						<strong id="totCnt">99</strong>개의 영화가 검색되었습니다.
					</p>
					<!--// 검색결과 없을 때 -->

					<div class="movie-search">
						<input type="text" title="영화명을 입력하세요" id="ibxMovieNmSearch"
							name="ibxMovieNmSearch" placeholder="영화명 검색" class="input-text" value="${movieName }">
						<button type="button" class="btn-search-input" id="btnSearch">검색</button>
					</div>
				</div>
				<!--// movie-list-util -->
				<div class="bg-loading" style="display: none;">
					<div class="spinner-border" role="status">
						<span class="sr-only">Loading...</span>
					</div>
				</div>

				<!-- movie-list -->
				<div class="movie-list">
					<ol class="list" id="movieList">
<<<<<<< HEAD
					<c:forEach var="movie" items="${movies }" varStatus="vs"> 
						<li tabindex="0" class="no-img">
							<div class="movie-list-info">
								<input type="hidden" name="movieName"
									value="${movie.movieName }" class="movie-info-hidden">
=======
						<li tabindex="0" class="no-img"><div class="movie-list-info">
						<input type="hidden"  name="movieName" value="다크 워터스" class="movie-info-hidden">
>>>>>>> 771dbfffa20ffc7c3bc0483547bc95228d51b831
								<p class="rank" style="">
									${vs.count }<span class="ir">위</span>
								</p>
<<<<<<< HEAD
								<img src="/img/${movie.moviePoster }" alt="${movie.movieName }"
									class="poster lozad" onerror="noImg(this)">
=======
								<img
									src="/img/lalaland_snapshot1.jpg"
									alt="라라랜드" class="poster lozad" >
>>>>>>> 771dbfffa20ffc7c3bc0483547bc95228d51b831
								<div class="movie-score" style="opacity: 0;">
									<a href="#" class="wrap movieBtn" data-no="20003000"
										title="${movie.movieName } 상세보기">
										<div class="summary"> ${movie.movieSynopsis} </div>
									</a>
								</div>
							</div>
							<div class="tit-area">
								<p class="movie-grade age-12">,</p>
								<p title="${movie.movieName }" class="tit">${movie.movieName }</p>
							</div>
							<div class="rate-date">
								<span class="rate">예매율 ${movie.movieTicketRatePersent}%</span> <span
									class="date">개봉일 ${movie.movieUpdate }</span>
							</div>
							<div class="btn-util">
								<div class="case movieStat4" style="">
									<button value="${movie.movieName }"
										class="button purple bokdBtn" data-no="20003000"
										title="영화 예매하기">예매</button>
								</div>
<<<<<<< HEAD
							</div>
						</li>
						</c:forEach>
=======
							</div></li>
						<li tabindex="0" class="no-img"><div class="movie-list-info">
								<input type="hidden"  name="movieName" value="시원찮은 그녀를 위한 육성방법 피날레" class="movie-info-hidden">
										<p class="rank" style="">
											2<span class="ir">위</span>
										</p>
										<img
											src="https://img.megabox.co.kr/SharedImg/2020/02/07/jO2LnVNFJxLzAL62WxHjDUBKbtPcV8ET_420.jpg"
											alt="시원찮은 그녀를 위한 육성방법 피날레" class="poster lozad"
											onerror="noImg(this)">
										<div class="curation">
											<p class="film" style="display: none">필름 소사이어티</p>
											<p class="classic" style="display: none">클래식 소사이어티</p>
										</div>
										<div class="screen-type">
											<p class="boutqScreen" style="display: none">부티크</p>
											<p class="mxScreen" style="display: none">MX</p>
										</div>
										<div class="movie-score" style="opacity: 0;">
											<a href="#" class="wrap movieBtn" data-no="20000400"
												title="시원찮은 그녀를 위한 육성방법 피날레 상세보기">
												<div class="summary">어느 봄날, 아키 토모야는 벚꽃이 흩날리는 언덕길에서 운명적으로
													만난 소녀 '카토 메구미'를 메인 히로인으로 삼아서 동인 게임을 제작하기로 마음을 먹는다. 미술부 소속이지만
													동인 일러스트레이터로도 활동 중인 ‘사와무라 스펜서 에리리’, 우등생이면서 라이트노벨 작가로도 활약하고 있는
													3학년 선배 ‘카스미가오카 우타하’를 영입한 그는, 게임 제작 동아리 ‘블레싱 소프트웨어’를 결성해서 시행착오
													끝에 첫 작품을 발표한다ㅡ. 에리리와 우타하는 인기 크리에이터 코사카 아카네가 기획을 맡은 대작 게임 [필즈
													크로니클]의 개발 멤버로 스카우트된다. 한편 블레싱 소프트웨어 대표인 토모야는 서클 활동을 이어 나가면서
													일러스트레이터인 하시마 이즈미, 프로듀서인 하시마 이오리, 음악 밴드 아이시 테일의 효도 미치루, 그리고
													부대표 메구미와 함께 신작 게임의 개발을 시작하는데…</div>
												<div class="my-score big">
													<div class="preview">
														<p class="tit">기대평</p>
														<p class="number">
															8.8<span class="ir">점</span>
														</p>
													</div>
													<span class="sign big">pointText</span>
													<div class="review">
														<p class="tit">관람평</p>
														<p class="number after">
															9.4<span class="ir">점</span>
														</p>
													</div>
												</div>
											</a>
										</div>
									</div>
									<div class="tit-area">
										<p class="movie-grade age-12">,</p>
										<p title="시원찮은 그녀를 위한 육성방법 피날레" class="tit">시원찮은 그녀를 위한 육성방법
											피날레</p>
									</div>
									<div class="rate-date">
										<span class="rate">예매율 9.6%</span> <span class="date">개봉일
											2020.02.27</span>
									</div>
									<div class="btn-util">
										<p class="txt movieStat1" style="display: none">상영예정</p>
										<p class="txt movieStat2" style="display: none">2월 개봉예정</p>
										<p class="txt movieStat5" style="display: none">개봉예정</p>
										<p class="txt movieStat6" style="display: none">상영종료</p>
										<div class="case movieStat4" style="">
											<a href="#" class="button purple bokdBtn" data-no="20000400"
												title="영화 예매하기">예매</a>
										</div>
									</div>
						</li>
						<li tabindex="0" class="no-img"><div class="movie-list-info">
						<input type="hidden"  name="movieName" value="1917" class="movie-info-hidden">
								<p class="rank" style="">
									3<span class="ir">위</span>
								</p>
								<img
									src="https://img.megabox.co.kr/SharedImg/2020/02/21/IyeZJvAzV3QgEoW4F7HzdS97zfLYfcni_420.jpg"
									alt="1917" class="poster lozad" >
								<div class="movie-score" style="opacity: 0;">
									<a href="#" class="wrap movieBtn" data-no="01685000"
										title="1917 상세보기">
										<div class="summary">두 명의 병사, 하나의 미션! 그들이 싸워야 할 것은 적이
											아니라 시간이었다! 제1차 세계대전이 한창인 1917년. 독일군에 의해 모든 통신망이 파괴된 상황 속에서
											영국군 병사 '스코필드'(조지 맥케이)와 '블레이크'(딘-찰스 채프먼)에게 하나의 미션이 주어졌다. 함정에
											빠진 영국군 부대의 수장 '매켄지' 중령(베네딕트 컴버배치)에게 '에린무어' 장군(콜린 퍼스)의 공격 중지
											명령을 전하는 것! 둘은 1600명의 아군과 '블레이크'의 형(리차드 매든)을 구하기 위해 전쟁터 한복판을
											가로지르며 사투를 이어가는데...</div>
										<div class="my-score big">
											<div class="preview">
												<p class="tit">기대평</p>
												<p class="number">
													8.4<span class="ir">점</span>
												</p>
											</div>
											<span class="sign big">pointText</span>
											<div class="review">
												<p class="tit">관람평</p>
												<p class="number after">
													8.9<span class="ir">점</span>
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="tit-area">
								<p class="movie-grade age-15">,</p>
								<p title="1917" class="tit">1917</p>
							</div>
							<div class="rate-date">
								<span class="rate">예매율 7.6%</span> <span class="date">개봉일
									2020.02.19</span>
							</div>
							<div class="btn-util">
								<div class="case movieStat4">
									<a href="#" class="button purple bokdBtn" data-no="01685000"
										title="영화 예매하기">예매</a>
								</div>
							</div></li>
						<li tabindex="0" class="no-img"><div class="movie-list-info">
								<p class="rank" style="">
									4<span class="ir">위</span>
								</p>
								<img
									src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2018/FB/2BAA70-3391-4FB0-A22C-F4476AA2BADB.large.jpg"
									alt="레토" class="poster lozad" >
								<div class="movie-score" style="opacity: 0;">
									<a href="#" class="wrap movieBtn" data-no="01492400"
										title="레토 상세보기">
										<div class="summary">MUSIC ★ LOVE ★ YOUTH 우리가 사랑한 모든 것

											1981, 레닌그라드 자신만의 음악을 하고 싶은 자유로운 뮤지션 ‘빅토르 최’ 금기의 록음악을 열망하는
											열정적인 록스타 ‘마이크’ 그리고 그의 매력적인 뮤즈 ‘나타샤’ 음악이 있어 빛나고, 사랑이 있어 아름답고,
											젊음이 있어 찬란한 그들의 끝나지 않을 여름이 시작된다</div>
										<div class="my-score smal">
											<div class="preview">
												<p class="tit">기대평</p>
												<p class="number">
													9.9<span class="ir">점</span>
												</p>
											</div>
											<span class="sign smal">pointText</span>
											<div class="review">
												<p class="tit">관람평</p>
												<p class="number after">
													9.3<span class="ir">점</span>
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="tit-area">
								<p class="movie-grade age-15">,</p>
								<p title="레토" class="tit">레토</p>
							</div>
							<div class="rate-date">
								<span class="rate">예매율 6.7%</span> <span class="date">개봉일
									2019.01.03</span>
							</div>
							<div class="btn-util">
								<div class="case movieStat4" style="">
									<a href="#" class="button purple bokdBtn" data-no="01492400"
										title="영화 예매하기">예매</a>
								</div>
							</div></li>
						<li tabindex="0" class="no-img"><div class="movie-list-info">
								<p class="rank" style="">
									5<span class="ir">위</span>
								</p>
								<img
									src="https://img.megabox.co.kr/SharedImg/2020/02/25/cH7qHYtiXhvrIwZVNraUkjfGPPUj4M5W_420.jpg"
									alt="인비저블맨" class="poster lozad" >
								<div class="movie-score" style="opacity: 0;">
									<a href="#" class="wrap movieBtn" data-no="01694800"
										title="인비저블맨 상세보기">
										<div class="summary">모든 것을 통제하려는 소시오패스 남자에게서 도망친 세실리아 그의
											자살 소식과 함께 상속받게 된 거액의 유산 하지만 그날 이후, 누구에게도 보이지 않는 존재가 느껴지기
											시작했다!</div>
										<div class="my-score big">
											<div class="preview">
												<p class="tit">기대평</p>
												<p class="number">
													7.6<span class="ir">점</span>
												</p>
											</div>
											<span class="sign big">pointText</span>
											<div class="review">
												<p class="tit">관람평</p>
												<p class="number after">
													8.2<span class="ir">점</span>
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="tit-area">
								<p class="movie-grade age-15">,</p>
								<p title="인비저블맨" class="tit">인비저블맨</p>
							</div>
							<div class="rate-date">
								<span class="rate">예매율 6%</span> <span class="date">개봉일
									2020.02.26</span>
							</div>
							<div class="btn-util">
								<div class="case movieStat4">
									<a href="#" class="button purple bokdBtn" data-no="01694800"
										title="영화 예매하기">예매</a>
								</div>
							</div></li>
						<li tabindex="0" class="no-img"><div class="movie-list-info">
								<p class="rank" style="">
									6<span class="ir">위</span>
								</p>
								<img
									src="https://img.megabox.co.kr/SharedImg/2020/03/03/75uijLWJo1DGxC7zFNo0rZix01dXa3Ea_420.jpg"
									alt="바이올렛 에버가든 – 영원과 자동 수기 인형 -" class="poster lozad"
									onerror="noImg(this)">
								<div class="movie-score" style="opacity: 0;">
									<a href="#" class="wrap movieBtn" data-no="20006800"
										title="바이올렛 에버가든 – 영원과 자동 수기 인형 - 상세보기">
										<div class="summary">“전하고 싶어, 나의 마음을” 소중한 동생을 지키는 대가로 요크
											가문에 입성한 ‘이자벨라’. 더 이상 꿈도 희망도 없는 그녀의 앞에 나타난 자동 수기 인형, ‘바이올렛
											에버가든’. “나도… 행복을 전하고 싶어” 언니의 편지를 받고 C.H 우편사를 찾아온 ‘테일러’는 사람들에게
											행복을 전하는 우편배달 일을 시작하고, ‘이자벨라’에게도 자신의 마음을 전하기 위해 ‘바이올렛’에게 대필을
											부탁하는데… 무수히 늘어놓은 아름다운 말보다, 단 한마디로도 소중한 마음을 전할 수 있다 - 바이올렛 에버가든</div>
										<div class="my-score smal">
											<div class="preview">
												<p class="tit" > </p>
												<p class="number">
													9.8<span class="ir">점</span>
												</p>
											</div>
											<span class="sign smal">pointText</span>
											<div class="review">
												<p class="tit">관람평</p>
												<p class="number after">
													0<span class="ir">점</span>
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="tit-area">
								<p class="movie-grade age-all">,</p>
								<p title="바이올렛 에버가든 – 영원과 자동 수기 인형 -" class="tit">바이올렛 에버가든
									– 영원과 자동 수기 인형 -</p>
							</div>
							<div class="rate-date">
								<span class="rate">예매율 5.6%</span> <span class="date">개봉일
									2020.03.26</span>
							</div>
							<div class="btn-util">
								<div class="case movieStat4" style="">
									<a href="#" class="button purple bokdBtn" data-no="20006800"
										title="영화 예매하기">예매</a>
								</div>
							</div></li>
						<li tabindex="0" class="no-img"><div class="movie-list-info">
								<p class="rank" style="">
									7<span class="ir">위</span>
								</p>
								<img
									src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2018/C6/013959-C07F-401A-AAC0-CA9A76DB48AE.large.jpg"
									alt="스타 이즈 본" class="poster lozad" >
								<div class="movie-score" style="opacity: 0;">
									<a href="#" class="wrap movieBtn" data-no="01438700"
										title="스타 이즈 본 상세보기">
										<div class="summary">나도 몰랐던 내 안의 빛을 찾아낸 그대 우리 모습 이대로 영원히
											기억할 거야… 노래에 놀라운 재능을 가졌지만 외모에는 자신이 없는 무명가수 앨리(레이디 가가)는 공연을 하던
											바에서 우연히 톱스타 잭슨 메인(브래들리 쿠퍼)을 만나게 된다. 자신의 모든 것을 사랑해주는 잭슨의 도움으로
											앨리는 자기 안의 열정을 폭발시키며 최고의 스타로 거듭나지만, 잭슨은 어린 시절의 상처와 예술가적 고뇌 속에서
											점점 무너져가는데…</div>
										<div class="my-score smal">
											<div class="preview">
												<p class="tit">기대평</p>
												<p class="number">
													9.4<span class="ir">점</span>
												</p>
											</div>
											<span class="sign smal">pointText</span>
											<div class="review">
												<p class="tit">관람평</p>
												<p class="number after">
													9.1<span class="ir">점</span>
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="tit-area">
								<p class="movie-grade age-15">,</p>
								<p title="스타 이즈 본" class="tit">스타 이즈 본</p>
							</div>
							<div class="rate-date">
								<span class="rate">예매율 4.7%</span> <span class="date">개봉일
									2018.10.09</span>
							</div>
							<div class="btn-util">
								<div class="case movieStat4">
									<a href="#" class="button purple bokdBtn" data-no="01438700"
										title="영화 예매하기">예매</a>
								</div>
							</div></li>
						<li tabindex="0" class="no-img"><div class="movie-list-info">
								<p class="rank" style="">
									8<span class="ir">위</span>
								</p>
								<img
									src="https://img.megabox.co.kr/SharedImg/asis/system/mop/poster/2020/73/C2E59B-7D34-4220-8D51-580299453B88.large.jpg"
									alt="작은 아씨들" class="poster lozad" >
								<div class="movie-score" style="opacity: 0;">
									<a href="#" class="wrap movieBtn" data-no="01680400"
										title="작은 아씨들 상세보기">
										<div class="summary">Dear women 그해 겨울, 사랑스러운 자매들을 만났다

											배우가 되고 싶은 첫째 메그(엠마 왓슨) 작가가 되고 싶은 둘째 조(시얼샤 로넌) 음악가가 되고 싶은 셋째
											베스(엘리자 스켈런) 화가가 되고 싶은 막내 에이미(플로렌스 퓨) 이웃집 소년 로리(티모시 샬라메)는 네
											자매를 우연히 알게되고 각기 다른 개성의 네 자매들과 인연을 쌓아간다. 7년 후, 어른이 된 그들에겐 각기
											다른 숙제가 놓이게 되는데…</div>
										<div class="my-score big">
											<div class="preview">
												<p class="tit">기대평</p>
												<p class="number">
													8.7<span class="ir">점</span>
												</p>
											</div>
											<span class="sign big">pointText</span>
											<div class="review">
												<p class="tit">관람평</p>
												<p class="number after">
													9.1<span class="ir">점</span>
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="tit-area">
								<p class="movie-grade age-all">,</p>
								<p title="작은 아씨들" class="tit">작은 아씨들</p>
							</div>
							<div class="rate-date">
								<span class="rate">예매율 4.3%</span> <span class="date">개봉일
									2020.02.12</span>
							</div>
							<div class="btn-util">
								<div class="case movieStat4" style="">
									<a href="#" class="button purple bokdBtn" data-no="01680400"
										title="영화 예매하기">예매</a>
								</div>
							</div></li>
>>>>>>> 771dbfffa20ffc7c3bc0483547bc95228d51b831
					</ol>
				</div>
				<!--// movie-list -->

				<div class="btn-more v1" id="addMovieDiv" style="">
					<button type="button" class="btn" id="btnAddMovie">
						더보기 <i class="iconset ico-btn-more-arr"></i>
					</button>
				</div>

				<!-- 검색결과 없을 때 -->
				<div class="movie-list-no-result" id="noDataDiv"
					style="display: none;">
					<p>현재 상영중인 영화가 없습니다.</p>
				</div>


				<!-- 검색결과 없을 때 -->
				<div class="movie-list-no-favor" id="noMyGenre"
					style="display: none;">
					<p>선호장르가 등록되지 않았습니다. 선호하시는 장르를 등록해보세요.</p>
					<div class="btn-group center">
						<a href="/mypage/additionalinfo" class="button large purple"
							title="선호장르설정하기 페이지로 이동">선호장르설정하기</a>
					</div>
				</div>


			</div>
			<c:import url="/resources/common/footer.jsp"></c:import>
		</div>
	</div>
<<<<<<< HEAD
	<script src="/js/movie.js"></script>
=======
	
	
	
	
	
	
	
	<script src="/js/movie.js"></script>
    <script>
    
    $(function(){
    	search();
    })
    
        $(document).ready(function() {
            $('#ibxMovieNmSearch').on('change', search);
            $('#btnSearch').on('click', search);
        });
        function search(){
            var key =	 $('#ibxMovieNmSearch').val();
            console.log("key :  "+key);
            
            var movieList = $('#movieList > li');
         //   var movies = $('li.no-img');
            $.each(movieList, function(index, item){
                var title = $(this).find(".tit-area .tit").text();
                console.log("title :  "+title);
                
                if( title.includes(key) ){
                    $(this).show();
                }else{
                    $(this).hide();
                }
            });
        }

    </script>	
   
>>>>>>> 771dbfffa20ffc7c3bc0483547bc95228d51b831
</body>
</html>