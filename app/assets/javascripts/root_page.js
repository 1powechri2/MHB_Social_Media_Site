//= require jquery
//= require activestorage

const messageField = $('#post_message')
const messageBoard = $('#message_board')
const addMessageBtn = $('#add_message_btn')


$(document).ready(() => {
  $('#sign_up_modal').hide();
  $('#log_in_modal').hide();
  $('#add_message_btn').prop('disabled', true);
})

$('#sign_up').click(() => {
  $('#sign_up_modal').show();
})

$('#log_in').click(() => {
  $('#log_in_modal').show();
})

$('#sign_up_close').css( 'cursor', 'pointer');
$('#log_in_close').css( 'cursor', 'pointer');

$('#sign_up_close').click(() => {
  $('#sign_up_modal').hide();
})

$('#log_in_close').click(() => {
  $('#log_in_modal').hide();
})

messageField.keyup(() => {
  if (messageField.val() == "") {
    $('#add_message_btn').prop('disabled', true);
  } else {
    $('#add_message_btn').prop('disabled', false);
  };
})
