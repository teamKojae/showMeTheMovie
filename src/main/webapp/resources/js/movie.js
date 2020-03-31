
$(function(){
	getMovieDetail();
	getTickettingThisMovie();
	infoMore();
//	slidSynopsis();
	getStilCutList();
	
})

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
			+'<li><a href="/getMovieSynopsis?movieName="'+$('.movie-detail-cont .title').text()
			+' title="시놉시스 탭으로 이동" onclick="return false">시놉시스</a></li>'
			+'<li><a href="/getMovieImages?movieName="'+$('.movie-detail-cont .title').text()
			+' title="예고편/스틸컷 탭으로 이동" onclick="return false">이미지/스틸컷</a></li>'
			+'</ul>'
			+'</div>'
	);
}

function getStilCutList(){
	$('.tab-list li a').on('click',function(event){
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
					console.log("index :  "+index);
					var yPosition = 0;
					for(var i = index ; i < 0 ; i-4){
						console.log(i);
						var imageHeight =  $('.thumb img').get(i).height;
						console.log(imageHeight);
						yPosition += ( imageHeight + 20 );
						}
					/*var i = 0;
					var yPosition = 0;
					if( index != 0 ){
						if ( index >3){
							i = index - 4;
							var imageHeight =  $('.thumb img').get(i).height;
							console.log(imageHeight);
							yPosition += ( imageHeight + 20 );
						}
					}*/
					
					
					$('.stair-slide-list').append(
						'<div class="thumb" row="0" col="0" style="display: block; opacity: 1;' 
						+'transform: translate('+xPosition+'px, '
						+ yPosition +'px); transition: transform 0s ease 0s, opacity 0.2s ease-out 0.2s;">'
						+'<a href="#" title="스틸컷 보기">'
						+'<img src="/img/'+item+'" alt="이미지오류에옹">'
						+'</a></div>'
					);
				});
				
			}
		})
	})
}


