
input:read0 `$":input/day-05.data";


.d5.p1:{
    inState:first[where "" ~/: input]#input;
    inMoves:1_ first[where "" ~/: input]_ input;

    state:.d5.i.parseState inState;
    moves:.d5.i.parseMoves inMoves;

    result:(.d5.i.move[1b;;]/)[state; moves];
    :raze string value last each result;
 };

.d5.p2:{
    inState:first[where "" ~/: input]#input;
    inMoves:1_ first[where "" ~/: input]_ input;

    state:.d5.i.parseState inState;
    moves:.d5.i.parseMoves inMoves;

    result:(.d5.i.move[0b;;]/)[state; moves];
    :raze string value last each result;
 };


/ Looks for columns with characters in them and assumes they are what we're looking for
.d5.i.parseState:{
    extract:-1_/: flip[x] where 0 < count each where each flip[x] in\: .Q.A;

    state:(`int$1 + til count extract)!`$/:/:reverse each extract;
    :state except\: `;
 };

.d5.i.parseMoves:{
    :`num`from`to!/:"I"$(" " vs/: x) @\: 1 3 5;
 };

/ * Part 1 - doReverse = true (one pick at a time)
/ " Part 2 - doReverse = false (multi-pick at a time)
.d5.i.move:{[doReverse; state; move]
    toMove:neg[move`num]#state move`from;

    if[doReverse;
        toMove:reverse toMove;
    ];

    state:@[state; move`from; :; neg[move`num]_ state move`from];
    state:@[state; move`to;   :; state[move`to],toMove];

    :state;
 };
