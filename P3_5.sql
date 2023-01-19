/*
Description what to do 5) Find the anime which have max number of subscribes
*/

/*
Description why: Through the subscribes number, we can know which 
anime is more popular and then recommend it to more people
*/

select name as most_popular_anime
from animes join 
	(select anime_id
	from
		(select anime_id, count(anime_id) as count
		from subscribes
		group by anime_id)
		
		natural join
		
		(select max(count) as count
		from(select anime_id, count(anime_id) as count
		from subscribes
		group by anime_id))) on aid=anime_id;
		
/*
Test Output:
most_popular_anime
------------------
No Game No Life
*/