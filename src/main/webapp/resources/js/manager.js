$(function() {
	imageUploadAjax();
	// checkThumbNailAndBG();
	selectWhereRegiste();
	selectMovie();
	// selectLocation();
	
	selectLocation();
	selectBranch();
	selectTheater();
	selectBranchInTheater();
})

$(function(){
	// 첫 입장 시 첫번째 영화 클릭되있는 상태와 이미지 셋팅
	// 영화선택
	$('#mCSB_2_container').find('li:first-child button').addClass('on');
	// 극장등록
	$('#masterBrch').find('li:first-child > a').addClass("on");
	// 브랜치 등록
	$('#tab10').addClass("on");
})


function targetFunction(target){
	console.log(target);
	if( target.hasClass('on') == false){
		console.log(target);
		// 브랜치 클릭 시 on Class 추가
		target.addClass('on');
	}else{
		target.removeClass('on');
	}
}


function selectTheater(){
	$('#masterTheater #tab10').on('click',function(event){
		var target = $(event.target);
		console.log(target);
		targetFuntion(target);
	})
}

function selectBranchInTheater(){
	$(document).on('click','#masterMovie .tab-list-choice a',function(event){
		console.log($(event.target ));
		console.log($(this ));
		targetFuntion( $(this) );
	})
}

function selectMovie(){
	$('#masterMovie .list-section button').on('click',function(event){
		var target = $(event.target)
		target.closest('ul').find('button').removeClass('on');
		target.addClass('on');
		
		var imagePoster = target.attr('data-img-path');
		$('.poster').attr('src',"/img/"+imagePoster);
	})
}


function selectBranch(){
	$('#masterBrch .list-section button').on('click',function(event){
		var target = $(event.target);
		if( target.hasClass('on') == false){
			// 브랜치 클릭 시 on Class 추가
			target.addClass('on');
			
			// 상영관 선택탭에 브랜치명 추가
			var branchName = target.text();
			$('#masterTheater .tab-list-choice ul').append(
					'<li><a href  '
					+'title=" 강북구지점 선택" data-area-cd="10"'
					+'onclick="return false">'+branchName+'</a></li>'
			);
			// 상영관 선택탭 안에 브랜치 추가되면 해당 브랜치의 상영관 추가
			$.ajax({
				url:"/getTheaterInAddMovie",
				method:"GET",
				data: {
					branchName : branchName
					}
			}).done(function(data){
				console.log(data);
				var theaterList = function(){
									$.each(data,function(index, value){
									'<li><button type="button" class="btn"'
									+'data-area-cd="'+index+'0" data-theater-no="'+value.theaterCode+
										'">'+value.theaterName+'</button></li>'
									})
				}
				// 상영관 탭에서 브랜치마다 상영관 영역 append.   사실 여기서 ul 밑에 $.each로 해주고 싶었음 ㅠㅠ
				$('#masterTheater .list-section').append(
						'<div id="tab'+data[0].branch.branchCode+'0" class="tab-layer-cont">'
						+'<div class="scroll m-scroll">'
							+'<ul class="list">'
							+'</ul>'
						+'<div>'
					+'</div>'
				)
				
				// 각 브랜치 영역마다 데이터 append (li를 넣어줌)
				$.each(data,function(index, value){
					 	$('#masterTheater .list-section #tab'+value.branch.branchCode+'0 ul' ).append(
						'<li><button type="button" class="btn"'
						+'data-area-cd="'+index+'0" data-theater-no="'+value.theaterCode+
						'">'+value.theaterName+'</button></li>'
						)
				 })
			});
		}else{
			target.removeClass('on');
		}
		
	})
}

function selectLocation(){
	$('.tab-list-choice a').on('click',function(event){
		var target = $(event.target);
		var tabId = target.attr('data-area-cd');
		$('#masterBrch .tab-list-choice li a').removeClass('on');
		$('.list-section > div').removeClass('on');
		target.addClass('on');
		$('#tab'+tabId).addClass('on');
		
	})
}



/*
 * function selectLocation(){ $('.tab-list-choice
 * a').on('click',function(event){ $.ajax({ url : $(this).attr('href'), success :
 * function(result) { $('#masterBrch').find('.on').removeClass('on'); var target =
 * $(event.target); target.closest('ul').find('a').removeClass('on');
 * target.addClass('on');
 * 
 * $('#masterBrch .list-section').find('.on').removeClass('on');
 * 
 * var tabId = $('#tab'+target.attr('data-area-cd')); tabId.addClass('on');
 * tabId.find('div').addClass('on'); tabId.find('div li').addClass('on');
 * tabId.find('ul').empty(); $.each(result,function(key,value){
 * tabId.find('ul').append( '<li>' +'<button type="button" class="btn"
 * data-brch-no="'+value.branchCode+'">'+value.branchName+'</button>' +'</li>' ) }) } }) }) }
 */

/*
 * var countChecked = function() { var n = $( "input:checked" ).length; };
 * countChecked(); $( "input[type=checkbox]" ).on( "click", countChecked );
 */

function selectWhereRegiste(){
	$('.tab-left-area').find('.btn').bind('click',function(event){
		// 좌측 ~~등록의 on 제거 , 클릭한거 on 등록
		$(event.target).closest('ul').find('li').removeClass('on');
		$(this).closest('li').addClass('on');
		$('.ltab-layer-wrap').find('div').removeClass('on');
		
		// #masterMovie , #masterBranch
		var hrefTarget = $(event.target).closest('a').attr('href');
		var sectionTarget = $('.ltab-layer-wrap').find(hrefTarget);
		sectionTarget.addClass('on');
		var contentsTarget = sectionTarget.find('.list-section');
		contentsTarget.addClass('on');
		// $(event.target).closest('.tab-layer-cont').addClass('on');
		contentsTarget.find('div:first-child').addClass('on');
	})
	
}

function checkThumbNailAndBG(){
	$("input[type=checkbox]").on('click',function(event){
		var check = $('.CheckThumbNailAndBG').is(":checked");
		var checkLength = $("input:checked").legnth;
		if( checkLength > 3 ){
			alert("2개만 선택해주세요. 첫번째 : 대표이미지,  두번째 : 배경이미지 ")
		}
	})
}

function imageUploadAjax(){
	$('.form-control').on('change',function(event) {
		event.preventDefault();
		$('.form-group .selectThumbnail').empty();
		$('.form-group .selectThumbnail').append(
				'대표이미지와 배경이미지을 선택해주세요'
				);
		var form = document.forms[0];
		var formData = new FormData(form);
		// Ajax call for file uploaling
		$.ajax({
			enctype: 'multipart/form-data',
			url : '/fileUpload',
			type : 'POST',
			cache : false,
			contentType : false,
			processData : false,
			data : formData,
			success : function(result) {
				$.each(result, function(index,value){
					$('.form-group').append(
							'<div class="thumbNailImages widthImage">'
							+'<input type="checkbox" name="CheckThis" class="CheckThumbNailAndBG">'
							+'<input type="hidden" name="movieImages" value="'+result[index]+'">'
							+'<img src = "/img/'+result[index]+'" alt="Oops..!o!" class="widthImage"></img>'
							+'</div>'
					)	
				})
			}
		})
	})
}