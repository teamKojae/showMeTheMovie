<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8");%>
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
				<p class="title">다크 워터스</p>
				<p class="title-eng">Dark Waters</p>









				<div class="btn-util"></div>










				<!-- info -->
				<div class="info">


					<div class="rate">
						<p class="tit">예매율</p>




						<p class="cont">
							<em>1</em>위 (10.9%)
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
							<em>67,612</em> 명
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
						<a href="javascript:fn_bookingForm('20003000','basic');"
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
			<div class="movie-summary infoContent on" id="info">

				<div class="txt">
					인류의 99%는 이미 중독되었다<br>&lt;스포트라이트&gt; 제작진의 충격 고발 실화<br> <br>젖소
					190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>기형아들의 출생<br>그리고,
					한 마을에 퍼지기 시작한 중증 질병들...<br> <br>대기업의 변호를 담당하는 대형 로펌의 변호사
					‘롭 빌럿’(마크 러팔로)은<br>세계 최대의 화학기업 듀폰의 독성 폐기물질(PFOA) 유출 사실을 폭로한다.
					<br>그는 사건을 파헤칠수록 독성 물질이 프라이팬부터 콘택트렌즈, 아기 매트까지<br>우리 일상 속에
					침투해 있다는 끔찍한 사실을 알게 되고<br>자신의 커리어는 물론 아내 ‘사라’(앤 해서웨이)와 가족들,<br>모든
					것을 건 용기 있는 싸움을 시작한다.<br> <br>대한민국에서도 일어나고 있는 현재진행형 실화가
					공개된다
				</div>
				<div class="btn-more toggle on">
					<button type="button" class="btn">
						<span>닫기</span> <i class="iconset ico-btn-more-arr"></i>
					</button>
				</div>
				<c:import  url="/resources/common/footer.jsp"></c:import>
			</div>
			<p />
			<p />
			<p />
			<p />
			<p />
			<p />
			<p />
			<p />
			<p />
			<p />
			<p />
			<p />
		</div>
	</div>




</body>


</html>


