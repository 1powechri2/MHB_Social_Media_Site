user1 = User.create(first_name: 'Caitlin', last_name: 'Muse', username: 'poetGoddes',
           bio: 'President of the MHB bookclub', email: 'muse@musemail.com',
           password: 'ilovechrispowell', mhb_pics: 'The Master and Margarita')

user2 = User.create(first_name: 'Chris', last_name: 'Powell', username: 'poetKing',
           bio: 'Vice President of the MHB bookclub', email: 'chris@chrismail.com',
           password: 'ilovecaitlinmuse', mhb_pics: 'The Master and Margarita')

user1.messages.create(message: 'Welcome all to MHB')
user2.messages.create(message: 'I hope you all love it!')
user1.messages.create(message: "This Friday, Oct 13, we start our new book.")
