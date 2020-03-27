$(function() {
	$('.form-control').on('change',function(event) {
			event.preventDefault();
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
					$('.form-group').append(
							'<h2 class="selectThumbnail">대표이미지와 썸네일을 선택해주세요 </h2>'
							);
					$.each(result, function(key,value){
						console.log(key);
						console.log(value);
						$('.form-group').append(
								'<input type="checkbox" name="CheckThis" >'
								+'<input type="hidden" name="movieImages" value="'+result[key]+'">'
								+'<img src = "/img/'+result[key]+'" alt="Oops..!o!" class="width330"></img>'
								
						)	
					})
				}
			})
		})
})
