function displayAlert() {
	var alert = $('.alert');
	var textAlert = $('#flash_alert').text();
	if (alert.length > 0) {
		if ( textAlert != "Vous devez vous connecter ou vous inscrire pour continuer."){
			alert.show().animate({height: 25}, 200);
			window.setTimeout(function() {alert.slideUp();}, 2000);
		}else{
			alert.hide();
			$(".modal").trigger('click');
		}
	}
}
	

	
 	 	
$(document).ready(function () {
 	
 	/*******************************************************************/
	/* NOTICE MESSAGE
	/*******************************************************************/ 
	
 	displayAlert();
 	
 	$('input[type=radio]').each(function() { 
	    if ($(this).is(':checked')){
	    	$(this).parent('div').addClass('checked');
	    }
	});
 	
 	
 	
    $('input[type=radio]').click(function () {
        $('input[type=radio]').parent('div').removeClass('checked');
        $(this).parent('div').addClass('checked');
    });

 	
	
});

