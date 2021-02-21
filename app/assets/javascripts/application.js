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
//= require_tree .
//= require rails-ujs
//= require activestorage
//= require turbolinks

function add_qustions() {

  var ul = document.querySelectorAll('ul')[0];
  var fieldsetContainer = document.createElement('div');
  var id = document.getElementById('tag_id').childElementCount;

  fieldsetContainer.innerHTML = "<fieldset id=" + id + "><label for='checklist_questions_attributes_" + id + "_title'>Title</label><input class='form-control' type='text' name='checklist[questions_attributes][" + id + "][title]' id='checklist_questions_attributes_" + id + "_title'><label for='checklist_questions_attributes_" + id + "_description'>Description</label><input class='form-control' type='text' name='checklist[questions_attributes][" + id + "][description]' id='checklist_questions_attributes_" + id + "_description'></fieldset>";

  fieldsetContainer.setAttribute('id', 'fieldsetContainer');
  ul.appendChild(fieldsetContainer);

}



