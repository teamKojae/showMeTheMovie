$(function() {
	$('.form-control').on('change',function(event) {
		
			event.preventDefault();
			//Disable submit button
			//$(this).prop('disabled', true);
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
						console.log(key);
						console.log(value);
						$('.form-group').append(
								'<input type="checkbox" name="moviePoster" >'
								+'<img src = "/img/'+result[key]+'" alt="Oops..!o!" class="width350"></img>'
						)	
					})
				}
			})
		})
})
