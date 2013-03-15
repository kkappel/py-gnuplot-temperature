#--- Vorlauf
VORLAUF=<EOF
select date(RecTime), round(min(C)), round(avg(C)), round(max(C)) 
from temperature 
where SerialNumber = "10F4C54D020800E1" and year(RecTime) = 2013
group by date(RecTime);
EOF
#--- Rücklauf
RUECKLAUF=<EOF
select date(RecTime), round(min(C)), round(avg(C)), round(max(C)) 
from temperature 
where SerialNumber = "10380F5402080037" and year(RecTime) = 2013
group by date(RecTime);
EOF
#--- Aussen
AUSSEN=<EOF
select date(RecTime), round(min(C)), round(avg(C)), round(max(C)) 
from temperature 
where SerialNumber = "10A2905302080017" and year(RecTime) = 2013
group by date(RecTime);
EOF
