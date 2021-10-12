ECHO OFF
:MENU
CLS
ECHO.................................................
ECHO 1 - Oficiel Pharma 
ECHO 2 - Prise de Commande
ECHO 3 - Plateforme des Offers
ECHO 4 - EXIT
ECHO.................................................

SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO OPHARMA
IF %M%==2 GOTO COMMANDE
IF %M%==3 GOTO POFFERS
IF %M%==4 GOTO EOF

:OPHARMA
cd "C:\Users\Dev Sophatel\workspace\refproduits_ng"
GOTO DEPANDANCYS

:COMMANDE 
cd "C:\Users\Dev Sophatel\workspace\prise_commande_web_ng"
GOTO DEPANDANCYS

:POFFERS
cd "C:\Users\Dev Sophatel\workspace\plateforme_offres_ng"
GOTO DEPANDANCYS

:DEPANDANCYS
start cmd /c "git add . && git commit -m 'Auto' && git pull && exit" 
start cmd /k "code . && npm i && ng s -o --port"
GOTO MENU