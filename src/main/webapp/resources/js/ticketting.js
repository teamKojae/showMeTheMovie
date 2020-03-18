/**
 * 
 */

$(function() {
	btnAddOn();
	getMovieName();
	
})

function getMovieName(){
	var movieName = $('#ticketMovieName').val();
	if($('#ticketMovieName').val()!= ""){
		$('#mCSB_1_container').find("span:contains('"+movieName+"')").parent().addClass('on');
	}
}


function btnAddOn() {
	$('.btn')
			.on(
					'click',
					function(event) {
						getTheater(event);
						if ($(this).hasClass("on") == false) {
							$(this).addClass('on');
						} else {
							$(this).removeClass('on');
						}

					})

}

function getTheater(event){
	event.preventDefault();
	$.ajax({
		url : "/getBranch",
		type : 'GET',
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : 'JSON',
		data : {
			movieLocation : $(event.target).parent().find('span').text()
		/*
		 * movieLocation :
		 * $(this).children().text()
		 */
		},
		success : function(result) {
			$('#brchList').find('.depth').attr('style','display:none');
			$(event.target).parent().find('.btn').parent().find('.depth').attr('style','display:flex');
			console.log($(event.target).parent().find('.btn').parent());
			//.find('depth')
			var theater = $(event.target).parent().parent().find('.mCSB_container ul');
			theater.empty();
			console.log(theater);
			
			$.each(result,function(index, item){
				theater.append(
						'<li><button id="btn" type="button">'+item+'</button></li>'
				);
			})
			
			
		}
			
	});
}