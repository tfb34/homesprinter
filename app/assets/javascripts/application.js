// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


function toggleMenu(){
	let menu = document.getElementById('mobile-menu');
	let menuBtn = document.getElementById('menu-btn');
	console.log(menu);
	console.log(menuBtn);
	menuBtn.classList.toggle('change');
	menu.classList.toggle('show');
}

function updateForm(x){
	/*change style*/
	let prev = document.getElementById("search-menu").getElementsByClassName("current")[0];
	prev.classList.toggle("current");
	x.classList.toggle("current");
	/*change form*/
	document.getElementById("listingType").value = x.innerHTML;
}

function getSavedHomes(x){
	document.getElementById("saved-rentals-option").classList.remove("current");
	x.classList.add("current");
	document.getElementById("saved-homes-container").classList.remove("hide");
	document.getElementById("saved-rentals-container").classList.add("hide");
}
function getRentalHomes(x){
	document.getElementById("saved-homes-option").classList.remove("current");
	x.classList.add("current");
	document.getElementById("saved-homes-container").classList.add("hide");
	document.getElementById("saved-rentals-container").classList.remove("hide");
}


