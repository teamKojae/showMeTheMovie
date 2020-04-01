<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href="<c:url value="/resources/css/megabox.min.css" />" rel="stylesheet"> -->
<link href="/css/megabox.min.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	<div class="body-wrap">

		<c:import url="/resources/common/header.jsp"></c:import>


		<div class="movie-detail-page">
			<div class="bg-img"
				style="background-image: url('/img/${movie.moviePosterBG}');"></div>
			<div class="bg-pattern"></div>
			<div class="bg-mask"></div>

			<!-- movie-detail-cont -->
			<div class="movie-detail-cont">
				<!-- 개봉 예매가능-->
				<p class="contents-type"></p>
				<p class="title">${movie.movieName}</p>
				<div class="btn-util"></div>
				<!-- info -->
				<div class="info">
					<div class="rate">
						<p class="tit">예매율</p>
						<p class="cont">
							<em>${movie.movieTicketRate}</em>위
							(${movie.movieTicketRatePersent}%)
						</p>
					</div>

					<div class="audience ">
						<div class="tit ">
							<span class="m-tooltip-wrap ">누적관객수 <!-- 2019-09-11 툴팁 보기 수정 -->
								<em class="m-tooltip ml05"> <i
									class="iconset ico-tooltip-gray">툴팁보기</i>
							</em>
							</span>
						</div>
						<p class="cont">
							<em>${movie.movieAudience}</em> 명
						</p>
					</div>

				</div>
				<!--// info -->
				<div class="poster">
					<div class="wrap">
						<img src="/img/${movie.moviePoster}" onerror="noImg(this)"
							alt="다크 워터스">
					</div>
				</div>
				<div class="reserve screen-type col-2">
					<div class="reserve">
						<a href="/ticketing?movieName=${movie.movieName}"
							class="btn reserve" title="영화 예매하기">예매</a>
					</div>
				</div>
			</div>
			<!--// movie-detail-cont -->
		</div>

		<div class="inner-wrap">
			<div class="tab-list fixed">
				<ul>
					<li class="on"><a href="/getMovieSynopsis?movieName=${movie.movieName }" title="시놉시스 탭으로 이동" onclick="return false">시놉시스</a></li>
					<li><a href="/getMovieImages?movieName=${movie.movieName }" title="예고편/스틸컷 탭으로 이동" onclick="return false">이미지/스틸컷</a></li>

				</ul>

			</div>
			<div class="movie-summary infoContent" id="info">

				<div class="txt">${movie.movieSynopsis }</div>
				<div class="btn-more toggle">
					<button type="button" class="btn">
						<span>닫기</span> <i class="iconset ico-btn-more-arr"></i>
					</button>
				</div>

			</div>
			<div class="tit-util mt70 mb15 oneContent">
				<h2 class="tit small">
					라라랜드에 대한 <span class="font-gblue">958</span>개의 이야기가 있어요!
				</h2>
			</div>
			<div class="movie-idv-story oneContent">
				<ul>
					<!-- 댓글 영역 -->
					<li class="type01 oneContentTag">
						<div class="story-area">
							<div class="user-prof">
								<div class="prof-img">
									<img src="/img/userIcon.png" alt="프로필 사진"
										title="프로필 사진" onerror="noImg(this, 'human')">
								</div>
								<p class="user-id">koj**</p>
							</div>
							<div class="story-box">
								<div class="story-wrap review">
									<div class="tit">관람평</div>
									<div class="story-cont">
										<div class="story-point">
											<span>10</span>
										</div>
										<div class="story-recommend">
											<em>연출</em><em>OST</em>
										</div>
										<div class="story-txt">다시 봐도 최고</div>
										<div class="story-like">
											<button type="button" class="oneLikeBtn" title="댓글 추천"
												data-no="613571" data-is="N">
												<i class="iconset ico-like-gray"></i> <span>0</span>
											</button>
										</div>
										<div class="story-util">
											<div class="post-funtion">
												<div class="wrap">
													<button type="button" class="btn-alert">옵션보기</button>
													<div class="balloon-space user">
														<div class="balloon-cont">
															<div class="user">
																<p class="reset a-c">
																	스포일러 및 욕설/비방하는<br>내용이 있습니까?
																</p>
																<button type="button" class="maskOne" data-no="613571">
																	댓글 신고 <i class="iconset ico-arr-right-green"></i>
																</button>
															</div>
															<div class="btn-close">
																<a href="#" title="닫기"><img
																	src="/static/pc/images/common/btn/btn-balloon-close.png"
																	alt="닫기"></a>
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
						<div class="story-date">
							<div class="review on">
								<span>16 분전</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<c:import url="/resources/common/footer.jsp"></c:import>
	</div>
	<script src="/js/movie.js"></script>
</body>
</html>


