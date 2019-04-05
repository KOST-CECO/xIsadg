REM chcp 850
REM chcp 28591 
chcp 65001 REM UTF-8

REM convert from UTF8 to ASCII
REM type %1 | tr -d '\200-\277' | tr '\300-\377' '[?*]' >ascii.xml

sed -E -f remove_optAttribut.sed %1 > %1.clean.xml

REM remove Newline
REM tr -d '\012\015' 
REM grep . out.xml
pause
