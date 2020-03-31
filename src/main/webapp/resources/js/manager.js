$(function() {
	imageUploadAjax();
	//checkThumbNailAndBG();
	selectWhereRegiste();
	selectMovie();
	selectLocation();
	selectBranch();
})

$(function(){
	//첫 입장 시 첫번째 영화 클릭되있는 상태와 이미지 셋팅
	//영화선택
	$('#mCSB_2_container').find('li:first-child button').addClass('on');
	//극장등록
	$('#masterBrch').find('li:first-child > a').addClass("on");
	
})


function selectMovie(){
	$('#masterMovie').on('click',function(event){
		$(this).find('.list button').removeClass('on');
		$(event.target).addClass('on');
		
		var imagePoster = $(event.target).attr('data-img-path');
		$('.poster').attr('src',"/img/"+imagePoster);
		
	})
}

function selectBranch(){
	$('#masterBrch button').bind('click',function(event){
		event.preventDefault();
		
		console.log($(event.target));
		
		var target = $(event.target);
		if( target.hasClass('on') == false){
			target.addClass('on');
		}else{
			target.removeClass('on');
		}
		
	})
}

function selectLocation(){
	$('.tab-list-choice a').on('click',function(event){
		$.ajax({
			url : $(this).attr('href'),
			success : function(result) {
				$('#masterBrch').find('.on').removeClass('on');
				var target = $(event.target);
				target.closest('ul').find('a').removeClass('on');
				target.addClass('on');
				
				$('#masterBrch .list-section').find('.on').removeClass('on');
				
				var tabId = $('#tab'+target.attr('data-area-cd'));
				tabId.addClass('on');
				tabId.find('div').addClass('on');
				tabId.find('div li').addClass('on');
				tabId.find('ul').empty();
				$.each(result,function(key,value){
					tabId.find('ul').append(
							'<li>'
							+'<button type="button" class="btn" data-brch-no="'+value.branchCode+'">'+value.branchName+'</button>'
							+'</li>'	
						)
				})
			}
		})
	})
}

/*
var countChecked = function() {
  var n = $( "input:checked" ).length;
};
countChecked();
 
$( "input[type=checkbox]" ).on( "click", countChecked );
*/

function selectWhereRegiste(){
	$('.tab-left-area').find('.btn').bind('click',function(event){
		// 좌측 ~~등록의 on 제거 , 클릭한거 on 등록
		$(event.target).closest('ul').find('li').removeClass('on');
		$(this).closest('li').addClass('on');
		$('.ltab-layer-wrap').find('div').removeClass('on');
		
		//#masterMovie ,  #masterBranch
		var hrefTarget = $(event.target).closest('a').attr('href');
		var sectionTarget = $('.ltab-layer-wrap').find(hrefTarget);
		sectionTarget.addClass('on');
		var contentsTarget = sectionTarget.find('.list-section');
		contentsTarget.addClass('on');
		contentsTarget.find('div:first-child').addClass('on');
	})
	
}

function checkThumbNailAndBG(){
	console.log('클릭됬나염');
	$("input[type=checkbox]").on('click',function(event){
		console.log('클릭됬나염');
		var check = $('.CheckThumbNailAndBG').is(":checked");
		console.log( check );
		
		var checkLength = $("input:checked").legnth;
		console.log(checkLength);
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
				$.each(result, function(key,value){
					$('.form-group').append(
							'<div class="thumbNailImages widthImage">'
							+'<input type="checkbox" name="CheckThis" class="CheckThumbNailAndBG">'
							+'<input type="hidden" name="movieImages" value="'+result[key]+'">'
							+'<img src = "/img/'+result[key]+'" alt="Oops..!o!" class="widthImage"></img>'
							+'</div>'
					)	
				})
			}
		})
	})
}