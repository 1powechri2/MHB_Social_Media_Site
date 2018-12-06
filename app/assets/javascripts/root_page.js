$(document).ready(() => {
  $('#sign_up_modal').hide();
  $('#log_in_modal').hide();
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
