
input:read0 `$":input/day-03.data";


.d3.p1:{
    comparts:(`int$(count each input) % 2) cut' input;
    common:raze distinct each (first each comparts) @' where each (in)./: comparts;

    :sum 1 + (.Q.a,.Q.A)?common;
 };

.d3.p2:{
    common:raze distinct each (inter/) @/: 3 cut input;
    :sum 1 + (.Q.a,.Q.A)?common;
 };
