
input:"I"$read0 `$":input/day-01.data";

.d1.p1:{
    cal:sum each (where null input) cut input;
    :first cal where max[cal] = cal;
 };

.d1.p2:{
    cal:sum each (where null input) cut input;
    :sum 3#desc cal;
 };
