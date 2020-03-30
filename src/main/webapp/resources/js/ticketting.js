$(function() {
	clickTheater();
	clickLocation();
	getMovieName();
	requestKakaoPay();
	clickMovie();
})


function requestKakaoPay() {
	$('.button').on('click', function(event) {
		$('#kakaoPay').submit();
	})
	
}

function changeChoiseMovie(){
	$('#mCSB_1_container').find('button').bind('click',function(event){
		$('.theater-choice .on').removeClass('on has-issue');
		$('.result').find('ul').empty();
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
	$('.movie-choice .btn').bind('click', function(event) {
		addOnClass(event);
		changeChoiseMovie();
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
					locationName : $(event.target).closest('button').find('span').text()
				/*
				 * movieLocation : $(this).children().text()
				 */
				},
				success : function(result) {
					const targetLi = $(event.target).closest('li');
					$('#brchList').find('.depth').attr('style', 'display:none');
					targetLi.find('.depth').attr('style', 'display:flex');

					// console.log($(event.target).closest('li').find('.depth'));
					// 
					const theater = targetLi.find('.mCSB_container ul');
					theater.empty();

					$
							.each(
									result,
									function(index, item) {
										theater
												.append('<li><button class="locationForTheater" id="btn" type="button" value="'+item+'">'
														+ '<span>'+item+'</span>'
														+ '</button></li>');
									})
				}

			});
}

/*function getScreen(){
	$('.result .btn').bind('click', function(event) {
		event.preventDefault();
		const data = $(event.target).find('form').serialize();
		$(event.target).closet('form').submit();
	})
}
*/
function getMovieInfoAndTime(event) {
	/*	var dataArray = new Array();
	var movieName = $('.on span');
	var locationName = $('.on span')[6];
	var branchName = $('.on span')[7];
	console.log(movieName);
	console.log(movieName.text());
	console.log(locationName.text());
	console.log(branchName.text());*/
	
	//var data = $('.on').find('span').text();
	//console.log(data);
	
	
	var dataArray = new Array();
	$.each($(".on"), function(key, value){
		if($(this).val() != ""){
		dataArray.push($(this).val());
		}
	})
	if(dataArray.length < 3){
		alert('영화, 극장을 모두 선택해주세요');
		return;
	}
	
	addOnClass(event);
	
	if(dataArray.length > 3 ){
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
					/*'movieDate' : dataArray[0],*/
					'movieDate' : '2020-03-20',
					'movie.movieName' : dataArray[1],
					'branch.location.locationName' : dataArray[2],
					'branch.branchName' : dataArray[3]
				},
			
				
				success : function(result) {
					$('#playScheduleNonList').attr('style', 'display:none');
					$('.result').find('ul').empty();
					$.each(result,function(index, item) {
										console.log(item);
										$('.result').find('ul').append(
														'<li>'
														+'<form action="/getSelectScreen" method="post">'
														+'<button type="submit" class="btn" >'
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
																+ '<br>'+item.theater.theaterCode+'관'
																+ '</span><span class="seat"><strong class="now" title="잔여 좌석">'
																+ item.theater.theaterLeftSeat
																+ '</strong>'
																+ '<span>/</span><em class="all" title="전체 좌석">'
																+ item.theater.theaterAllSeat
																+ '</em></span>'
																+ '</div></button>'
																+'<input type="hidden" name="movie.movieName" value="'+item.movie.movieName+'" >'
																+'<input type="hidden" name="movieStartTime" value="'+item.movieStartTime+'" >'
																+'<input type="hidden" name="movieEndTime" value="'+item.movieEndTime+'" >'
																+'<input type="hidden" name="branch.branchName" value="'+item.branch.branchName+'" >'
																+'<input type="hidden" name="theater.theaterCode" value="'+item.theater.theaterCode+'" ></form>'
																+'</li>'
												);
									})
				}
			})
}