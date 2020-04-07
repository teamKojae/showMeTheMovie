$(function() {
	clickTheater();
	clickLocation();
	getMovieName();
	requestKakaoPay();
	clickMovie();
	movieNotRegis();
	getMovieForDate();
})

<<<<<<< HEAD
=======
function getMovieForDate(){
	$('.date-area button').on('click',function(event){
		$(this).closest('div').find('button').removeClass('on');
		var target = $(event.target);
		target.addClass('on');
		$.ajax({
			url:"/getMovieForDate",
			data:{
				movieDate:target.val()
			}
		}).done(function(result){
			$('.movie-choice .list #mCSB_1_container > ul').empty();
		/*	
			<c:when test="${status.index % 4 eq 0}">
			<span class="movie-grade small age-12">12세이상관람가</span>
		</c:when>
		
		<c:when test="${status.index % 4 eq 2}">
			<span class="movie-grade small age-15">15세이상관람가</span>
		</c:when>
		
		<c:when test="${status.index % 8 eq 5}">
			<span class="movie-grade small age-19">19세이상관람가</span>
		</c:when>
		
		<c:otherwise>
			<span class="movie-grade small age-all">전체관람가</span>
		</c:otherwise>*/
			
			$.each(result.movieList,function(index,value){
				$('#mCSB_21_container').attr('style','display:none');
//				$('.result #mCSB_21_container ul').empty();
				$('#playScheduleNonList').attr('style','display:block');
				$('.theater-choice .list .on').removeClass('on');
				$('.theater-choice .depth li').empty();
				var span ;
				if( index %4 == 0 ){
					span = '<span class="movie-grade small age-12">12세이상관람가</span>'
				}else if( index %4 == 2){
					span = '<span class="movie-grade small age-15">15세이상관람가</span>'
				}else if( index %8 == 5){
					span = '<span class="movie-grade small age-19">19세이상관람가</span>'
				}else{
					span = '<span class="movie-grade small age-all">전체관람가</span>'
				}
				
				
				$('#mCSB_1_container > ul').append(
				'<li>'
					+'<button type="button" class="btn" value="'+value.movieName+'" disabled>'
					+'<i class="iconset ico-heart-small">보고싶어 설정안함</i>'
					+ span
					+'<span class="txt">'+value.movieName+'</span>'
					+'</button>'
				+'</li>'
				);
			})
			$.each(result.movie,function(index,value){
				$('#mCSB_1_container > ul').append(
				'<input type="hidden" value="'+value.movieName+'" class="regisMovie" name="regisMovie">'
				);
			})
			movieNotRegis();
		})
	})
}
function movieNotRegis(){
	var regisMovie = $('input[name="regisMovie"');
	$.each(regisMovie,function(index,value){
		$('#mCSB_1_container > ul li').find('span:contains('+value.value+')').closest('button').attr('disabled',false);
	})
}

>>>>>>> 5410ff1cb4f560a3938ced51439ea24db4215ff4
function requestKakaoPay() {
	$('.button').on('click', function(event) {
		$('#kakaoPay').submit();
	})

}

<<<<<<< HEAD
function changeChoiseMovie() {
	$('#mCSB_1_container').find('button').bind('click', function(event) {
=======
function changeChoiseMovie(){
	$('#mCSB_1_container ul').on('click','li',function(event){
		console.log($(event.target));
>>>>>>> 5410ff1cb4f560a3938ced51439ea24db4215ff4
		$('.theater-choice .on').removeClass('on has-issue');
		$('.theater-choice').find('.all-list > button').addClass('on');
		$('.result').find('ul').empty();
		/*$.ajax({
			url:"",
			data:{
				movieName: $(event.target).val()
			}
		
		}).done(function(result){})
		*/
		$('#movie-schedule-area').attr('style', 'display:none');
		$('#playScheduleNonList').attr('style', 'display:block');

	})
}

function getMovieName() {
	var movieName = $('#ticketMovieName').val();
	if ($('#ticketMovieName').val() != "") {
		$('#mCSB_1_container').find("span:contains('" + movieName + "')")
				.parent().addClass('on');
	}
}

function clickMovie() {
	$('#mCSB_1_container ul').on('click','button',function(event){
		addOnClass(event);
		changeChoiseMovie();
		$('.theater-choice .depth').attr('style','display:none');
	})
}

function clickTheater() {
	$('.theater-choice .mCSB_container').bind('click', function(event) {
		getMovieInfoAndTime(event);
	})
}

function clickLocation() {
	$('.theater-choice .list-area .btn').on('click', function(event) {
		getTheater(event);
	})
}

function addOnClass(event) {
	const targetButton = $(event.target).closest('button');
	const buttonClassName = targetButton.attr('class');
	if (targetButton.hasClass("on") == false) {
		$(event.target).closest('ul').find("button")
				.removeClass('on has-issue');
		targetButton.addClass('on has-issue');
	} else {
		targetButton.removeClass('on has-issue');
	}
}
// 69-106 theater
function getTheater(event) {
	event.preventDefault();
	addOnClass(event);
	$
			.ajax({
				url : "/getBranch",
				type : 'GET',
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				dataType : 'JSON',
				data : {
					locationName : $(event.target).closest('button').find(
							'span').text()
				/*
				 * movieLocation : $(this).children().text()
				 */
				},
				success : function(result) {
					const targetLi = $(event.target).closest('li');
					$('#brchList').find('.depth').attr('style', 'display:none');
					targetLi.find('.depth').attr('style', 'display:flex');
					$('#mCSB_21_container').attr('style', 'display:none');
					$('#playScheduleNonList').attr('style', 'display:block');
					// console.log($(event.target).closest('li').find('.depth'));
					// 
					const theater = targetLi.find('.mCSB_container ul');
					theater.empty();

					$
							.each(
									result,
									function(index, item) {
										theater
												.append('<li><button class="locationForTheater" id="btn" type="button" value="'
														+ item
														+ '">'
														+ '<span>'
														+ item
														+ '</span>'
														+ '</button></li>');
									})
									
									
									
				}

			});
}

function getMovieInfoAndTime(event) {

	var dataArray = new Array();
	$.each($(".on"), function(key, value) {
		if ($(this).val() != "") {
			dataArray.push($(this).val());
		}
	})
	if (dataArray.length < 3) {
		alert('영화, 극장을 모두 선택해주세요');
		return;
	}

	addOnClass(event);

	if (dataArray.length > 3) {
		dataArray.pop();
	}

	dataArray.push($(event.target).closest('button').val());
	console.log(dataArray);

	$
			.ajax({
				url : "/getMovieInfoAndTime",
				type : 'GET',
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				dataType : 'JSON',

				data : {
<<<<<<< HEAD
					/* 'movieDate' : dataArray[0], */
					'movieDate' : '2020-04-07',
=======
					/*'movieDate' : dataArray[0],*/
					'movieDate' : $('#formDeList > div .on').val(),
>>>>>>> 5410ff1cb4f560a3938ced51439ea24db4215ff4
					'movie.movieName' : dataArray[1],
					'branch.location.locationName' : dataArray[2],
					'branch.branchName' : dataArray[3]
				},

				success : function(result) {
					console.log(result.length);
					$('.result0').attr('style','display:none');
					$('#playScheduleNonList').attr('style', 'display:none');
					$('#mCSB_21_container').attr('style', 'display:block');
					if(result.length < 1 ){
						$('.result0').attr('style','display:block');
					}
					
					$('.result').find('ul').empty();
					$
							.each(
									result,
									function(index, item) {
										$('.result')
												.find('ul')
												.append(
														'<li>'
																+ '<form action="/getSelectScreen" method="post">'
																+ '<button type="submit" class="btn" >'
																+ '<div class="legend"></div>'
																+ '<span class="time"><strong title="상영 시작">'
																+ item.movieStartTime
																+ '</strong>'
																+ '<em title="상영 종료">~'
																+ item.movieEndTime
																+ '</em>'
																+ '</span><span class="title"><strong title="'
																+ item.movie.movieName
																+ '">'
																+ item.movie.movieName
																+ '</strong><em>2D(자막)</em></span>'
																+ '<div class="info">'
																+ '<span class="theater" title="'
																+ item.branch.branchName
																+ '">'
																+ item.branch.branchName
																+ '<br>'
																+ item.theater.theaterName
																+ '</span><span class="seat"><strong class="now" title="잔여 좌석">'
																+ item.theater.theaterLeftSeat
																+ '</strong>'
																+ '<span>/</span><em class="all" title="전체 좌석">'
																+ item.theater.theaterAllSeat
																+ '</em></span>'
																+ '</div></button>'
																+ '<input type="hidden" name="movie.movieName" value="'
																+ item.movie.movieName
																+ '" >'
																+ '<input type="hidden" name="movie.moviePoster" value="'
																+ item.movie.moviePoster
																+ '" >'
																+ '<input type="hidden" name="movieStartTime" value="'
																+ item.movieStartTime
																+ '" >'
																+ '<input type="hidden" name="movieEndTime" value="'
																+ item.movieEndTime
																+ '" >'
																+ '<input type="hidden" name="branch.branchName" value="'
																+ item.branch.branchName
																+ '" >'
																+ '<input type="hidden" name="theater.theaterName" value="'
																+ item.theater.theaterName
																+ '" ></form>'
																+ '</li>');
									})
				}
			})
}