WITH  SumPlayerPoints (tidSPP,pidSPP,pnameSPP,pscoreSPP)as 
 (select tid tidSPP,player.pid pidSPP,pname pnameSPP,sum (pscore) pscoreSPP
 from Player,Points 
 where  Player.pid=Points.pid
  group by Points.pid , Player.pid
)select a1.tidSPP team,a1.pnameSPP MVP
from SumPlayerPoints a1
except
select a1.tidSPP,a1.pnameSPP 
from SumPlayerPoints a1 ,SumPlayerPoints a2
 where  a1.tidSPP=a2.tidSPP and a1.pidSPP!=a2.pidSPP and a1.pscoreSPP<a2.pscoreSPP

 
