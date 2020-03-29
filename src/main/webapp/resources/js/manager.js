$(function() {
	imageUploadAjax();
	checkThumbNailAndBG();
})

/*
var countChecked = function() {
  var n = $( "input:checked" ).length;
};
countChecked();
 
$( "input[type=checkbox]" ).on( "click", countChecked );
*/
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