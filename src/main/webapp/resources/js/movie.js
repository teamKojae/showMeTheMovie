
$(function(){
//	slidSynopsis();
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
	
})

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




