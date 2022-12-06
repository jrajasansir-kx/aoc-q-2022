
input:first read0 `$":input/day-06.data";


.d6.p1:{
    / Build indices of match strings
    selections:reverse each (3 + til 1 + count[input] - 4) -\: til 4;
    :4 + first where 4 = count each distinct each input @/: selections;
 };

.d6.p2:{
    / Build indices of match strings
    selections:reverse each (13 + til 1 + count[input] - 14) -\: til 14;
    :14 + first where 14 = count each distinct each input @/: selections;
 };
