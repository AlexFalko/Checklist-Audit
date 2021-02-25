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


//= require jquery
//= require rails-ujs
//= require materialize
//= require activestorage

//= require_tree .

$(document).ready(function(){
  $('select').formSelect();
});

$(document).ready(function(){
  $('.modal').modal();
});

$('.close').click(function() {
  $('.alert').hide();
})

$(document).on('turbolinks:load', function() {
  console.log('(document).turbolinks:load')
});


$(document).on('turbolinks:load', function() {
  $('.dropdown-trigger').dropdown();
});


$(document).ready(function() {
  M.updateTextFields();
});



function add_qustions() {

  var ul = document.querySelector(".ul_flag");
  var fieldsetContainer = document.createElement('div');
  let id = document.getElementById('tag_id').childElementCount;

  fieldsetContainer.innerHTML = "<fieldset id=" + id + "><div class='input-field'><label for='checklist_questions_attributes_" + id + "_title'>Question title</label><input class='form-control' type='text' name='checklist[questions_attributes][" + id + "][title]' id='checklist_questions_attributes_" + id + "_title'><div class='input-field'><label for='checklist_questions_attributes_" + id + "_description'>Question description</label><input class='form-control' type='text' name='checklist[questions_attributes][" + id + "][description]' id='checklist_questions_attributes_" + id + "_description'></fieldset>";

  fieldsetContainer.setAttribute('id', 'fieldsetContainer');
  ul.appendChild(fieldsetContainer);

}



