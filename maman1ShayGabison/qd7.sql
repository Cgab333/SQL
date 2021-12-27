Select tid,nickname,color
from  Game, team
where ((vscore>hscore) and (htid=tid)) and((vscore>hscore) and (vtid=tid)) or ((vscore=hscore) and ((htid=tid) or (vtid=tid))) 

 
