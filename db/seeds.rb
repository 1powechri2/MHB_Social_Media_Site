user1 = User.create(first_name: 'Caitlin', last_name: 'Muse', username: 'poetGoddess',
           bio: 'President of the MHB bookclub', email: 'muse@musemail.com',
           password: 'ilovechrispowell')
#
# user2 = User.create(first_name: 'Chris', last_name: 'Powell', username: 'poetKing',
#            bio: 'Vice President of the MHB bookclub', email: 'chris@chrismail.com',
#            password: 'ilovecaitlinmuse')
#
# user1.posts.create(message: 'Welcome all to MHB')
# user1.posts.create(message: 'We are gonna have so much fun')
# user2.posts.create(message: 'Hey Muse, cool MHB website!')
#
#
# user1.photo.attach(io: File.open('./app/assets/images/muse.jpg'), filename: 'muse.jpg', content_type: 'image/jpg')
# user2.photo.attach(io: File.open('./app/assets/images/me_copy.jpg'), filename: 'me_copy.jpg', content_type: 'image/jpg')
