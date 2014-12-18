! example.factor

USING: math strings sequences tools.test ;
IN: example

GENERIC: f ( a -- b )

M: integer f 2 + ;
M: string f "bc" append ;

[ 3     ] [ 1 f   ] unit-test
[ "abc" ] [ "a" f ] unit-test
