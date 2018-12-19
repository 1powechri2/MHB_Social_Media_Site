//= require jquery
//= require activestorage
//= require_tree

const messageField = $('#message_message')

const fetchMessages = () => {
  fetch('/api/v1/messages')
    .then(response => response.json())
    .then(messages => appendMessages(messages))
    .catch(error => console.log({ error }));
};

const appendMessages = (messages) => {
  messages.forEach(message => {
    appendMessage(message)
  })
};

const appendMessage = (message) => {
  $('#message_board').append(
    `<span id="message_name">${message.user.username}</span> <span id="message_date">${message.create_date}</span><br>
    <p id="message_message">${message.message}</p>`
  )
};

$(document).ready(() => {
  $('#sign_up_modal').hide();
  $('#log_in_modal').hide();
  fetchMessages();
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

$('#add_message_btn').click(() => {
  $('#message_board').empty();
  setTimeout(() => {
    fetchMessages();
  }, 200);
  setTimeout(() => {
    messageField.val('');
  }, 210);
})
