/*
Description what to do 1) Produce a table show who(username) upload which video(video title)

*/

/*
Description why: This is easily to help user know the video he/she like
is created by which users, and then they can follow this user or go to this user main page
to watch more videos created by his/her
*/

select username,title
from users join videos on uid=user_id;


/*
Test Output:
username    title
----------  --------------
Raiden Mei  Sinner's Elegy
Kiana       Queen Befall
Murata      Last Lesson
Kiana       Sky meteor
Kiana       Duchen
Kiana       Reburn
Bronya      Bronya Zaychik
Seele       Dual-Ego
*/