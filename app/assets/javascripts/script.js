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
	    	if ($(this).val() == 4){
	    		$("#calendar_description").val("<b>Eviter les accidents et veiller au bien-être individuel et collectif sont des priorités absolues.</b><br>Dans l’industrie, on a besoin de toutes les forces vives. D’une disponibilité totale de toutes les équipes.<br>Nous devons tous être sur le pont au bon moment. La sécurité au travail est l’une des manières de répondre «présent» aux demandes de nos clients.<br><b>Mon emploi en dépend !</b>");
	    		romer.html("<b>Eviter les accidents et veiller au bien-être individuel et collectif sont des priorités absolues.</b><br>Dans l’industrie, on a besoin de toutes les forces vives. D’une disponibilité totale de toutes les équipes.<br>Nous devons tous être sur le pont au bon moment. La sécurité au travail est l’une des manières de répondre «présent» aux demandes de nos clients.<br><b>Mon emploi en dépend !</b>");
	    	}
	    	if ($(this).val() == 5){
	    		$("#calendar_description").val("Les règles sont là pour établir les bases d’un dialogue propice à l’efficacité.<br>Elles ne sont pas là pour nous embêter. Nous avons une obligation de résultat vis-à-visde nos clients. Une obligation qui nous lie. <br>Sachons accorder nos violons et respectons nos engagements pour aller de l’avant. <br>Parce que se faire entendre, c’est bien. Respecter ses engagements, c’est mieux<br><b>Mon emploi en dépend !</b>");
	    		romer.html("Les règles sont là pour établir les bases d’un dialogue propice à l’efficacité.<br>Elles ne sont pas là pour nous embêter. Nous avons une obligation de résultat vis-à-visde nos clients. Une obligation qui nous lie. <br>Sachons accorder nos violons et respectons nos engagements pour aller de l’avant. <br>Parce que se faire entendre, c’est bien. Respecter ses engagements, c’est mieux<br><b>Mon emploi en dépend !</b>");
	    	}
	    	if ($(this).val() == 6){
	    		$("#calendar_description").val("<b>La qualité est une condition sine qua non (nécessaire, indiscutable) à toute activité industrielle.</b><br> C’est un sujet qui ne se prête pas à la discussion et pour lequel le client ne négocie jamais.<br>Dans notre façon de travailler, le mieux n’est qu’une étape. Nous devons, sans relâche, tout mettre<br>en oeuvre pour atteindre un niveau de qualité irréprochable.<br><b>Mon emploi en dépend !</b>");
	    		romer.html("<b>La qualité est une condition sine qua non (nécessaire, indiscutable) à toute activité industrielle.</b><br> C’est un sujet qui ne se prête pas à la discussion et pour lequel le client ne négocie jamais.<br>Dans notre façon de travailler, le mieux n’est qu’une étape. Nous devons, sans relâche, tout mettre<br>en oeuvre pour atteindre un niveau de qualité irréprochable.<br><b>Mon emploi en dépend !</b>");
	    	}
    });

 	
	
});

