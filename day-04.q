
input:read0 `$":input/day-04.data";


.d4.p1:{
    parsed:"I"$"-" vs/:/: "," vs/: input;

    elf1:first each parsed;
    elf2:last each parsed;

    elf1Range:(first each elf1) + til each 1 + (-) ./: desc each elf1;
    elf2Range:(first each elf2) + til each 1 + (-) ./: desc each elf2;

    common:count each elf1Range inter' elf2Range;
    minRanges:min each flip count@/:/: (elf1Range; elf2Range);

    :count where minRanges =' common;
 };

.d4.p2:{
    parsed:"I"$"-" vs/:/: "," vs/: input;

    elf1:first each parsed;
    elf2:last each parsed;

    elf1Range:(first each elf1) + til each 1 + (-) ./: desc each elf1;
    elf2Range:(first each elf2) + til each 1 + (-) ./: desc each elf2;

    :count where 0 < count each elf1Range inter' elf2Range;
 };
