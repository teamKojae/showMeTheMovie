		/**
		 * 
		 */
		
		$(function() {
			clickTheater();
			clickLocation();
			getMovieName();
			
//			$('.mCSB_container').click(function(event){
//				addOnClass(event);
//			})
		
		})
		
		function getMovieName() {
			var movieName = $('#ticketMovieName').val();
			if ($('#ticketMovieName').val() != "") {
				$('#mCSB_1_container').find("span:contains('" + movieName + "')")
						.parent().addClass('on');
			}
		}
		
		function clickTheater(){
			$('.mCSB_container').bind('click',function(event){
				addOnClass(event);
				getMovieInfoAndTime(event);
			})
		}
		
		
		function clickLocation() {
			$('.btn').on('click', function(event) {
				getTheater(event);
				addOnClass(event);
			})
		}	
		
		
		function addOnClass(event){
			const targetButton =$(event.target).closest('button');
			const buttonClassName = targetButton.attr('class');
			if (targetButton.hasClass("on") == false) {
				$(event.target).closest('ul').find("button").removeClass('on has-issue');
				targetButton.addClass('on has-issue');
			} else {
				targetButton.removeClass('on has-issue');
			}
		}
		
		function getTheater(event) {
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
					const targetLi = $(event.target).closest('li');
					$('#brchList').find('.depth').attr('style', 'display:none');
					targetLi.find('.depth').attr('style', 'display:flex');
		
					//console.log($(event.target).closest('li').find('.depth'));
					// 
					const theater = targetLi.find('.mCSB_container ul');
					theater.empty();
		
					$.each(result, function(index, item) {
						theater.append('<li><button class="locationForTheater" id="btn" type="button">' + item
								+ '</button></li>');
					})
				}
		
			});
		}
		
		function getMovieInfoAndTime(event){
			$.ajax({
				url:"/getMovieInfoAndTime",
				type : 'GET',
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				dataType : 'JSON',
				data : {
					theater : $(event.target).text()
				},
				success : function(result) {
					$('#playScheduleNonList').attr('style','display:none');
					$.each(result,function(index, item){
						console.log(item);
						$('.result').find('ul').empty();
						$('.result').find('ul').append(
								'<li><button type="button" class="btn" >'
								+'<div class="legend"></div>'
								+'<span class="time"><strong title="상영 시작">'+item.movieTimeStart+'</strong><em title="상영 종료">~'+item.movieTimeEnd+'</em></span>'
								+'<span class="title"><strong title="'+item.movieName+'">'+item.movieName+'</strong><em>2D(자막)</em></span>'
								+'<div class="info">'
								+'<span class="theater" title="'+item.theater+'">'+item.theater+'<br>1관'
								+'</span><span class="seat"><strong class="now" title="잔여 좌석">'+item.resideSeat+'</strong>'
								+'<span>/</span><em class="all" title="전체 좌석">/'+item.allSeat+'</em></span>'
								+'</div></button></li>'
										
						);
					})
					
					}
				})
			}
		