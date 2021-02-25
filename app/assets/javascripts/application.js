
//= require rails-ujs
//= require jquery
//= require materialize
//= require activestorage

//= require_tree .


$(document).on('ready page:load', function() {
  $('.dropdown-trigger').dropdown();
});

$(document).ready(function(){
  $('select').formSelect();
});

$(document).ready(function(){
  $('.modal').modal();
});

$('.close').click(function() {
  $('.alert').hide();
})

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



