Select  distinct Points.pid ,rating
from Points ,Player
where 3<(Select count(pid)
from Points 
where pscore>10) and Player.pid=Points.pid

