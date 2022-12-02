
input:read0 `$":input/day-02.data";




.d2.p1:{
    opp:"ABC"!neg 1 2 3;
    rep:"XYZ"!1 2 3;

    conv:opp[first each input],'rep last each input;

    pickScore:sum last each conv;

    conv:sum each conv;

    res:count[input]#0Ni;
    res:@[res; where 0 = conv; :; 3];
    res:@[res; where 1 = conv; :; 6];
    / Wrap around rule for rock vs scissors
    res:@[res; where -2 = conv; :; 6];

    :pickScore + sum res;
 };

.d2.p2:{
    opp:"ABC"!0 1 2;
    res:"XYZ"!0 3 6;

    conv:opp[first each input],'res last each input;

    moves:count[input]#0Ni;

    lose:where 0 = last each conv;
    draw:where 3 = last each conv;
    win:where 6 = last each conv;

    / 'mod' to get wrap around move
    moves:@[moves; draw; :; (first each conv) draw];
    moves:@[moves; lose; :; (-1 + (first each conv) lose) mod 3];
    moves:@[moves; win;  :; ( 1 + (first each conv) win ) mod 3];

    pickScore:sum 1 + last each moves;

    :pickScore + sum last each conv;
 };
