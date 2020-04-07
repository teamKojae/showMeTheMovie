/**
 * 
 */

$(function(){
	$(".sighUpLogo").on('click',function(event){
		$(location).attr('href', '/');

	})
})

$(function(){
	checkUserId();
	checkPassword();
	checkSamePassword();
})



function checkUserId(){
	$('#ibxJoinInfoRegLoginId').on('keypress',function(event){
		check(event,'아이디');
	})
}

function checkPassword(){
	$('#ibxJoinInfoRegLoginPwd').on('keypress',function(event){
		check(event,'비밀번호');
	})
}


function checkSamePassword(){
	$('#ibxJoinInfoRegLoginPwdConfirm').on('keyup',function(event){
		var password = $('#ibxJoinInfoRegLoginPwd').val();
		var confirm = $('#ibxJoinInfoRegLoginPwdConfirm').val();
		var errorMsg = $(event.target).closest('tr').find('div');
		if(password != confirm){
			errorMsg.empty();
			errorMsg.append(
				'패스워드가 일치하지 않습니다'	
			);
			return;
		}
		errorMsg.empty();
	})
}

function check(event, msg){
	var password = $(event.target).val();
	var errorMessage = $(event.target).closest('tr').find('div');
	if(  8 > ( password.length+1 ) ){
		errorMessage.empty();
		errorMessage.append(
				msg+'는 영문,숫자 조합 8자리 이상이여야 합니다.'
				)
				return;
	}
	errorMessage.empty();
}

