# Database-Simple

Database Description:
My database is used to form a simple video application or website.
First of all, this website can create accounts, so that I create the user entity. A user should have a user
name, password, email address, and a unique user id.
Then the user can subscribe to some animes and publish their own video. The anime should have a
name, author, studio, and a unique id. A user can subscribe to many animes and an anime can be subscribed
by many users.
The video should have a video title(name), publish date, and a unique video id. The video is published
by the users. Therefore, the video needs to borrow the unique user id combine with its video id to make sure it
does not duplicate.
Because the user can upload their own videos, so website should allow the user to follow other users,
the user can follow many other users, and it may have many other users followed.
The user also can create favorite lists to store their favorite videos, a user can create many favorite
lists, but need to give them a different list name, and each favorite list can store many videos.
And in my database, I call the user “up” when the video is upload by this user
