//= require jquery
$(document).ready(function() {
  const messages = $('#message_board');
  const scroll_bottom = (() => {
    messages.scrollTop(messages.prop("scrollHeight"))
  })
  scroll_bottom();
  if (messages.length > 0) {
    App.global_chat = App.cable.subscriptions.create({
      channel: 'MessagesChannel'
    }, {
    connected() {},
    disconnected() {},
    received(data) {
      messages.append(`<img id="message_photo" alt="user_photo" height="50" width="50" src="${data.photo}">
                              <div id="message_text">
                                <a id="message_name" href="/users/${data.user_id}">${data.username}</a>
                                <span id="message_date">${data.date}</span>
                                <p id="message_message">${data.message}</p>
                              </div>`);
      scroll_bottom();
    },
    send_message(message) {
      return this.perform('send_message', {message});
    }
  }
    );
  }
  return $('#new_post').submit((e) => {
    const $this = $(this);
    const textarea = $this.find('#post_message');
    if ($.trim(textarea.val()).length > 1) {
      App.global_chat.send_message(textarea.val());
      textarea.val('');
    }
    e.preventDefault();
    return false;
  });
});
