//= require jquery
//= require activestorage
//= require_tree

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
  debugger
  $('#message_board').append(
    `<span id="message_name">${message.user.username}</span> <span id="message_date">${message.create_date}</span><br>
    <p id="message_message">${message.message}</p>`
  )
};

$(document).ready(() => {
  console.log('fire')
  $('#sign_up_modal').hide();
  $('#log_in_modal').hide();
  fetchMessages();
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
