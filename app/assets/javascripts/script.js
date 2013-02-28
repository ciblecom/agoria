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
        text = $("#calendar_description").val();
        $("#calendar_description").val('');
        romer = $("#cke_1_contents iframe").contents().find("body");
		romer.empty();
	    	if ($(this).val() == 1){
	    		$("#calendar_description").val("<b>Pour préserver notre emploi, nous devons satisfaire le client.</b><br> C’est vital pour la survie de l'entreprise. Sans lui, pas de travail. Et sans travail, pas d'emploi. <br>Nous devons être capables d'adapter notre comportement, voire même notre manière de fonctionner.<br>Parce que nous sommes au service du client. Pas l'inverse. <br><b>Mon emploi en dépend !</b>");
	    		romer.html("<b>Pour préserver notre emploi, nous devons satisfaire le client.</b><br> C’est vital pour la survie de l'entreprise. Sans lui, pas de travail. Et sans travail, pas d'emploi. <br>Nous devons être capables d'adapter notre comportement, voire même notre manière de fonctionner.<br>Parce que nous sommes au service du client. Pas l'inverse. <br><b>Mon emploi en dépend !</b>");
	    	}
	    	if ($(this).val() == 2){
	    		$("#calendar_description").val("<b>Sans idées neuves, sans initiative, notre emploi est fragilisé.</b><br>Nous sommes tous fournisseurs de bonnes idées qui font avancer notre entreprise.<br>Respectons les idées de chacun, soutenons les initiatives et les investissements de tous niveaux.<br>Tout ce qui fait avancer notre entreprise la fait grandir et la rend plus solide.<b>Mon emploi en dépend !</b>");
	    		romer.html("<b>Sans idées neuves, sans initiative, notre emploi est fragilisé.</b><br>Nous sommes tous fournisseurs de bonnes idées qui font avancer notre entreprise.<br>Respectons les idées de chacun, soutenons les initiatives et les investissements de tous niveaux.<br>Tout ce qui fait avancer notre entreprise la fait grandir et la rend plus solide.<b>Mon emploi en dépend !</b>");
	    	}
	    	if ($(this).val() == 3){
	    		$("#calendar_description").val("<b>Il ne faut pas avoir peur du changement.</b><br>Se remettre en question, revoir ses processus, ses méthodes, ses objectifs…<br>C’est souvent faire preuve de bon sens pour anticiper l’avenir.<br>Dans l’industrie, la marche arrière n’existe pas.<br>Il faut aller de l’avant en se posant les bonnes questions sur l’avenir.<br><b>Mon emploi en dépend !</b>");
	    		romer.html("<b>Il ne faut pas avoir peur du changement.</b><br>Se remettre en question, revoir ses processus, ses méthodes, ses objectifs…<br>C’est souvent faire preuve de bon sens pour anticiper l’avenir.<br>Dans l’industrie, la marche arrière n’existe pas.<br>Il faut aller de l’avant en se posant les bonnes questions sur l’avenir.<br><b>Mon emploi en dépend !</b>");
	    	}
    });

 	
	
});

