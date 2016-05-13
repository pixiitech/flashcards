// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

function loadPageHandler() {
	$("#submitbutton").on("click", function(){
		$(".answer").fadeIn(1000);
	});
}

//Turbolinks specific linking (works when using link_to)
$(document).on('page:load', function() {
  loadPageHandler();
});

//Normal jQuery linking (works when refreshing the page)
$(function(){loadPageHandler()});

