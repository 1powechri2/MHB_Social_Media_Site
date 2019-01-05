//= require jquery
//= require activestorage

const messageField = $('#post_message')
const messageBoard = $('#message_board')
const addMessageBtn = $('#add_message_btn')
const scroll_bottom = (() => {
  messageBoard[0].scrollTop = messageBoard[0].scrollHeight + 600
})

$(document).ready(() => {
  $('#sign_up_modal').hide();
  $('#log_in_modal').hide();
  $('#add_message_btn').prop('disabled', true);
  scroll_bottom();
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

addMessageBtn.click(() => {
  setTimeout(() => {
    scroll_bottom();
  }, 100);
})
