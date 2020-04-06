$(function() {
	var seat = $('.row__seat');

	$.each(seat, function(index, value) {
		console.log($(this));
		if ($(this).attr('data-area') == 1) {
			console.log($(this));
			$(this).addClass('row__seat--reserved');

		}
	})

})

$(document)
		.on(
				"click",
				".row__seat",
				function(event) {

					var a = $(this).text();

					var count = $('#selectBox').val();

					if ($(this).attr('data-area') == 0) {

						if ($(event.target).hasClass('row__seat--reserved')) {
							$(this).removeClass('row__seat--reserved');

							var seatName = $(event.target).text();
							$('#test > p:contains(' + seatName + ') ').remove();

						} else {

							if (count > 3) {

								$(this).prop('checked', false);

								$(this).addClass('row__seat--reserved');
								$("#test")
										.append(
												'<p>'
														+ $(event.target)
																.text()
														+ '</p>'
														+ '<input type="hidden" name="seatName" value="'
														+ $(event.target)
																.text() + '">');

							}

						}

					} else {
						false;
					}

				});

function OnChange() {

	var selected = document.getElementById("selectBox").options[document
			.getElementById("selectBox").selectedIndex].value;

	$('#totalPeople').val(selected);

	var fixedNum = 10000;
	var sum = 0;

	sum = selected * fixedNum;
	$('#totalPrice').val(sum);

	console.log(sum);

	if (!isNaN(sum)) {
		$('.seat-result .pay-area .total').find('em').text(sum);
	} else {
		$('.seat-result .pay-area .total').find('em').text('0');
	}

}
