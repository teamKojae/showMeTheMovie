
$(function(){
	getMovieDetail();
	getTickettingThisMovie();
	infoMore();
//	slidSynopsis();
	getStilCutList();
	getSysnopsis();
	
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
	$('.btn-util .button').on('click',function(event){
		const movieName = $(event.target).parent().find('button').val();
		$(location).attr('href', '/ticketing?movieName='+movieName);
	})
}

function tabList(){
	$('.inner-wrap').append(
			'<div class="tab-list fixed">'
			+'<ul>'
			+'<li><a href="/getMovieSynopsis?movieName='+$('.movie-detail-cont .title').text()+'"'
			+'  title="시놉시스 탭으로 이동" onclick="return false">시놉시스</a></li>'
			+'<li><a href="/getMovieImages?movieName='+$('.movie-detail-cont .title').text()+'"'
			+'  title="예고편/스틸컷 탭으로 이동" onclick="return false">이미지/스틸컷</a></li>'
			+'</ul>'
			+'</div>'
	);
}


function getSysnopsis(){
	$('.tab-list li:nth-child(1) a').on('click',function(event){
		console.log(event);
		event.preventDefault();
		console.log('여기옴 ?');
		$('.inner-wrap').empty();
		$.ajax({
			url: $(event.target).attr('href'),
			success : function(result){
				var length = result.length;
				tabList();
				//$('.inner-wrap ul li:nth-child(1)').addClass('on');
				$('.inner-wrap').append(
						'<div class="movie-summary infoContent" id="info">'
						+'<div class="txt">'+result+'</div>'
						+'<div class="btn-more toggle">'
							+'<button type="button" class="btn">'
								+'<span>닫기</span> <i class="iconset ico-btn-more-arr"></i>'
							+'</button>'
						+'</div>'
					+'</div>'
				)
			}
		})
	})
}

function getStilCutList(){
	$('.tab-list li:nth-child(2) a').on('click',function(event){
		event.preventDefault();
		/*$('.tab-list li').removeClass('on');
		$(event.target).closest('li').addClass('on');*/
		$('.inner-wrap').empty();
		$.ajax({
			url : $(event.target).attr('href'),
			success : function(result){
				var length = result.length;
				tabList();
				$('.inner-wrap ul li:nth-child(2)').addClass('on');
				$('.inner-wrap').append(
						'<div class="stair-slide" id="tab2">'
						+'<h2 class="tit small">'+$('.title').text()
						+'에 대한 <span class="font-gblue" id="stilCnt">'+length+'</span>개의 스틸컷이 있어요!</h2>'
						+'<div style="height: 1200px;" class="stair-slide-list"></div>'
						+'</div>'
				);
				
				
				$.each(result,function(index,item){
					var xPosition =  ( index % 4 ) * 280;
					
					$('.stair-slide-list').append(
						'<div class="thumb" row="0" col="0" style="display: block; opacity: 1;' 
						+'transform: translate('+xPosition+'px, 0px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;">'
						+'<a href="#" title="스틸컷 보기">'
						+'<img id="stilCut" src="/img/'+item+'" alt="이미지오류에옹">'
						+'</a></div>'
					);
					
					//console.log("index :  "+index);
					var yPosition = 0;
					var xPosition =  ( index % 4 ) * 280;
					if(index > 3 ){
						for(var i = index-4 ; i >= 0 ; i-=4){
							var imageHeight =  $('.stair-slide-list .thumb').eq(i).find('#stilCut').height();
							yPosition += ( imageHeight + 20 );
							var div = $('.thumb').eq(index);
							div.attr('style','transform: translate('+xPosition+'px, '+yPosition+'px)');
						}
					}
				});
				
				/*$.each($('.thumb'),function(index,value){
					var yPosition = 0;
					var xPosition =  ( index % 4 ) * 280;
					if(index > 3 ){
						for(var i = index-4 ; i >= 0 ; i-=4){
							var imageHeight =  $('.stair-slide-list .thumb').eq(i).find('#stilCut').height();
							yPosition += ( imageHeight + 20 );
							var div = $('.thumb').eq(index);
							div.attr('style','transform: translate('+xPosition+'px, '+yPosition+'px)');
						}
					}
				})*/
				
				
				
				
				/*console.log($('.stair-slide-list .thumb').eq(0).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(1).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(2).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(3).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(4).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(5).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(6).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(7).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(8).find('#stilCut').height());
				console.log($('.stair-slide-list .thumb').eq(9).find('#stilCut').height());*/
				
			/*	console.log($('.thumb img').eq(8).height());
				console.log($('.thumb img').eq(9).height());
				console.log($('.thumb img').eq(10).height());*/
				
			}
		})
	})
}


