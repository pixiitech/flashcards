// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

//Returns true if provided answer is correct, false if not
function correctAnswer(response) {
	keys = $(".answerkeyword");
	for (var i = 0; i < keys.length; i++) {
		alert("checking if " + response.toLowerCase() + " === " + keys[i].innerHTML.toLowerCase());
		if (response.toLowerCase() === keys[i].innerHTML.toLowerCase()) {
			return true;
		}
  }
  return false;
}

//Answer submit function
function submitAnswer() {
	$(".status").removeAttr("hidden");
	if (correctAnswer($("#answerbox").val())) {
		$(".status").text("Correct!");
	}
	else {
		$(".status").text("Wrong Answer.");
	}
	$(".answer").fadeIn(1000);
}

//Adds event listeners
//namely, for submit button click
function loadPageHandler() {
	$("#submitbutton").on("click", function(){
		submitAnswer();
	});
	$("#answerbox").on("keypress", function(e){
		if (e.which==13) {
			submitAnswer();
		}
	});
}

//Turbolinks specific linking (works when using link_to)
$(document).on('page:load', function() {
  loadPageHandler();
});

//Normal jQuery linking (works when refreshing the page)
$(function(){loadPageHandler()});

