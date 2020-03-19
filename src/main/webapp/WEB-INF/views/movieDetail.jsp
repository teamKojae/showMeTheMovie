<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href="<c:url value="/resources/css/megabox.min.css" />" rel="stylesheet"> -->
<link href="/css/megabox.min.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<link href="/css/custom.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/js/jquery-3.4.1.min.js"></script>

<script src="/js/common.js"></script>
<script src="/js/movie.js"></script>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


</head>
<body>

	<div class="body-wrap">

		<c:import  url="/resources/common/header.jsp"></c:import>
		

		<div class="movie-detail-page">
			<div class="bg-img"
				style="background-image: url('https://img.megabox.co.kr/SharedImg/2020/02/14/BJ4fa4uF619oFERjOyuxvVYzvOeYDSYV_570.jpg');"></div>
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
							<em>${movie.ticketRate}</em>위 (${movie.ticketRatePersent})
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
							<em>${movie.audience}</em> 명
						</p>
					</div>

				</div>
				<!--// info -->
				<div class="poster">
					<div class="wrap">
						<img
							src="https://img.megabox.co.kr/SharedImg/2020/02/21/lczdtI1vz3Dd1ShuXb0iXj8pTJGbh4wa_420.jpg"
							onerror="noImg(this)" alt="다크 워터스">
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
					<li class="on"><a href="/on/oh/oha/Movie/selectMovieInfo.do"
						title="주요정보 탭으로 이동">주요정보</a></li>
				</ul>

			</div>
			<div class="movie-summary infoContent" id="info">

				<div class="txt">
					${movie.movieTitle}<br>
					 <c:if test="${fn:length(movie.synopsis) gt 200 }">
					<div class="synopsis">
						${movie.synopsis }
					</div>
					</c:if> 
					${movie.synopsis }
				</div>
				<div class="btn-more toggle">
					<button type="button" class="btn">
						<span>닫기</span> <i class="iconset ico-btn-more-arr"></i>
					</button>
				</div>
				<c:import  url="/resources/common/footer.jsp"></c:import>
			</div>
		</div>
	</div>




</body>


</html>


