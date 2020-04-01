
$(function(){
	getMovieDetail();
	getTickettingThisMovie();
	infoMore();
//	slidSynopsis();

	
})


function totalWon(){
	
}

function infoMore(){
	if($('.synopsis').length > 200){
		$('.movie-summary').addClass('on');
	}

$('.btn').on('click',function(event){
	if($('.btn-more').hasClass("on") == true){
		$('.movie-summary').removeClass('on');
		$('.btn-more').removeClass('on');
	}else{
		$('.movie-summary').addClass('on');
		$('.btn-more').addClass('on');
	}
})
}

function slidSynopsis(){
	$('.btn-more').on('click',function(event){
		if($('.btn-more').hasClass("on") == true){
			console.log('on 있음');
			$('.synopsis').slideUp();
			$('.btn-more').removeClass('on');
		}else{
			console.log('on 없음');
			$('.synopsis').slideDown();
			$('.btn-more').addClass('on');
		}
		
		
	})
}


function getMovieDetail(){
	$('.movie-list-info').on('click',function(event){
		const movieName = $(event.target).parent().find('.movie-info-hidden').val();
		$(location).attr('href', '/movieDetail?movieName='+movieName);
	})
}


function getTickettingThisMovie(){
	$('.gblue').on('click',function(event){
		const movieName = $(event.target).parent().find('button').val();
		$(location).attr('href', '/ticketing?movieName='+movieName);
	})
}


