/*
Description what to do 6) Find the user who upload the most videos
*/

/*
Explain why: The system should find the people who upload the most videos and give his/her
more expeirment(or reward) to encourage he/she upload more videos
*/

select username as most_diligent_up
from users join	
	(select user_id
	from
		(select user_id, count(user_id) as count
		from videos
		group by user_id)
		
		natural join
		
		(select max(count) as count
		from(select user_id, count(user_id) as count
		from videos
		group by user_id))) on uid=user_id;
		
/*
Test Output:
most_diligent_up
----------------
Kiana
*/