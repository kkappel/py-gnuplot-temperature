#!/bin/bash

VORLAUF=$(cat <<VRLF
select date(RecTime), round(min(C)), round(avg(C)), round(max(C)) 
from temperature 
where SerialNumber = "10F4C54D020800E1" and year(RecTime) = 2013
group by date(RecTime); 
VRLF )


RUECKLAUF=$(cat <<RCKLF
select date(RecTime), round(min(C)), round(avg(C)), round(max(C)) 
from temperature 
where SerialNumber = "10380F5402080037" and year(RecTime) = 2013
group by date(RecTime);
RCKLF )

AUSSEN=$(cat <<ASSN
select date(RecTime), round(min(C)), round(avg(C)), round(max(C)) 
from temperature 
where SerialNumber = "10A2905302080017" and year(RecTime) = 2013
group by date(RecTime);
ASSN )

MYSQL="mysql -u weather -pTempoMat weather"

echo $VORLAUF | $MYSQL > vorlauf.tsv
echo $RUECKLAUF | $MYSQL > ruecklauf.tsv
echo $AUSSEN | $MYSQL > aussen.tsv

gnuplot heizung.gnu
