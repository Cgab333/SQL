Select  cid, cname, count(Player.tid)
from Coach, Player
Where Coach.status=0 and Player.tid = Coach.tid
group by Coach.cid