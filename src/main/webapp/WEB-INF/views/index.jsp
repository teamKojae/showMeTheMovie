<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<body>
	<div class="container main-container area-ad">
		<div class="container">
			<c:import url="/resources/common/header.jsp"></c:import>
			
			<div class="main-page">
				<div id="main_section01" class="section main-movie">
					<div class="bg">
						<div class="bg-pattern"></div>
						<img
							src="https://img.megabox.co.kr/SharedImg/2020/02/14/BJ4fa4uF619oFERjOyuxvVYzvOeYDSYV_380.jpg"
							alt="다크워터스_티저포스터.jpg">
					</div>

					<!-- movie.js에 있는 함수 사용할 수 없음
					<script text = "text/javascript" src="movie.js"></script>
					 -->

					<!-- cont-area  -->
					<div class="cont-area">

						<!-- tab-sorting -->
						<div class="tab-sorting">
							<button type="button" class="on" sort="boxoRankList"
								name="btnSort">인기순위</button>
						</div>
						<!-- tab-sorting -->

						<a href="/movie" class="more-movie" title="더 많은 영화보기"> 더 많은
							영화보기 <i class="iconset ico-more-corss gray"></i>
						</a>

						<!-- main-movie-list -->
						<div class="main-movie-list">
						
							<ol class="list">
							
								<!-- 3개의 list를  loop 한다-->
								<!-- 박스오피스 시작 -->
								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->


								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
								
								<li name="li_boxoRankList" class="first"><a
									href="" onclick="return false"
									class="movie-list-info" title="영화상세 보기">
									<input type="hidden"  name="movieName" value="라라랜드" class="movie-info-hidden">
										<p class="rank">
											<em>${movie.movieTicketRate }</em><span class="ir">위</span>
										</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
										src="/img/lalaland_snapshot1.jpg"
										alt="다크 워터스" class="poster" >
										<div class="wrap">
											<div class="summary">
												인류의 99%는 이미 중독되었다<br>&lt;스포트라이트&gt; 제작진의 충격 고발 실화<br>
												<br>젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>기형아들의
												출생<br>그리고, 한 마을에 퍼지기 시작한 중증 질병들...<br> <br>대기업의
												변호를 담당하는 대형 로펌의 변호사 ‘롭 빌럿’(마크 러팔로)은<br>세계 최대의 화학기업 듀폰의
												독성 폐기물질(PFOA) 유출 사실을 폭로한다. <br>그는 사건을 파헤칠수록 독성 물질이
												프라이팬부터 콘택트렌즈, 아기 매트까지<br>우리 일상 속에 침투해 있다는 끔찍한 사실을 알게 되고<br>자신의
												커리어는 물론 아내 ‘사라’(앤 해서웨이)와 가족들,<br>모든 것을 건 용기 있는 싸움을
												시작한다.<br> <br>대한민국에서도 일어나고 있는 현재진행형 실화가 공개된다
											</div>
											
											<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
											<div class="score">
												<div class="preview">
													<p class="tit">기대평</p>
													<p class="number">
														9.4<span class="ir">점</span>
													</p>
												</div>
												<!--
															기대평이 클때
															<span class="sign small">보다 크다</span>

															관람후가 클때
															<span class="sign big">보다 작다</span>

															같을 때
															<span class="sign equal">같다</span>
														 -->
												<span class="sign small">보다 크다</span>
												<!-- 관람 전이 더 높을 때 -->
												<div class="review">
													<p class="tit">관람평</p>
													<p class="number">
														8.7<span class="ir">점</span>
													</p>
												</div>
											</div>
										</div>
								</a>
									<div class="btn-util">

										<div class="case">
											<!-- 개봉 예매가능 기본-->
											<!-- <input type="button" class="button gblue" value="darkWater"> -->
											<button class="button gblue" name="movieName" value="라라랜드">예매</button>
											<!-- <a href="javascript:moveBokdPage('20003000');"
												class="button gblue" title="영화 예매하기">예매</a> -->
										</div>
									</div></li>
								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
								<li name="li_boxoRankList" class=""><a
									href="" onclick="return false"
									class="movie-list-info" title="영화상세 보기">
									<input type="hidden"  name="movieName" value="킹 오브 프리즘 올 스타즈 -프리즘 쇼☆베스트10-" class="movie-info-hidden">
										<p class="rank">
											2<span class="ir">위</span>
										</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
										src="/img/prisomPoster.jpg"
										alt="시원찮은 그녀를 위한 육성방법 피날레" class="poster">
										<div class="wrap">
											<div class="summary">
												어느 봄날, 아키 토모야는 벚꽃이 흩날리는 언덕길에서 운명적으로 만난 소녀 '카토 메구미'를 메인 히로인으로
												삼아서 동인 게임을 제작하기로 마음을 먹는다.<br>미술부 소속이지만 동인 일러스트레이터로도 활동
												중인 ‘사와무라 스펜서 에리리’, 우등생이면서 라이트노벨 작가로도 활약하고 있는 3학년 선배 ‘카스미가오카
												우타하’를 영입한 그는, 게임 제작 동아리 ‘블레싱 소프트웨어’를 결성해서 시행착오 끝에 첫 작품을
												발표한다ㅡ.<br>에리리와 우타하는 인기 크리에이터 코사카 아카네가 기획을 맡은 대작 게임 [필즈
												크로니클]의 개발 멤버로 스카우트된다.<br>한편 블레싱 소프트웨어 대표인 토모야는 서클 활동을
												이어 나가면서 일러스트레이터인 하시마 이즈미, 프로듀서인 하시마 이오리, 음악 밴드 아이시 테일의 효도
												미치루, 그리고 부대표 메구미와 함께 신작 게임의 개발을 시작하는데…
											</div>
											<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
											<div class="score">
												<div class="preview">
													<p class="tit">기대평</p>
													<p class="number">
														8.8<span class="ir">점</span>
													</p>
												</div>
												<!--
															기대평이 클때
															<span class="sign small">보다 크다</span>

															관람후가 클때
															<span class="sign big">보다 작다</span>

															같을 때
															<span class="sign equal">같다</span>
														 -->
												<span class="sign big">보다 작다</span>
												<!-- 관람 후가 더 높을 때 -->
												<div class="review">
													<p class="tit">관람평</p>
													<p class="number">
														9.4<span class="ir">점</span>
													</p>
												</div>
											</div>
										</div>
								</a>
									<div class="btn-util">
										<div class="case">
											<!-- 개봉 예매가능 기본-->
											
											<button class="button gblue" name="movieName" value="킹 오브 프리즘 올 스타즈 -프리즘 쇼☆베스트10-">예매</button>
											<!-- <a href="javascript:moveBokdPage('20000400');"
												class="button gblue" title="영화 예매하기">예매</a> -->
										</div>
									</div></li>
								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
								<li name="li_boxoRankList" class=""><a
									href="javascript:gfn_moveDetail('01685000')"
									class="movie-list-info" title="영화상세 보기">
									<input type="hidden"  name="movieName" value="1917" class="movie-info-hidden">
										<p class="rank">
											3<span class="ir">위</span>
										</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
										src="https://img.megabox.co.kr/SharedImg/2020/02/21/IyeZJvAzV3QgEoW4F7HzdS97zfLYfcni_420.jpg"
										alt="1917" class="poster">
										<div class="wrap" style="display: none; opacity: 1;">
											<div class="summary">
												두 명의 병사, 하나의 미션!<br>그들이 싸워야 할 것은 적이 아니라 시간이었다!<br>
												<br>제1차 세계대전이 한창인 1917년.<br>독일군에 의해 모든 통신망이 파괴된 상황
												속에서<br>영국군 병사 '스코필드'(조지 맥케이)와 '블레이크'(딘-찰스 채프먼)에게 하나의
												미션이 주어졌다.<br> <br>함정에 빠진 영국군 부대의 수장 '매켄지' 중령(베네딕트
												컴버배치)에게<br>'에린무어' 장군(콜린 퍼스)의 공격 중지 명령을 전하는 것!<br>
												<br>둘은 1600명의 아군과 '블레이크'의 형(리차드 매든)을 구하기 위해<br>전쟁터
												한복판을 가로지르며 사투를 이어가는데...
											</div>
											<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
											<div class="score">
												<div class="preview">
													<p class="tit">기대평</p>
													<p class="number">
														8.4<span class="ir">점</span>
													</p>
												</div>
												<!--
															기대평이 클때
															<span class="sign small">보다 크다</span>

															관람후가 클때
															<span class="sign big">보다 작다</span>

															같을 때
															<span class="sign equal">같다</span>
														 -->
												<span class="sign big">보다 작다</span>
												<!-- 관람 후가 더 높을 때 -->
												<div class="review">
													<p class="tit">관람평</p>
													<p class="number">
														8.9<span class="ir">점</span>
													</p>
												</div>
											</div>
										</div>
								</a>
									<div class="btn-util">

										<div class="case">
											<!-- 개봉 예매가능 기본-->
										<button class="button gblue" name="movieName" value="1917">예매</button>
										</div>
									</div></li>
								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->

								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->
								<li name="li_boxoRankList" class=""><a
									href="javascript:gfn_moveDetail('01694800')"
									class="movie-list-info" title="영화상세 보기">
										<p class="rank">
											4<span class="ir">위</span>
										</p> <!-- to 개발 : alt 값에 영화 제목 출력 --> <img
										src="https://img.megabox.co.kr/SharedImg/2020/02/25/cH7qHYtiXhvrIwZVNraUkjfGPPUj4M5W_420.jpg"
										alt="인비저블맨" class="poster" >
										<div class="wrap" style="display: none; opacity: 1;">
											<div class="summary">
												모든 것을 통제하려는 소시오패스 남자에게서 도망친 세실리아<br>그의 자살 소식과 함께 상속받게 된
												거액의 유산<br>하지만 그날 이후, 누구에게도 보이지 않는 존재가 느껴지기 시작했다!
											</div>
											<!--
														관람 전이 더 높을 때
														<div class="my-score small">

														관람 후가 더 높을 때
														<div class="my-score big">

														관람 후가 더 같을 때
														<div class="my-score equal">
													 -->
											<div class="score">
												<div class="preview">
													<p class="tit">기대평</p>
													<p class="number">
														7.6<span class="ir">점</span>
													</p>
												</div>
												<!--
															기대평이 클때
															<span class="sign small">보다 크다</span>

															관람후가 클때
															<span class="sign big">보다 작다</span>

															같을 때
															<span class="sign equal">같다</span>
														 -->
												<span class="sign big">보다 작다</span>
												<!-- 관람 후가 더 높을 때 -->
												<div class="review">
													<p class="tit">관람평</p>
													<p class="number">
														8.2<span class="ir">점</span>
													</p>
												</div>
											</div>
										</div>
								</a>
									<div class="btn-util">

										<div class="case">
											<!-- 개봉 예매가능 기본-->
											<a href="javascript:moveBokdPage('01694800');"
												class="button gblue" title="영화 예매하기">예매</a>
										</div>
									</div></li>
								<!-- 박스오피스 종료 -->
								<!-- 박스오피스 시작 -->
								<!-- 각 map 별 첫번째 li 에 first클래스 추가 -->


								<!-- 박스오피스 종료 -->
							</ol>
						</div>
						<!--// main-movie-list -->

						<div class="search-link">
							<div class="cell" style="width:100%">
								<div class="search">
								<form action = "/" method="post">
									<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색"
										class="input-text" id="movieName">
									<button type="button" type ="submit" class="btn" id="btnSearch">
										<i class="iconset ico-search-w"></i> 검색
									</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!--// cont-area  -->

				</div>
			</div>
			<c:import url="/resources/common/footer.jsp"></c:import>
		</div>
	</div>
<script src="/js/movie.js"></script>
</body>
</html>