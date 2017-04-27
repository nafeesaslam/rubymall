// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$("#quantityOptions").change(function() {
    var currentQuantity = $(this).val(); // Will give you the currenlty selected option in <select> tag
    $.ajax(
        method: "POST",
         url: http://localhost:3000/update_quantity, // Or whatever custom URL you have built
        data: { val: currentQuantity },
        success: function() {
            console.log("The value finally reached on the server");
        } 
    );
});
