CREATE OR REPLACE FUNCTION trigf1() RETURNS TRIGGER AS $$
DECLARE  playerTeamid integer;
BEGIN
SELECT tid 
FROM Player INTO playerTeamid 
WHERE pid= NEW.pid;
	
	IF ((playerTeamid=  ( 
							SELECT vtid
							FROM Game
							WHERE  NEW.gdate = Game.gdate and new.htid=htid
							)) or 
		(playerTeamid= ( 
							SELECT htid
							FROM Game
							WHERE NEW.gdate = Game.gdate and new.htid=htid
							) ))
	THEN
	BEGIN
		RETURN NEW;
	END;
	
	END IF;
	RAISE NOTICE 'Sorry, The Player didn''t played this match';
	RETURN NULL;
	
END;
$$ LANGUAGE PLpgSQL;	

Create trigger T1 
before insert on Points 
for each row 
Execute procedure trigf1()
		   

