// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

function correctAnswer(response) {
	keys = $(".answerkeyword");
	for (var i = 0; i < keys.length; i++) {
		if (response.toLowerCase() === keys[i].innerHTML.toLowerCase()) {
			return true;
		}
    }
  	return false;
}

function loadPageHandler() {
	$("#submitbutton").on("click", function(){
		$(".status").removeAttr("hidden");
		if (correctAnswer($("#answerbox").val())) {
			$(".status").text("Correct!");
		}
		else {
			$(".status").text("Wrong Answer.");
		}
		$(".answer").fadeIn(1000);
	});
}

//Turbolinks specific linking (works when using link_to)
$(document).on('page:load', function() {
  loadPageHandler();
});

//Normal jQuery linking (works when refreshing the page)
$(function(){loadPageHandler()});

