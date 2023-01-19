/*
Description what to do 3) Produce a table that display user have how many follower
*/

/*
Description why: As a video website, it always need to count the user have how many other user followed and show
the result when others search this user.
*/

select username, count(up_id) as followed_number
from
	(select username,up_id,user_id
	from users join follows on uid=up_id)
	group by username;



/*
Test Output:
username    followed_number
----------  ---------------
Bronya      1
Kiana       1
Liliya      1
Murata      1
Raiden Mei  2
Seele       1
Shiro       1
Sora        1
Theresa     1
*/
