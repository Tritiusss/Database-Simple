/*
Description what to do 2) Produce a table that lists all user's username with their subscribe anime name (if 
the user subscribe some anime, if not show)
*/

/*
Description why: As a video website, This was like a subscribe list, can help user know which anime they 
subscribed
*/


select username, name as anime_name
from animes join 	
	(select username,anime_id
	from users join subscribes on uid = user_id)
	on aid=anime_id;
	
	
/*
Test Output:
username  anime_name
--------  ----------------
Liliya    No Game No Life
Liliya    TIGERxDRAGON!
Theresa   No Game No Life
Theresa   Overlord
Theresa   Angel Beats!
Theresa   Sword Art Online
Seele     No Game No Life
Seele     CLANNAD
Seele     Air
Sora      No Game No Life
Bronya    No Game No Life
Bronya    Overlord
Bronya    Angel Beats!
Bronya    CLANNAD
Bronya    Air
Bronya    Haruhi Suzumiya
Kiana     No Game No Life
Kiana     TIGERxDRAGON!
Kiana     Sword Art Online
*/

