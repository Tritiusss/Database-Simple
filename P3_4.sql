/*
Description what to do 4) find all the user's favorite which do not have any videos in their
favorite lists
*/

/*
Explain: This was used to reminder user delete long time empty favorite list
*/


select username,list_name as empty_list
from users join 
	(select user_id,list_name
	from favorite_lists where NOT EXISTS
		(select * from saves where favorite_lists.user_id = saves.user_id)) on uid=user_id;
		
		
/*
Test Output:
username  empty_list
--------  ----------
Theresa   Kawai
Shiro     Game video
Sora      Game video
*/