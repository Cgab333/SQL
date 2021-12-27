Select gdate , htid as tid,  nickname as Winner
from  Game, team
where (vscore<hscore) and (htid=tid)
union
Select gdate , vtid as tid,  nickname as Winner
from  Game, team
where (vscore>hscore) and (vtid=tid)


