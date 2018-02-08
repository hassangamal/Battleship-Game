INCLUDE Irvine32.inc
.data
;Guide Messages
Welcome BYTE "Welcome To Battleship Game",0
Ships BYTE "1. R (5 spaces)",0,"2. B (4 spaces)",0,"3. U (3 spaces)",0,"4. S (3 spaces)",0,"5. D (2 spaces)",0
Guide BYTE "You are asked to Place 5 Ships on the Grid :",0
Guide2 BYTE "Please Enter The Coordinates of The Ships",0
Guide3 BYTE "Enter The Type of The Ship : ",0
Guide4 BYTE "Press any key to continue.",0
Guide5 BYTE "Please enter the first coordinate for the ship : ",0
Guide6 BYTE "Please enter the second coordinate for the ship : ",0 
Guide7 BYTE "The Coordinate Must be Exactly 2 characters.",0
Guide8 BYTE "X-Coordinate Must be in [A-J].",0
Guide9 BYTE "Y-Coordinate Must be in [0-9].",0
Guide10 BYTE "The Ship can't be placed diagonally.",0
Guide11 BYTE "The Size of The Ship isn't correct.",0
Guide12 BYTE "A ship is Placed on these Coordinates.",0
Guide13 BYTE "The Ship Has been Successfully Placed.",0
Guide14 BYTE "All The Ships have been Successfully Placed.",0
GuideIn byte "Please enter the coordinate for the ship Player one: ",0
GuideIn1 byte "Please enter the coordinate for the ship Player Two: ",0
exsit byte "this postion has been exist ",0

;Grids
PlayerOcean BYTE 100 Dup('.')
PlayerOcean2 BYTE 100 Dup('.')
PlayerTargeting BYTE 100 Dup('.')
PlayerTargeting2 BYTE 100 Dup('.')
ComputerOcean BYTE 100 Dup('.')
ComputerTargeting BYTE 100 Dup('.')

ComputerOcean2 BYTE 100 Dup('.')
ComputerTargeting1 BYTE 100 Dup('.')

;User Input
NumOfShips BYTE 0
Ship BYTE 'R','B','U','S','D'
ShipIndex DWORD ?
Taken BYTE 5 Dup(0)
ShipLen BYTE 5,4,3,3,2
ShipState BYTE ?
Pop1 BYTE "This Ship is already Placed.",0
Pop2 BYTE "This Ship doesn't Exist.",0
Coordinate1 BYTE 10 Dup(?)
Coordinate2 BYTE 10 Dup(?)
XCoordinate BYTE 'A','B','C','D','E','F','G','H','I','J'
YCoordinate BYTE '0','1','2','3','4','5','6','7','8','9'
CoordinateLen BYTE ?
Sim DWORD ?
MnXCoordinate BYTE ?
MxXCoordinate BYTE ?
MnYCoordinate BYTE ?
MxYCoordinate BYTE ?
Incr DWORD ?
valp dword ?


;DrawPoint
RequiredColor DWORD ?
RequiredChar BYTE ?
PointX BYTE ?
PointY BYTE ?


;Grid
postionX byte ?
postionY byte ?
NewpostionX byte ?
NewpostionY byte ?
strPc byte "PC Grid",0
strPlayer byte "Player Grid",0
nameb byte "BATTLESHIP",0
verticalChar byte "+---",0
horizantalChar byte "|",0
PlayerOceanG byte "Player's Ocean Grid",0

ComputerOceanG byte "Computer Ocean Grid",0
GridName byte 20 Dup(' '),0
PlayerTargetingG byte "Player's Targeting Grid",0

valr byte ?
;Player Grid During Input
postion byte "ABCDEFGHIJ",0
count dword ?
val1 dword ?
val2 dword ?
countspace dword ?
dir byte ?
dirint dword ?
strship byte 'R','B','S','U','D',0
valship byte '5','4','3','3','2',0
val2ship byte 5,4,3,3,2,0
cahrr dword ?
ind byte ?
posX byte 20
posY byte 3
SecondColor byte ?
FirstColor byte ?
BarColor byte ?
rows BYTE ?
cols BYTE ?
lastX byte ?
lastY byte ?
ReadX byte ?
ReadY byte ?
; PC AI
pc byte '1'
allattack byte 0
allattack1 byte 0

valpc byte ?
Win byte "WOOOOW Your Win With the Game",0
;; user paly with user 
NewUser byte "Please Select another User",0
play byte "let's Play ,i will kill you ",0
inX byte ?

;; File
buffer BYTE 40000 dup(?)
filename BYTE "cove.txt",0
filewin BYTE "winn.txt",0
filegrid BYTE "grid.txt",0
filehappy BYTE "hppy.txt",0
filecreate BYTE "name.txt",0
filesad BYTE "sadd.txt",0
fileHandle HANDLE ?
stringLength DWORD ?
bytesWritten DWORD ?
WOW byte "WOOOOOW You Sunk a Ship",0
hit byte "WOOOOOW GOoOoOoOd Hit ",0
sunk1 byte '1','1','1','1','1',0
sunk2 byte '1','1','1','1','1',0

save byte "Save",0
savefile byte ?
pcc byte "pc: ",0
ply2 byte "player2: ",0
ply1 byte "player1: ",0
plyt2 byte "playerT2: ",0
plyt1 byte "playerT1: ",0
optionwr byte "option12: ",0
sun1 byte "sun1: ",0
sun2 byte "sun2: ",0
instructionB byte "WELCOME IN BATTLE SHIP GAME,Choose a GamePlay Style Option",0
instructionU byte "1-UserVsUser",0
instructionV byte "2-UserVsComputer",0
instructionD byte "3-DemoGame",0
instructionL byte "4-loadGame",0
instructionC byte "5-About the Creator",0
instchoice byte "Please Enter Your Choice: ",0
instructionO1 byte "1-Game Will Be elksban 3la elard !",0
instructionO2 byte "2-one to one llasf",0
ch1 byte ?
idxx byte ?
del dword ?
del2 dword ?
color dword ?
option12 byte ?
TempG byte 19 Dup(' '),0
Temp2G byte 24 Dup(' '),0
ComputerTargetingG byte "Computer Targeting Grid",0



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;UserVsComputer

GGuide BYTE "Display Computer Grids , y\n ? ",0
GGuide2 BYTE "1 - Basic Gameplay",0
GGuide3 BYTE "2 - Advanced Gameplay",0
GGuide4 BYTE "Invalid Choice.",0
GGuide5 BYTE "Turn Number ",0
GGuide6 BYTE "Enter A Coordinate that you want to hit : ",0
GGuide7 BYTE "You already chose that Position.",0
GGuide8 BYTE "You Chose the Position ",0
GGuide9 BYTE " and it was a MISS.",0
GGuide10 BYTE " and it was a CLEAR HIT ON THE SHIP : ",0
GGuide11 BYTE "The Ship ",0
GGuide12 BYTE " IS HIT AND SUNK BY THE PLAYER.",0
GGuide13 BYTE "The Computer Chose The Position ",0
GGuide14 BYTE " And it was A MISS.",0
GGuide16 BYTE " IS HIT AND SUNK BY THE COMPUTER.",0
GGuide17 BYTE "Press Any Key To goto The Next Turn.",0
PlayerWin BYTE "Congratulations, You Have Won The Game.",0
ComputerWin BYTE "The Computer Has Won The Game.",0
TurnNumber BYTE 1
ShipHealthComputer BYTE 5,4,3,3,2
ShipHealthPlayer BYTE 5,4,3,3,2
GCoordinate BYTE 10 Dup(' '),0
PlayerHits BYTE 100 Dup(0)
ComputerHits BYTE 100 Dup(0)
ExactPosition DWORD ?
IG BYTE 0
PlayerSunkShips BYTE 0
ComputerSunkShips BYTE 0
PositionsLeft BYTE 100
RowNum BYTE ?
ColNum BYTE ?
Numeric BYTE "0  1  2  3  4  5  6  7  8  9",0
Alphabetic BYTE 'A','B','C','D','E','F','G','H','I','J'
spaces2 BYTE "                              ",0
spaces BYTE "                     ",0
mspaces BYTE "                  ",0
mspaces2 BYTE "                ",0
Chars BYTE '.','*','X','O','R','B','S','D','U'
CharColors BYTE 14,12,12,10,9,10,13,11,15
Counter1 BYTE ?
PlayerMove BYTE "Player",0
ComputerMove BYTE "Computer",0
EndTurn BYTE "End Of The Turn",0
.code

main PROC
Call Randomize
CALL Cover
call Clrscr
CALL Choice 
exit 
main ENDP

;...............................
;Calculations: load file form pc and draw it in the console
;.................................
Cover PROC
mov NewpostionX,0
mov NewpostionY,5
CALL DrawNow
CALL PopFile
mov edx,OFFSET buffer
mov del2,400
mov color,12
mov del,1
call FileName1
mov del2,700
mov color,14
mov del,1
call FileName1
mov del2,2000
mov color,10
mov del,1
call FileName1
mov eax,5000
CALL Delay
ret
Cover ENDP
;...............................
;Calculations: take input from the user and ask him what he want to play User Vs User
;Returns:Go To advanced Game oR BasicGame to play
;.................................
ChoiceOpition PROC
CALL Clrscr
LN:
mov ecx,3
L14:
CALL Crlf
LOOP L14
mov eax,12
CALL SetTextColor
mov dh,2
mov dl,30
CALL Gotoxy
mov edx,offset instructionB
CALL WriteString
mov ecx,3
L1:
CALL Crlf
LOOP L1
mov eax,9
CALL SetTextColor
mov edx,offset GGuide2
CALL WriteString
mov ecx,3
L11:
CALL Crlf
LOOP L11
mov eax,9
CALL SetTextColor
mov edx,offset GGuide3
CALL WriteString
mov ecx,3
L2:
CALL Crlf
LOOP L2
mov edx,offset instchoice
CALL WriteString
CALL ReadInt
cmp eax,1
JE one
cmp eax,2
JE two
CALL Clrscr
jmp LN
jmp k1
one:
mov option12,'1'
k1:
jmp k2
two:
mov option12,'2'
k2:

CALL Clrscr
CALL ScreenPaper
call WriteInstructions
CALL UserVsUser

ret
ChoiceOpition ENDP
;...............................
;Calculations: take input from the user and ask him what he want to play User Vs PC
;Returns:Go To advanced Game oR BasicGame to play
;.................................
ChoiceOpitionPc PROC

call Clrscr
mov eax,14
call SetTextColor
HF:
mov dh,2
mov dl,30
CALL Gotoxy
mov edx,OFFSET instructionB
call WriteString
call Crlf
call Crlf
mov edx,OFFSET GGuide2
call WriteString
call Crlf
call Crlf
mov edx,OFFSET GGuide3
call WriteString
call Crlf
call Crlf
mov edx,offset instchoice
CALL WriteString
CALL ReadInt
cmp eax,1
je H1
cmp eax,2
je H2
jmp H3
H1:
CALL Clrscr
CALL ScreenPaper
call GetComputerGrid
call WriteInstructions
call BasicGameplay
RET
H2:
CALL Clrscr
CALL ScreenPaper
call GetComputerGrid
call WriteInstructions
call AdvancedGameplay
RET
H3:
call Clrscr
jmp HF
ret
ChoiceOpitionPc ENDP
;...............................
;Calculations: take input from the user and ask him what the type of Game
;Returns:Go To the Type of Game user vs user ,or user vs pc ,or show demo,or Load Game
;.................................
Create PROC
CALL DrawCreator
mov eax,3000
CALL Delay
CALL Clrscr
ret
Create ENDP
Choice PROC
LN:

mov ecx,3
L14:
CALL Crlf
LOOP L14
mov eax,12
CALL SetTextColor
mov dh,2
mov dl,30
CALL Gotoxy
mov edx,offset instructionB
CALL WriteString
mov ecx,3
L1:
CALL Crlf
LOOP L1
mov eax,9
CALL SetTextColor
mov edx,offset instructionU
CALL WriteString
mov ecx,3
L2:
CALL Crlf
LOOP L2
mov eax,7
CALL SetTextColor
mov edx,offset instructionV
CALL WriteString
mov ecx,3
L4:
CALL Crlf
LOOP L4
mov eax,14
CALL SetTextColor
mov edx,offset instructionD
CALL WriteString
mov ecx,3
L11:
CALL Crlf
LOOP L11
mov eax,10
CALL SetTextColor
mov edx,offset instructionL
CALL WriteString
mov ecx,3
L12:
CALL Crlf
LOOP L12

mov eax,10
CALL SetTextColor
mov edx,offset instructionC
CALL WriteString
mov ecx,3
L120:
CALL Crlf
LOOP L120


mov eax,15
CALL SetTextColor
mov edx,offset instchoice
CALL WriteString
CALL ReadDec
cmp eax,1
JE use
cmp eax,2
JE comp
cmp eax,3
JE dom
cmp eax,4
JE lod
CALL Clrscr
cmp eax,5
JE Cre
jmp LN
jmp k
use:
CALL Clrscr
CALL ChoiceOpition
k:

jmp k2
comp:
CALL Clrscr
call ChoiceOpitionPc
k2:

jmp k3
dom:
CALL Clrscr
CALL ScreenPaper
CALL Demo
jmp LN
k3:
jmp k4
lod:
mov esi,offset filegrid
mov edx,offset filename
mov ecx,8
L15:
mov al,[esi]
mov [edx],al
inc esi
inc edx
loop L15
CALL Clrscr
CALL ScreenPaper
CALL PopFile
CALL ShowGrid
CALL Crlf
inc lastY
call DrawLast
CALL AttackUser
k4:
jmp k5
Cre:
CALL Create
jmp LN
k5:

ret
Choice ENDP
;...............................
;Calculations: complete draw shape in the consel of Cover
;Returns:offset of edx to load complete draw shape in the consel 
;.................................

FileName1 PROC
mov ecx,del2
L111:
mov al,[edx]
mov bl,al
mov eax,color
cmp eax,10
JE rand
jmp k
rand:
mov eax,15
CALL RandomRange
k:
CALL SetTextColor
mov al,bl
CALL WriteChar
mov eax,del
CALL Delay
inc edx
loop L111
ret
FileName1 ENDP

;...............................
;Calculations: load file form pc and draw it in the console
;.................................

ScreenPaper PROC
mov NewpostionX,0
mov NewpostionY,0
CALL DrawNow
mov ecx,60
L2:
mov ebx,ecx
mov ecx,120
L1:
mov eax,15
CALL RandomRange
CALL SetTextColor
mov al,'+'
CALL WriteChar
loop L1
inc NewpostionY
mov eax,10
call Delay
mov ecx,ebx
LOOP L2
mov ecx,60
L22:
mov ebx,ecx
mov ecx,240
dec NewpostionY
CALL DrawNow
L11:
mov eax,15
CALL RandomRange
CALL SetTextColor
mov al,'.'
CALL WriteChar
loop L11
mov eax,10
call Delay
mov ecx,ebx
LOOP L22
mov NewpostionY,30
CALL DrawNow
mov eax,1000
call Delay
CALL Clrscr
ret
ScreenPaper ENDP

;...............................
;Calculations: Game Between Two Computer To Show How the game play 
;.................................
Demo PROC
CALL Clrscr
call buildGrid
call GetComputerGrid
call ComputerVsComputer
mov eax,5000
CALL Delay
call Clrscr
CALL Clear
ret
Demo ENDP
;...............................
;Calculations: swaping data from array of ComputerOcean and ComputerOcean2
; and strship build data again 
;.................................

Clear PROC
mov edx,offset ComputerOcean
mov esi,offset ComputerOcean2
mov ecx,100
; new arr of computer
L2:
mov al,'.'
mov [edx],al
mov [esi],al
inc edx
inc esi
loop L2
;; new arr of ship
mov edx,offset strship
mov al,'R'
mov [edx],al
mov al,'B'
mov [edx+1],al
mov al,'U'
mov [edx+2],al
mov al,'S'
mov [edx+3],al
mov al,'D'
mov [edx+4],al
ret
Clear ENDP

;...............................
;Calculations: Go to specific position in th consel
;.................................
DrawNow PROC
mov dl,NewpostionX
mov dh,NewpostionY
call Gotoxy
ret
DrawNow ENDP
;...............................
;Calculations: Check if this Position is empty in computerOcean
;Receives:take the point in eax
;Returns: if edi equal zero ,this position will be invalid,else edi return this position
;.................................

ValidXY PROC
mov bl,'.'
mov esi,offset ComputerOcean
mov edi,0
cmp [esi+eax],bl
JNE skip
mov edi,eax
skip:
ret
ValidXY ENDP
;...............................
;Calculations: Generate position of x,y in the grid ,x and y from 0-9 
;Returns: position of the point will be returned in eax
;.................................

RandomPos PROC
;; Randomize the first postionX
mov eax,10
call RandomRange
mov ebx,eax
;; Randomize the first postionY
mov eax,10
call RandomRange
mov esi,eax
mov edi,10
mov eax,ebx
mul edi
add eax,esi

ret
RandomPos ENDP

;...............................
;Calculations: check if i take this ship or not
;Receives:take the index of ship in the strship
;Returns: if take this ship eax will be equal zero ,else eax will be return the index of ship in array of strship
;.................................

checkShip PROC
mov edx,eax
mov esi,offset strship
mov edi,offset val2ship
mov al,[esi+edx]
cmp al,'*'
JE fail
mov dir,al
mov al,[edi+edx]
movzx ebx,al
mov dirint,edx
mov countspace,ebx
jmp kl
fail:
mov eax,0
kl: 
ret
checkShip ENDP

;...............................
;Calculations: check if the deference between two point valid about the ship
;Receives:take two point ecx,eax
;Returns: draw this ships between two point in ComputerOCean
;.................................

SpaceBetweenPoint PROC


cmp ecx,eax
JA swap
jmp l
swap:
mov ebx,eax
mov eax,ecx
mov ecx,ebx
l:
mov val1,ecx
mov val2,eax
mov eax,val1
mov ecx,10
cdq
div ecx
; first point x,y in esi,ebp
; second point x,y in eax,edx
mov esi,eax
mov ebp,edx
mov eax,val2
mov ecx,10
cdq
div ecx
cmp eax,esi
JE row
cmp ebp,edx
JE col
jmp fail
jmp kk
row:
sub edx,ebp
inc edx
cmp edx,countspace
JNE fail
mov ecx,countspace
mov edi ,offset ComputerOcean 
mov ebx,val1
lc2:
mov al,'.'
cmp [edi+ebx],al
JNE fail
inc ebx
loop lc2
mov ebx,val1
mov ecx,countspace
mov edi ,offset ComputerOcean 
lc221:
mov al,dir
mov [edi+ebx],al
inc ebx
loop lc221
mov ecx,1
jmp success
kk:
jmp l12
col:
sub eax,esi
inc eax
cmp eax,countspace
JNE fail
mov ecx,countspace
mov ebx,val1
mov edi ,offset ComputerOcean
lc25:
mov al,'.'
cmp [edi+ebx],al
JNE fail
add ebx,10
loop lc25
mov ecx,countspace
mov ebx,val1
mov edi ,offset ComputerOcean 
lc202:
mov al,dir
mov [edi+ebx],al
add ebx,10
loop lc202
mov ecx,1
jmp success
l12:
fail:
mov ecx,0
jmp sun
success:
mov esi,offset strship
mov al,'*'
mov ebx,dirint
mov [esi+ebx],al
sun:
ret
SpaceBetweenPoint ENDP

;...............................
;Calculations: build grid of ships in computerOcean 
;.................................

GetComputerGrid PROC
mov count,0

jmp pos
jmp skip
pos:
cmp count,5
JE done
mov eax,5
call RandomRange
mov cahrr,eax

call checkShip
mov eax,cahrr
cmp eax,0
JE pos
mov eax,10
call RandomPos
call ValidXY
mov ecx,edi
cmp edi,0
JE pos
 
call RandomPos
call ValidXY
cmp edi,0
JE pos
cmp edi,ecx
JE pos
call SpaceBetweenPoint
cmp ecx,0
JE pos

add count,1
jmp pos
skip:
done:
ret
GetComputerGrid ENDP

;...............................
;Calculations: Genrated Colors to the Grid
;................................

ChoicesColor Proc
mov eax,16
Call RandomRange
cmp eax,0
JE change
jmp k
change:
mov eax,1
k:
mov FirstColor,al
mov eax,16
Call RandomRange
cmp eax,0
JE change
jmp k1
change1:
mov eax,1
k1:
mov SecondColor,al
mov eax,16
Call RandomRange
cmp eax,0
JE change
jmp k2
change2:
mov eax,1
k2:
mov BarColor,al
ret
ChoicesColor ENDP
;...............................
;Calculations: build layout about the grid to user and ccomputer
;.................................
buildGrid PROC
call ChoicesColor
movzx eax,FirstColor
call SetTextColor
mov al,posX
mov postionX,al
mov al,posY
mov postionY,al
call GoPosition
; Write Name of The Grid
mov edx,offset strPc
call WriteString

inc postionY
;; Write Index of The Grid
call writeIndexX
mov al,posX
mov postionX,al
add postionX,42
mov al,posY
mov postionY,al
call GoPosition

movzx eax,SecondColor
call SetTextColor
; Write Name of The Grid
mov edx,offset strPlayer
call WriteString
inc postionY
call GoPosition
;; Write Index of The Grid
call writeIndexX


movzx eax,FirstColor
movzx edi,FirstColor
call SetTextColor
mov al,posX
mov postionX,al
mov al,posY
mov postionY,al
add postionY,2
call GoPosition
call drawGrid

movzx eax,BarColor
call SetTextColor
mov al,posX
mov postionX,al
sub postionX,2
mov al,posY
mov postionY,al
add postionY,2
call GoPosition
;; Write Char of The Grid
call writeIndexY


movzx eax,SecondColor
movzx edi,SecondColor
call SetTextColor
mov al,posX
mov postionX,al
add postionX,42
mov al,posY
mov postionY,al
call GoPosition
mov edx,offset strPlayer
Call WriteString
mov al,posX
mov postionX,al
add postionX,42
mov al,posY
mov postionY,al
add postionY,2
call drawGrid
mov al,postionX
MOV lastX,al
mov al,postionY
INC lastY
MOV lastY,al
ret
buildGrid ENDP

;...............................
;Calculations:  Go to specific position in th consel
;.................................
GoPosition PROC
mov dl,postionX
mov dh,postionY
call Gotoxy
ret
GoPosition ENDP

;...............................
;Calculations:  draw numbers form 1-9 around the grid
;.................................
writeIndexX PROC
mov ecx,10
mov al,'0'
add postionX,2
Call GoPosition
number:
Call GoPosition
Call WriteChar
add postionX,4
inc al
loop number
ret
writeIndexX ENDP

;...............................
;Calculations:  draw alphabetical form A-J around the grid
;.................................
writeIndexY PROC
mov ecx,10
inc postionY
Call GoPosition
inc postionX
mov al,'A'
number:
Call GoPosition
Call WriteChar
inc ebx
add postionY,2
inc al
loop number
ret
writeIndexY ENDP

;...............................
;Calculations:  draw the grid bt two strings verticalChar and horizantalChar
;.................................
drawGrid PROC
mov esi,offset nameb
mov ecx,10
Outer:
mov ebx,ecx
Call GoPosition
mov edx,offset verticalChar
mov ecx,10
L1:
Call WriteString
loop L1
mov ecx,3
L2:
mov al,'+'
Call WriteChar
loop L2
jmp horz
kk:
call GoPosition
mov edx,offset horizantalChar
Call WriteString
movzx eax,BarColor
call SetTextColor
mov al ,[esi]
Call WriteChar
mov eax,edi
call SetTextColor
mov edx,offset horizantalChar
Call WriteString
inc esi
inc postionY
sub postionX,40
mov ecx,ebx
loop Outer

jmp ll

horz:
mov ecx,10
inc postionY
L22:
call GoPosition
add postionX,4
mov edx,offset horizantalChar
Call WriteString
loop L22
Call Crlf
jmp kk
ll:
call GoPosition
mov edx,offset verticalChar
mov ecx,10
L11:
Call WriteString
loop L11
mov ecx,3
l56:
mov al,'+'
Call WriteChar
loop l56
Call crlf
ret
drawGrid ENDP
;...............................
;Calculations: WriteInstructions about the game the ship and number of cells about it
;.................................
WriteInstructions PROC
mov DL,37
mov DH,2
call Gotoxy
mov edx,OFFSET Guide
call WriteString
call Crlf
mov ecx,5
mov esi,OFFSET Ships
L:
push ecx
mov edx,esi
call WriteString
mov ecx,3
L2:
call Crlf
LOOP L2
pop ecx
add esi,16
LOOP L
mov edx,OFFSET Guide4
call WriteString
call ReadChar
call Clrscr
RET
WriteInstructions ENDP

;...............................
;Calculations: Draw the point you are selected in grid
;Receives:take point and draw it in the consel and mark it in array PlayerOCean
;.................................

GetInputFromTheUser PROC
mov ReadX,20
mov ReadY,3
mov esi,OFFSET PlayerOceanG
mov edi,OFFSET GridName
mov ecx,LENGTHOF PlayerOceanG
REP movsb
call buildGrid
mov ReadX,20
mov ReadY,3
WHILET:
cmp NumOfShips,5
je ENDWHILET
mov edx,OFFSET Guide3
call WriteString
INC lastY
call ReadChar
call WriteChar 
INC lastY
call Crlf
mov esi,0
mov ecx,5
mov ShipState,0
L:
cmp Ship[esi],al
jne NEX
cmp Taken[esi],1
jne EX2
mov ShipState,1
jmp EX
EX2:
mov Taken[esi],1
mov ShipState,2
jmp EX
NEX:
inc esi
LOOP L
EX:
mov ShipIndex,esi
cmp ShipState,2
je CONT
cmp ShipState,0
je FF
mov edx,OFFSET Pop1
jmp FF2
FF:
mov edx,OFFSET Pop2
FF2:
call WriteString
INC lastY
call Crlf
jmp WHILET
CONT:
mov edx,OFFSET Guide5
call WriteString
INC lastY
mov edx,OFFSET Coordinate1
mov ecx,8
call ReadString
call CheckCoordinate
cmp ebx,0
je CONT2
cmp ebx,1
jne T
mov edx,OFFSET Guide7
jmp TF
T:
cmp ebx,2
jne T2
mov edx,OFFSET Guide8
jmp TF
T2:
mov edx,OFFSET Guide9
TF:
call WriteString
INC lastY
call Crlf
jmp CONT
CONT2:
mov edx,OFFSET Guide6
call WriteString
INC lastY
mov edx,OFFSET Coordinate2
mov ecx,8
call ReadString
call CheckCoordinate
cmp ebx,0
je CONT3
cmp ebx,1
jne TT
mov edx,OFFSET Guide7
jmp TF2
TT:
cmp ebx,2
jne TT2
mov edx,OFFSET Guide8
jmp TF2
TT2:
mov edx,OFFSET Guide9
TF2:
call WriteString
INC lastY
call crlf
jmp CONT
CONT3:
call ApplyCoordinates
cmp ebx,0
je CONT4
cmp ebx,1
jne TT3
mov edx,OFFSET Guide10
jmp TF3
TT3:
cmp ebx,2
jne TT4
mov edx,OFFSET Guide11
jmp TF3
TT4:
mov edx,OFFSET Guide12
TF3:
call WriteString
INC lastY
call Crlf
jmp CONT
CONT4:
call crlf
INC lastY
mov edx,OFFSET Guide13
call WriteString
INC lastY
INC lastY
call Crlf
call Crlf
inc NumOfShips
jmp WHILET
ENDWHILET:
mov edx,OFFSET Guide14
call WriteString
INC lastY
call Crlf
mov edx,OFFSET Guide4
call WriteString
INC lastY
call ReadChar

RET
GetInputFromTheUser ENDP
;...............................
;Receives: length of the coordinate enter by the user in ebx 
;Returns: state of the coordinate
;.................................

CheckCoordinate PROC
mov ebx,0
cmp eax,2
je T
mov ebx,1
RET
T:
cld
mov ecx,10
mov al,[edx]
mov edi,OFFSET XCoordinate
REPNE SCASB
jz T2
mov ebx,2
RET
T2:
mov ecx,10
mov al,[edx+1]
mov edi,OFFSET YCoordinate
REPNE SCASB
jz T3
mov ebx,3
RET
T3:
cmp IG,0
je T5
mov eax,0
mov al,[edx]
sub al,'A'
imul ax,10
mov ExactPosition,eax
mov eax,0
mov al,[edx+1]
sub al,'0'
add ExactPosition,eax
mov esi,ExactPosition
cmp PlayerHits[esi],0
je T4
mov ebx,4
T4:
mov PlayerHits[esi],1
T5:
RET
CheckCoordinate ENDP

;...............................
;Calculations: if this coordinate is valid
;Receives:two point enter by the user in coordinate one and corrdinate two
;Returns: stat of the of the ship
;.................................

ApplyCoordinates PROC
mov esi,OFFSET Coordinate1
mov edi,OFFSET Coordinate2
mov al,[esi]
cmp al,[edi]
jae MX
mov MnXCoordinate,al
mov al,[edi]
mov MxXCoordinate,al
jmp MXF
MX:
mov MxXCoordinate,al
mov al,[edi]
mov MnXCoordinate,al
MXF:
mov al,[esi+1]
cmp al,[edi+1]
jae MY
mov MnYCoordinate,al
mov al,[edi+1]
mov MxYCoordinate,al
jmp MYF
MY:
mov MxYCoordinate,al
mov al,[edi+1]
mov MnYCoordinate,al
MYF:
mov Sim,0
mov al,[esi]
cmp al,[edi]
jne T
inc Sim
T:
mov al,[esi+1]
cmp al,[edi+1]
jne T2
inc Sim
T2:
cmp Sim,0
jne T3
mov ebx,1
RET
T3:
mov CoordinateLen,0
mov al,MxXCoordinate
sub al,MnXCoordinate
add CoordinateLen,al
mov al,MxYCoordinate
sub al,MnYCoordinate
add CoordinateLen,al
inc CoordinateLen
mov esi,ShipIndex
mov al,ShipLen[esi]
cmp CoordinateLen,al
je T4
mov ebx,2
RET
T4:
movzx ax,MnXCoordinate
movzx bx,MnYCoordinate
sub bx,'0'
cmp al,MxXCoordinate
jne T5
sub ax,'A'
imul ax,10
add ax,bx
mov Incr,1
jmp T6
T5:
sub ax,'A'
imul ax,10
add ax,bx
mov Incr,10
T6:
movzx ecx,CoordinateLen
movzx esi,ax
mov edi,0
T7:
cmp PlayerOcean[esi+edi],'.'
jne T9
add edi,Incr
LOOP T7
mov esi,ShipIndex
mov edi,0
movzx edx,Ship[esi]
movzx ecx,CoordinateLen
mov eBx,eax
mov eax,16
call randomrange
cmp eax,0
JE error
jmp er
error:
mov eax,10
er:
mov RequiredColor,eax

mov RequiredChar,dl
mov eax,ebx
movzx esi,ax
T8:
mov PlayerOcean[esi+edi],dl
mov eax,esi
add eax,edi
push edx
mov edx,0
mov ebx,10
div ebx
imul edx,4
imul eax,2
mov PointY,al
mov bl,posY
add PointY,bl
add PointY,3
mov PointX,dl
mov bl,posX
add PointX,bl
add PointX,2
mov bl,valr
add PointX,bl
call DrawPoint
add edi,Incr
pop edx
LOOP T8
mov ebx,0
RET
T9:
mov ebx,3
RET
ApplyCoordinates ENDP
;...............................
;Calculations: draw point at the consel
;.................................

DrawPoint PROC

push edx
push eax
mov eax,RequiredColor
call SetTextColor
mov al,RequiredChar
mov dh,PointY
mov dl,PointX
call Gotoxy
call WriteChar
mov dh,lastY
mov dl,lastX
call Gotoxy
pop eax
pop edx

RET
DrawPoint ENDP

;...............................
;Calculations: swaping data from array of ComputerOcean and ComputerOcean2
; and strship build data again 
;.................................

NewComputerOcean PROC
mov edx,offset ComputerOcean
mov esi,offset ComputerOcean2
mov ecx,100
; new arr of computer
L2:
mov al,[edx]
mov [esi],al
mov al,'.'
mov [edx],al
inc edx
inc esi
loop L2
;; new arr of ship
mov edx,offset strship
mov al,'R'
mov [edx],al
mov al,'B'
mov [edx+1],al
mov al,'U'
mov [edx+2],al
mov al,'S'
mov [edx+3],al
mov al,'D'
mov [edx+4],al
ret
NewComputerOcean ENDP
;...............................
;Calculations: Two Computer Build grids and start two play
;.................................

ComputerVsComputer PROC
Call NewComputerOcean
call GetComputerGrid
call AttackPC
ret
ComputerVsComputer ENDP

;...............................
;Calculations: every pc try two attack each other and win 
;.................................
AttackPC PROC

pc1:
call RandomPos
mov edx,offset ComputerOcean
mov bl,'O'
cmp [edx+eax],bl
JE pc1
mov bl,'X'
cmp [edx+eax],bl
JE pc1
mov bl,'.'
cmp [edx+eax],bl
JE WrongPos
Jmp GoodPos
jmp k1
WrongPos:
mov bl,'X'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,42
call Draw
mov eax,4
CALL SetTextColor
mov al,'X'
CALL WriteChar
jmp pc2
k1:
jmp k2
GoodPos:
mov bl,'O'
mov [edx+eax],bl

mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,42
call Draw
mov eax,2
CALL SetTextColor
mov al,'O'
CALL WriteChar
inc allattack
cmp allattack,17
JE finalDonePC1
jmp pc1
k2:
jmp l2
pc2:
call RandomPos
mov edx,offset ComputerOcean2
mov bl,'O'
cmp [edx+eax],bl
JE pc2
mov bl,'X'
cmp [edx+eax],bl
JE pc2
mov bl,'.'
cmp [edx+eax],bl
JE WrongPos1
Jmp GoodPos1
jmp k11
WrongPos1:
mov bl,'X'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,0
call Draw
mov eax,4
CALL SetTextColor
mov al,'X'
CALL WriteChar
jmp pc1
k11:
jmp k22
GoodPos1:
mov bl,'O'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,0
call Draw
mov eax,2
CALL SetTextColor
mov al,'O'
CALL WriteChar
inc allattack1
cmp allattack1,17
JE finalDonePC2
jmp pc2
k22:
l2:
jmp f
finalDonePC1:
CALL Clrscr
CALL DrawWin
mov NewpostionX,30
mov NewpostionY,0
call DrawNow
mov edx,offset Win
Call WriteString
mov al,'1'
call WriteChar
f:
jmp f1
finalDonePC2:
CALL Clrscr
CALL DrawWin
mov NewpostionX,30
mov NewpostionY,0
call DrawNow
mov edx,offset Win
Call WriteString
mov al,'2'
call WriteChar
f1:

ret
AttackPC ENDP

;...............................
;Calculations: go to position you want to hit
;Receives: the point in eax
;Returns: the position he want to hit 
;.................................

Draw PROC
mov ecx,10
cdq
div ecx
shl al,1
shl dl,2
add dl,22
add al,6
mov NewpostionX,dl
mov NewpostionY,al
mov al,valpc
add NewpostionX,al
call DrawNow
ret
Draw ENDP
;...............................
;Calculations: swaping data from array of PlayerOcean and PlayerOcean2
; and strship build data again 
;.................................
NewUserOcean PROC
mov edx,offset PlayerOcean
mov esi,offset PlayerOcean2
mov ebp,offset PlayerTargeting2
mov ecx,100
; new arr of computer
L2:
mov al,[edx]
mov [esi],al
mov [ebp],al
mov al,'.'
mov [edx],al
inc edx
inc esi
inc ebp
loop L2
mov NumOfShips,0
mov edx,offset Taken
mov ecx,5
L1:
mov al,0
mov [edx],al
inc edx
loop L1
ret
NewUserOcean ENDP
;...............................
;Calculations: Two User Build grids and start two play
;.................................
UserVsUser PROC
mov valr,0
call GetInputFromTheUser
Call NewUserOcean
call Clrscr
mov valr,42
call GetInputFromTheUser
mov edx,offset PlayerOcean
mov ebp,offset PlayerTargeting
mov ecx,100
L1:
mov al,[edx]
mov [ebp],al
inc ebp
inc edx
loop L1
mov edx,offset play
CALL WriteString
inc lastY
CALL Clrscr
CALL buildGrid
call AttackUser
;mov esi,offset playerOcean
;mov edi,offset playerOcean
ret
UserVsUser ENDP
;...............................
;Calculations: check if want to save the game or not
;Receives: string in save and check if this string equal to save he will save the game
;Returns: save game and close or continue the game
;.................................
CheckSave PROC
mov esi,offset save
mov edx,offset Coordinate1
mov ecx,eax
L1:
mov al,[edx]
cmp [esi],al
JNE fail
inc edx
inc esi
loop L1
mov savefile,1
jmp kk1
fail:
mov savefile,0
kk1:
ret
CheckSave ENDP
;...............................
;Calculations: Take point from user and
;Receives: the point in eax
;Returns: Draw the point in the grid
;.................................
GetInput PROC

call DrawLast
Again:
cmp pc,'2'
JNE pl1
mov edx,OFFSET GuideIn1
jmp d
pl1:
mov edx,OFFSET GuideIn
d:
call WriteString
mov ecx,10
mov edx,OFFSET Coordinate1
call ReadString
mov edi,eax
call Crlf
inc lastY
call CheckSave
mov al,1
cmp savefile,al
JE file
mov edx,OFFSET Coordinate1
mov eax,edi
call CheckCoordinate
call DrawLast
cmp ebx,0
je Done
cmp ebx,1
jne T
mov edx,OFFSET Guide7
jmp TF
T:
cmp ebx,2
jne T2
mov edx,OFFSET Guide8
jmp TF
T2:
mov edx,OFFSET Guide9
TF:
call WriteString
call Crlf
inc lastY
call DrawLast
jmp Again
Done:
mov esi,offset XCoordinate
mov edx,OFFSET Coordinate1
mov ecx,10
mov bl,[edx]
L1:
cmp bl,[esi]
JE done1
inc esi
loop L1
done1:
mov bl,[edx+1]
mov eax,10
sub eax,ecx
mov ecx,10
mul ecx
mov esi,offset YCoordinate
mov ecx,10
L2:
cmp bl,[esi]
JE done2
inc esi
loop L2
done2:
add eax,10
sub eax,ecx
jmp k
file:
mov eax,100
k:
ret
GetInput ENDP

;...............................
;Calculations:  Go to specific position in th consel
;.................................

DrawLast PROC
mov dh,lastY
mov dl,inX
call Gotoxy
ret
DrawLast ENDP

;...............................
;Calculations: load file form pc and draw it in the consoleLoad this is a sad face if he hit Bad palce
;.................................

DrawSad PROC
mov esi,offset filesad
mov edx,offset filename
mov ecx,8
L15:
mov al,[esi]
mov [edx],al
inc esi
inc edx
loop L15
CALL PopFile
INC lastY
mov dh,lastY
mov dl,0
call Gotoxy
mov edx,offset buffer
mov ecx,176
L1:
mov al,[edx]
CALL WriteChar
inc edx
loop L1
CALL Crlf
ret
DrawSad ENDP
;...............................
;Calculations: load file form pc and draw it in the consoleLoad this is a sad face if he hit Good palce
;.................................
DrawHappy PROC
mov esi,offset filehappy
mov edx,offset filename
mov ecx,8
L15:
mov al,[esi]
mov [edx],al
inc esi
inc edx
loop L15
CALL PopFile
mov al,lastY
mov dh,al
mov dl,0
call Gotoxy
mov edx,offset buffer
mov ecx,167
L1:
mov al,[edx]
CALL WriteChar
inc edx
loop L1
CALL Crlf
ret
DrawHappy ENDP

;...............................
;Calculations: load file form pc and draw it in the consoleLoad this is A player Win
;.................................
DrawWin PROC

mov esi,offset filewin
mov edx,offset filename
mov ecx,8
L15:
mov al,[esi]
mov [edx],al
inc esi
inc edx
loop L15
CALL PopFile

mov al,lastY
mov dh,al
mov dl,0
call Gotoxy
mov eax,14
CALL SetTextColor
mov edx,offset buffer
CALL WriteString
mov eax,3000
CALL Delay
ret
DrawWin ENDP

DrawCreator PROC

mov esi,offset filecreate
mov edx,offset filename
mov ecx,8
L15:
mov al,[esi]
mov [edx],al
inc esi
inc edx
loop L15
CALL PopFile

mov al,lastY
mov dh,al
mov dl,0
call Gotoxy
mov eax,14
CALL SetTextColor
mov edx,offset buffer
CALL WriteString

ret
DrawCreator ENDP
;...............................
;Calculations: Check if the ship sunk or Not 
;Returns:if ship sunk will draw char 'V' in all this position contain ths ship
;.................................
SunkShip PROC
cmp pc,'2'
je user2
user1:
mov ebp,offset strship
mov ecx,5
mov valpc,0
L1:
mov AL,[ebp]
cmp AL,ch1
JE Done
inc ebp
inc valpc
loop L1
Done:
movzx esi,valpc
mov edi,offset sunk2
mov al,valpc
mov idxx,al
mov al,[edi+esi]
mov edi,offset valship
mov bl,[edi+esi]
cmp bl,al
JE Don2
mov edi,offset sunk2
mov al,1
add [edi+esi],al
jmp l
Don2:
mov edi,offset sunk2
mov al,'8'
movzx ebp,idxx
mov [edi+ebp],al
mov edi,offset PlayerTargeting
mov ebp,offset PlayerOcean
mov ecx,100
L3:
mov ebx,ecx
mov al,[edi]
cmp al,ch1
JE st1
jmp oo
st1:
mov eax,15
CALL SetTextColor
mov al,'V'
mov [edi],al
mov eax,100
sub eax,ecx
MOV valpc,42
CALL Draw
mov al,'V'
call WriteChar
oo:
inc edi
inc ebp
mov ecx,ebx
loop L3

CALL Crlf
INC lastY
CALL DrawLast
mov edi,offset hit
mov ecx,lengthof hit

CALL Crlf
L35:
mov al,[edi]
CALL WriteChar
inc edi
loop L35
CALL Crlf

INC lastY
CALL DrawLast
mov edi,offset WoW
mov ecx,lengthof Wow

L351:
mov al,[edi]
CALL WriteChar
inc edi
loop L351

CALL Crlf
l:
jmp k
user2:
mov ebp,offset strship
mov ecx,5
mov valpc,0
L10:
mov AL,[ebp]
cmp AL,ch1
JE Done0
inc ebp
inc valpc
loop L10
Done0:
movzx esi,valpc
mov edi,offset sunk1
mov al,valpc
mov idxx,al
mov al,[edi+esi]
mov edi,offset valship
mov bl,[edi+esi]
cmp bl,al
JE Don20
mov edi,offset sunk1
mov al,1
add [edi+esi],al
jmp l100
Don20:
mov edi,offset sunk1
mov al,'8'
movzx ebp,idxx
mov [edi+ebp],al
mov edi,offset PlayerTargeting2
mov ebp,offset PlayerOcean2
mov ecx,100
L03:
mov ebx,ecx
mov al,[edi]
cmp al,ch1
JE st10
jmp oo0
st10:
mov eax,15
CALL SetTextColor
mov al,'V'
mov [edi],al
mov eax,100
sub eax,ecx
MOV valpc,0
CALL Draw
mov al,'V'
call WriteChar
oo0:
inc edi
inc ebp
mov ecx,ebx
loop L03

CALL Crlf
INC lastY
CALL DrawLast
mov edi,offset hit
mov ecx,lengthof hit

CALL Crlf
L350:
mov al,[edi]
CALL WriteChar
inc edi
loop L350
CALL Crlf

INC lastY
CALL DrawLast
mov edi,offset WoW
mov ecx,lengthof Wow

L3510:
mov al,[edi]
CALL WriteChar
inc edi
loop L3510

CALL Crlf
l100:
k:
add lastY,3
CALL DrawLast
ret
SunkShip ENDP
;...............................
;Calculations: Load the data from arraya into grid
;.................................

Rebuild PROC
CALL Clrscr
CALL ShowGridNotSave 
mov inX,30
add lastY,7
call DrawLast
ret
Rebuild ENDP

;...............................
;Calculations: Two User Start To attack each other to win the game
;.................................
AttackUser PROC
cmp pc,'2'
je user2
user1:
CALL Rebuild
call GetInput
cmp eax,100
je cratefile
mov edx,offset PlayerOcean
mov bl,'O'
cmp [edx+eax],bl
JE REP1
mov bl,'X'
cmp [edx+eax],bl
JE REP1
JMP K12
REP1:
mov edx,offset exsit
CALL WriteString
inc lastY
CALL DrawLast
mov eax,2000
CALL Delay
Jmp user1
K12:
mov bl,'.'
cmp [edx+eax],bl
JE WrongPos
Jmp GoodPos
jmp k1
WrongPos:
mov bl,'X'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,42
call Draw
mov eax,4
CALL SetTextColor
mov al,'X'
CALL WriteChar
call DrawLast
CALL DrawSad
mov pc,'2'
mov eax,2000
CALL Delay
jmp user2
k1:
jmp k2
GoodPos:
mov bl,[edx+eax]
mov ch1,bl
mov bl,'O'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,42
call Draw
mov eax,2
CALL SetTextColor
mov al,'O'
CALL WriteChar
call DrawLast
CALL DrawHappy
CALL SunkShip
inc allattack
cmp allattack,17
JE finalDonePC1
mov eax,2000
CALL Delay
cmp option12,'1'
JE cont
mov pc,'2'
jmp user2
jmp o5
cont:
mov pc,'1'
jmp user1
o5:
k2:
jmp l2
user2:
CALL Rebuild
call GetInput
cmp eax,100
je cratefile
mov edx,offset PlayerOcean2
mov bl,'O'
cmp [edx+eax],bl
JE REP12
mov bl,'X'
cmp [edx+eax],bl
JE REP12
JMP K122
REP12:
mov edx,offset exsit
CALL WriteString
inc lastY
CALL DrawLast
mov eax,2000
CALL Delay
Jmp user2
K122:
mov bl,'.'
cmp [edx+eax],bl
JE WrongPos1
Jmp GoodPos1
jmp k11
WrongPos1:
mov bl,'X'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,0
call Draw
mov eax,4
CALL SetTextColor
mov al,'X'
CALL WriteChar
call DrawLast
call DrawSad
mov pc,'1'
mov eax,2000
CALL Delay
jmp user1
k11:
jmp k22
GoodPos1:
mov bl,[edx+eax]
mov ch1,bl
mov bl,'O'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,0
call Draw
mov eax,2
CALL SetTextColor
mov al,'O'
CALL WriteChar
call DrawLast
CALL DrawHappy
CALL SunkShip
inc allattack1
cmp allattack1,17
JE finalDonePC2
mov eax,2000
CALL Delay
cmp option12,'1'
JE cont1
mov pc,'1'
jmp user1
jmp o55
cont1:
mov pc,'2'
jmp user2
o55:
k22:
l2:
jmp f
finalDonePC1:
CALL Clrscr
CALL DrawWin
CALL DrawLast
mov edx,offset Win
Call WriteString
mov al,'1'
call WriteChar
f:
jmp f1
finalDonePC2:
CALL Clrscr
CALL DrawWin
CALL DrawLast
mov edx,offset Win
Call WriteString
mov al,'2'
call WriteChar
f1:
jmp cre
cratefile:
CALL PushFile 

cre:
ret
AttackUser ENDP

;...............................
;Calculations: Get data from arrays and load it in edx
;Returns: edx Contains all data about the game in file
;.................................
PushValues PROC
mov edx,OFFSET buffer
;; PC
mov esi,offset pcc
mov ecx,lengthof pcc-1
L4:
mov al,[esi]
mov [edx],al
inc esi 
inc edx
inc stringLength
loop L4
mov al,pc
mov [edx],al
inc edx
inc stringLength
; player
mov esi,offset ply1
mov ecx,lengthof  ply1-1
L1:
mov al,[esi]
mov [edx],al
inc esi 
inc edx
inc stringLength
loop L1
; player ocean
mov esi,offset PlayerOcean
mov ecx,100
L2:
mov al,[esi]
mov [edx],al
inc esi
inc edx
mov al,','
mov [edx],al
inc edx
add stringLength,2
loop L2
; second player

mov esi,offset ply2
mov ecx,lengthof  ply2-1
; player
L11:
mov al,[esi]
mov [edx],al
inc esi 
inc edx
inc stringLength
loop L11
; player ocean
mov esi,offset PlayerOcean2
mov ecx,100
L22:
mov al,[esi]
mov [edx],al
inc esi
inc edx
mov al,','
mov [edx],al
inc edx
add stringLength,2
loop L22

;PlayerT 1
mov esi,offset plyt1
mov ecx,lengthof  plyt1-1
; player
L110:
mov al,[esi]
mov [edx],al
inc esi 
inc edx
inc stringLength
loop L110

mov esi,offset PlayerTargeting
mov ecx,100
L222:
mov al,[esi]
mov [edx],al
inc esi
inc edx
mov al,','
mov [edx],al
inc edx
add stringLength,2
loop L222
;PlayerT 2
mov esi,offset plyt2
mov ecx,lengthof  plyt2-1
; player
L112:
mov al,[esi]
mov [edx],al
inc esi 
inc edx
inc stringLength
loop L112

mov esi,offset PlayerTargeting2
mov ecx,100
L223:
mov al,[esi]
mov [edx],al
inc esi
inc edx
mov al,','
mov [edx],al
inc edx
add stringLength,2
loop L223

;;sunk 1

mov esi,offset sun1
mov ecx,lengthof  sun1-1
; player
L115:
mov al,[esi]
mov [edx],al
inc esi 
inc edx
inc stringLength
loop L115

mov esi,offset sunk1
mov ecx,5
L221:
mov al,[esi]
mov [edx],al
inc esi
inc edx
mov al,','
mov [edx],al
inc edx
add stringLength,2
loop L221

;;sunk 2
mov esi,offset sun2
mov ecx,lengthof  sun2-1
; player
L1150:
mov al,[esi]
mov [edx],al
inc esi 
inc edx
inc stringLength
loop L1150
mov esi,offset sunk2
mov ecx,5
L226:
mov al,[esi]
mov [edx],al
inc esi
inc edx
mov al,','
mov [edx],al
inc edx
add stringLength,2
loop L226
mov esi,offset optionwr
mov ecx,10
L1900:
mov al,[esi]
mov [edx],al
inc edx
inc esi
inc stringLength
loop L1900
mov al,option12
mov [edx],al
inc stringLength
inc edx
ret
PushValues ENDP
;...............................
;Calculations: Save data in file of grid.txt
;.................................
PushFile PROC
CALL Clrscr
; Input a string
mov edx,OFFSET filegrid
mov ecx,lengthof filegrid-1
call CreateOutputFile
mov fileHandle,eax

CALL PushValues
mov edx,OFFSET buffer
; Write the buffer to the output file.
mov eax,fileHandle
mov edx,OFFSET buffer
mov ecx,stringLength
call WriteToFile
; save return value
mov bytesWritten,eax 
call CloseFile
ret
PushFile endp
;...............................
;Calculations: Load any file i want to read 
; Returns:all data will be in edx
;.................................
PopFile PROC

; Let user input a filename.
mov edx,OFFSET filename
mov ecx,lengthof filename
; Open the file for input.
call OpenInputFile
mov fileHandle,eax
; Read the file into a buffer.
mov ecx,lengthof buffer
mov edx,OFFSET buffer
call ReadFromFile
; display the buffer
mov eax,fileHandle
call CloseFile
ret
PopFile endp
;...............................
;Calculations: refresh the grid when attack each point in the grid
;Returns: Draw Data in grid 
;.................................
ShowGridNotSave PROC

CALL buildGrid
mov esi,offset PlayerOcean
mov ecx,100
mov valpc,42
L1:
mov ebx,ecx
mov eax,100
sub eax,ecx
mov ebp,eax
CALL Draw
mov al,[esi]
cmp al,'O'
je tr
cmp al,'X'
je fl
cmp al,'.'
JE fail
jmp s
tr:
mov eax,2
call SetTextColor
mov al,'O'
CALL WriteChar
s:
jmp s1
fl:
mov eax,4
call SetTextColor
mov al,'X'
CALL WriteChar
s1:
fail:
inc esi
mov ecx,ebx
loop L1

mov esi,offset PlayerOcean2
mov ecx,100
mov valpc,0
L11:
mov ebx,ecx
mov eax,100
sub eax,ecx
mov ebp,eax
CALL Draw
mov al,[esi]
cmp al,'O'
je tr1
cmp al,'X'
je fl1
cmp al,'.'
JE fail1
jmp s15
tr1:
mov eax,2
call SetTextColor
mov al,'O'
CALL WriteChar
s15:
jmp s11
fl1:
mov eax,4
call SetTextColor
mov al,'X'
CALL WriteChar
s11:
fail1:
inc esi
mov ecx,ebx
loop L11

mov esi,offset PlayerTargeting
mov ecx,100
mov valpc,42
L21:
mov ebx,ecx
mov eax,100
sub eax,ecx
mov ebp,eax
CALL Draw
mov al,[esi]
cmp al,'V'
je tr2
jmp l6
tr2:
mov eax,15
call SetTextColor
mov al,'V'
CALL WriteChar
l6:
inc esi
mov ecx,ebx
loop L21
mov esi,offset PlayerTargeting2
mov ecx,100
mov valpc,0
L212:
mov ebx,ecx
mov eax,100
sub eax,ecx
mov ebp,eax
CALL Draw
mov al,[esi]
cmp al,'V'
je tr22
jmp l62
tr22:
mov eax,15
call SetTextColor
mov al,'V'
CALL WriteChar
l62:
inc esi
mov ecx,ebx
loop L212
ret
ShowGridNotSave ENDP

;...............................
;Calculations: Draw 
;Recevies: Load data from arrays in grid and start to continue play
;.................................
ShowGrid PROC

CALL buildGrid

mov allattack,0
mov allattack1,0
mov esi,OFFSET buffer 
mov edi,offset PlayerOcean
add esi,4
mov al,[esi]	
mov pc,al
add esi,10
mov ecx,100
mov valpc,0
L1:
mov ebx,ecx
mov eax,100
sub eax,ecx
mov ebp,eax
CALL Draw
mov al,[esi]
cmp al,'O'
je tr
cmp al,'X'
je fl
cmp al,'.'
JE fail
jmp s
tr:
mov eax,2
call SetTextColor
mov al,'O'
CALL WriteChar
inc allattack
s:
jmp s1
fl:
mov eax,4
call SetTextColor
mov al,'X'
CALL WriteChar
s1:
mov al,[esi]
mov [edi],al
fail:
add esi,2
inc edi
mov ecx,ebx

loop L1
add esi,9
mov ecx,100
mov valpc,42
mov edi,offset PlayerOcean2
L2:
mov ebx,ecx
mov eax,100
sub eax,ecx
mov ebp,eax
CALL Draw
mov al,[esi]
cmp al,'O'
je tr1
cmp al,'X'
je fl1
cmp al,'.'
JE fail1
jmp s12
tr1:
mov eax,2
call SetTextColor
mov al,'O'
CALL WriteChar
inc allattack1
s12:
jmp s11
fl1:
mov eax,4
call SetTextColor
mov al,'X'
CALL WriteChar
s11:
mov al,[esi]
mov [edi],al
fail1:
add esi,2
inc edi
mov ecx,ebx
loop L2
;;;;;;;;;;;;;; Target1
add esi,10
mov ecx,100
mov valpc,0
mov edi,offset PlayerTargeting
L21:
mov ebx,ecx
mov eax,100
sub eax,ecx
mov ebp,eax
CALL Draw
mov al,[esi]
cmp al,'V'
je tr2
jmp l6
tr2:
mov eax,15
call SetTextColor
mov al,'V'
CALL WriteChar
l6:
mov al,[esi]
mov [edi],al
add esi,2
inc edi
mov ecx,ebx
loop L21
;;;;;;;; Target2
add esi,10
mov ecx,100
mov valpc,42
mov edi,offset PlayerTargeting2
L22:
mov ebx,ecx
mov eax,100
sub eax,ecx
mov ebp,eax
CALL Draw
mov al,[esi]
cmp al,'V'
jE tr45
jmp L90
tr45:
mov eax,15
call SetTextColor
mov al,'V'
CALL WriteChar
L90:
mov al,[esi]
mov [edi],al
add esi,2
inc edi
mov ecx,ebx
loop L22

;;;; sunk1 

add esi,6
mov ecx,5
mov valpc,0
mov edi,offset sunk1
L2k:
mov al,[esi]
mov [edi],al
add esi,2
inc edi
loop L2k

;;;; sunk12

add esi,6
mov ecx,5
mov valpc,0
mov edi,offset sunk2
L2k2:
mov al,[esi]
mov [edi],al
add esi,2
inc edi
loop L2k2

add esi,10
mov al,[esi]
mov option12,al
ret
ShowGrid ENDP

;...............................
;Calculations: start the game in basic mode
;.................................
BasicGameplay PROC
CALL GetInputFromTheUser
mov IG,1
NEWTURN:
call CLRSCR
mov eax,10
call SetTextColor
mov edx,OFFSET GGuide5
call WriteString
movzx eax,TurnNumber
inc TurnNumber
call WriteDec
call crlf
call crlf
mov esi,OFFSET PlayerOceanG
mov edi,OFFSET TempG
mov ecx,19
REP MOVSB
mov esi,OFFSET PlayerTargetingG
mov edi,OFFSET Temp2G
mov ecx,24
REP MOVSB
mov esi,OFFSET PlayerOcean
mov edi,OFFSET PlayerTargeting
call DisplayGrids
mov edx,OFFSET GGuide
call WriteString
mov edx,OFFSET GGuide
call ReadChar
call WriteChar
call crlf
call crlf
cmp al,'y'
jne EC
mov esi,OFFSET ComputerOceanG
mov edi,OFFSET TempG
mov ecx,19
REP MOVSB
mov esi,OFFSET ComputerTargetingG
mov edi,OFFSET Temp2G
mov ecx,24
REP MOVSB
mov esi,OFFSET ComputerOcean
mov edi,OFFSET ComputerTargeting
call DisplayGrids
EC:
mov eax,14
call SetTextColor
mov ecx,120
mov al,'_'
D1:
call WriteChar
LOOP D1
call crlf
call crlf
mov al,' '
mov ecx,55
DD1:
call WriteChar
LOOP DD1
mov edx,OFFSET PlayerMove
call WriteString
call crlf
call crlf
ECC:
mov edx,OFFSET GGuide6
call WriteString
mov edx,OFFSET GCoordinate
mov ecx,8
call ReadString
call crlf
call CheckCoordinate
cmp ebx,0
je NE4
cmp ebx,1
jne T1
mov edx,OFFSET Guide7
jmp TF
T1:
cmp ebx,2
jne T2
mov edx,OFFSET Guide8
jmp TF
T2:
cmp ebx,3
jne T3
mov edx,OFFSET Guide9
jmp TF
T3:
mov edx,OFFSET GGuide7
TF:
call WriteString
call crlf
call crlf
jmp ECC
NE4:
mov edx,OFFSET GGuide8
call WriteString
mov edx,OFFSET GCoordinate
call WriteString
cmp ComputerOcean[esi],'.'
jne GG
mov edx,OFFSET GGuide9
call WriteString
call crlf
call crlf
mov PlayerTargeting[esi],'X'
jmp GGF
GG:
mov edx,OFFSET GGuide10
call WriteString
mov al,ComputerOcean[esi]
call WriteChar
call crlf
call crlf
mov PlayerTargeting[esi],'O'
mov edi,0
S1:
cmp Ship[edi],al
je ENDS1
inc edi
jmp S1
ENDS1:
dec ShipHealthComputer[edi]
cmp ShipHealthComputer[edi],0
jne GG2
mov edx,OFFSET GGuide11
call WriteString
mov al,ComputerOcean[esi]
call WriteChar
mov edx,OFFSET GGUide12
call WriteString
call crlf
call crlf
inc ComputerSunkShips
cmp ComputerSunkShips,5
jne GG2
jmp PlayerWins
GG2:
mov ComputerOcean[esi],'*'
GGF:
mov al,'_'
mov ecx,120
D2:
call WriteChar
LOOP D2
call crlf
call crlf
mov al,' '
mov ecx,54
DD2:
call WriteChar
LOOP DD2
mov edx,OFFSET ComputerMove
call WriteString
call crlf
call crlf
movzx eax,PositionsLeft
dec PositionsLeft
call RandomRange
mov esi,0
mov edi,0
WHILETFF:
cmp ComputerHits[edi],0
jne FF
cmp esi,eax
je ENDWHILETFF
inc esi
FF:
inc edi
jmp WHILETFF
ENDWHILETFF:
mov ComputerHits[edi],1
call ConvertToRowCol
mov edx,OFFSET GGuide13
call WriteString
mov al,RowNum
call WriteChar
mov al,ColNum
call WriteChar
cmp PlayerOcean[edi],'.'
jne RR
mov edx,OFFSET GGuide9
call WriteString
call crlf
call crlf
mov ComputerTargeting[edi],'X'
jmp RF
RR:
mov edx,OFFSET GGuide10
call WriteString
mov al,PlayerOcean[edi]
call WriteChar
call crlf
call crlf
mov ComputerTargeting[edi],'O'
mov esi,0
S2:
cmp Ship[esi],al
je ENDS2
inc esi
jmp S2
ENDS2:
dec ShipHealthPlayer[esi]
cmp ShipHealthPlayer[esi],0
jne RR2
mov edx,OFFSET GGuide11
call WriteString
mov al,PlayerOcean[edi]
call WriteChar
mov edx,OFFSET GGuide16
call WriteString
call crlf
call crlf
inc PlayerSunkShips
cmp PlayerSunkShips,5
jne RR2
jmp ComputerWins
RR2:
mov PlayerOcean[edi],'*'
RF:
mov ecx,120
mov al,'_'
D3:
call WriteChar
LOOP D3
call crlf
call crlf
mov al,' '
mov ecx,51
DD3:
call WriteChar
LOOP DD3
mov edx,OFFSET EndTurn
call WriteString
call crlf 
call crlf
mov edx,OFFSET GGuide17
call WriteString
call ReadChar
jmp NEWTURN
PlayerWins:
mov edx,OFFSET PlayerWin
call WriteString
call crlf
call crlf
RET
ComputerWins:
mov edx,OFFSET ComputerWin
call WriteString
call crlf
call crlf
RET
BasicGameplay ENDP
;...............................
;Calculations: start the game in Advanced mode
;.................................
AdvancedGameplay PROC
CALL GetInputFromTheUser
mov IG,1
NEWTURN:
call CLRSCR
mov eax,10
call SetTextColor
mov edx,OFFSET GGuide5
call WriteString
movzx eax,TurnNumber
inc TurnNumber
call WriteDec
call crlf
call crlf
mov esi,OFFSET PlayerOceanG
mov edi,OFFSET TempG
mov ecx,19
REP MOVSB
mov esi,OFFSET PlayerTargetingG
mov edi,OFFSET Temp2G
mov ecx,24
REP MOVSB
mov esi,OFFSET PlayerOcean
mov edi,OFFSET PlayerTargeting
call DisplayGrids
mov edx,OFFSET GGuide
call WriteString
mov edx,OFFSET GGuide
call ReadChar
call WriteChar
call crlf
call crlf
cmp al,'y'
jne EC
mov esi,OFFSET ComputerOceanG
mov edi,OFFSET TempG
mov ecx,19
REP MOVSB
mov esi,OFFSET ComputerTargetingG
mov edi,OFFSET Temp2G
mov ecx,24
REP MOVSB
mov esi,OFFSET ComputerOcean
mov edi,OFFSET ComputerTargeting
call DisplayGrids
EC:
mov eax,14
call SetTextColor
mov ecx,120
mov al,'_'
D1:
call WriteChar
LOOP D1
call crlf
call crlf
mov al,' '
mov ecx,55
DD1:
call WriteChar
LOOP DD1
mov edx,OFFSET PlayerMove
call WriteString
call crlf
call crlf
PlayerMoves:
mov edx,OFFSET GGuide6
call WriteString
mov edx,OFFSET GCoordinate
mov ecx,8
call ReadString
call crlf
call CheckCoordinate
cmp ebx,0
je NE5
cmp ebx,1
jne T1
mov edx,OFFSET Guide7
jmp TF
T1:
cmp ebx,2
jne T2
mov edx,OFFSET Guide8
jmp TF
T2:
cmp ebx,3
jne T3
mov edx,OFFSET Guide9
jmp TF
T3:
mov edx,OFFSET GGuide7
TF:
call WriteString
call crlf
call crlf
jmp PlayerMoves
NE5:
mov edx,OFFSET GGuide8
call WriteString
mov edx,OFFSET GCoordinate
call WriteString
cmp ComputerOcean[esi],'.'
jne GG
mov edx,OFFSET GGuide9
call WriteString
call crlf
call crlf
mov PlayerTargeting[esi],'X'
jmp NE6
GG:
mov edx,OFFSET GGuide10
call WriteString
mov al,ComputerOcean[esi]
call WriteChar
call crlf
call crlf
mov PlayerTargeting[esi],'O'
mov edi,0
S1:
cmp Ship[edi],al
je ENDS1
inc edi
jmp S1
ENDS1:
dec ShipHealthComputer[edi]
cmp ShipHealthComputer[edi],0
jne GG2
mov edx,OFFSET GGuide11
call WriteString
mov al,ComputerOcean[esi]
call WriteChar
mov edx,OFFSET GGUide12
call WriteString
call crlf
call crlf
inc ComputerSunkShips
cmp ComputerSunkShips,5
jne GG2
jmp PlayerWins
GG2:
mov ComputerOcean[esi],'*'
jmp PlayerMoves
NE6:
mov al,'_'
mov ecx,120
D2:
call WriteChar
LOOP D2
call crlf
call crlf
mov al,' '
mov ecx,54
DD2:
call WriteChar
LOOP DD2
mov edx,OFFSET ComputerMove
call WriteString
call crlf
call crlf
ComputerMoves:
movzx eax,PositionsLeft
dec PositionsLeft
call RandomRange
mov esi,0
mov edi,0
WHILETFF:
cmp ComputerHits[edi],0
jne FF
cmp esi,eax
je ENDWHILETFF
inc esi
FF:
inc edi
jmp WHILETFF
ENDWHILETFF:
mov ComputerHits[edi],1
call ConvertToRowCol
mov edx,OFFSET GGuide13
call WriteString
mov al,RowNum
call WriteChar
mov al,ColNum
call WriteChar
cmp PlayerOcean[edi],'.'
jne RR
mov edx,OFFSET GGuide9
call WriteString
call crlf
call crlf
mov ComputerTargeting[edi],'X'
jmp NT
RR:
mov edx,OFFSET GGuide10
call WriteString
mov al,PlayerOcean[edi]
call WriteChar
call crlf
call crlf
mov ComputerTargeting[edi],'O'
mov esi,0
S2:
cmp Ship[esi],al
je ENDS2
inc esi
jmp S2
ENDS2:
dec ShipHealthPlayer[esi]
cmp ShipHealthPlayer[esi],0
jne RR2
mov edx,OFFSET GGuide11
call WriteString
mov al,PlayerOcean[edi]
call WriteChar
mov edx,OFFSET GGuide16
call WriteString
call crlf
call crlf
inc PlayerSunkShips
cmp PlayerSunkShips,5
jne RR2
jmp ComputerWins
RR2:
mov PlayerOcean[edi],'*'
RF:
jmp ComputerMoves
NT:
mov ecx,120
mov al,'_'
D3:
call WriteChar
LOOP D3
call crlf
call crlf
mov al,' '
mov ecx,51
DD3:
call WriteChar
LOOP DD3
mov edx,OFFSET EndTurn
call WriteString
call crlf 
call crlf
mov edx,OFFSET GGuide17
call WriteString
call ReadChar
jmp NEWTURN
PlayerWins:
mov edx,OFFSET PlayerWin
call WriteString
call crlf
call crlf
RET
ComputerWins:
mov edx,OFFSET ComputerWin
call WriteString
call crlf
call crlf
RET
RET
AdvancedGameplay ENDP

;...............................
;Calculations: convert the index value to actual row and col number
;.................................

ConvertToRowCol PROC
mov edx,0
mov eax,edi
mov ebx,10
div ebx
mov RowNum,'A'
add RowNum,al
mov ColNum,'0'
add ColNum,dl
RET
ConvertToRowCol ENDP

;...............................
;Calculations: display player grid and computer grids
;.................................
DisplayGrids PROC
mov eax,10
call SetTextColor
mov edx,OFFSET spaces
call WriteString
mov edx,OFFSET TempG
call WriteString
mov edx,OFFSET spaces2
call WriteString
mov edx,OFFSET Temp2G
call WriteString
call crlf
call crlf
mov edx,OFFSET spaces
call WriteString
mov eax,7
call SetTextColor
mov edx,OFFSET Numeric
call WriteString
mov edx,OFFSET spaces
call WriteString
mov edx,OFFSET Numeric
call WriteString
call crlf
call crlf
mov ebx,OFFSET Alphabetic
mov Counter1,11
L:
dec Counter1
cmp Counter1,0
je ENDL
mov ecx,10
mov edx,OFFSET mspaces
call WriteString
mov eax,7
call SetTextColor
mov al,[ebx]
call WriteChar
mov al,' '
call WriteChar
call WriteChar
L2:
mov al,[esi]
call GetCharColor
call WriteChar
mov al,' '
call WriteChar
call WriteChar
inc esi
LOOP L2
mov ecx,10
mov edx,OFFSET mspaces2
call WriteString
mov eax,7
call SetTextColor
mov al,[ebx]
call WriteChar
inc ebx
mov al,' '
call WriteChar
call WriteChar
L3:
mov al,[edi]
call GetCharColor
call WriteChar
mov al,' '
call WriteChar
call WriteChar
inc edi
LOOP L3
call crlf
call crlf
jmp L
ENDL:
RET
DisplayGrids ENDP


;...............................
;Calculations: paints the point with its specific color
;.................................
GetCharColor PROC
push esi
mov esi,0
WHILET:
cmp Chars[esi],al
je ENDWHILET
inc esi
jmp WHILET
ENDWHILET:
push eax
movzx eax,CharColors[esi]
call SetTextColor
pop eax
pop esi
RET
GetCharColor ENDP


;...............................
;Calculations: two comuter attack each other to and each computer try to win the game
;.................................
comment @
Attack PROC

pc1:
call RandomPos
mov edx,offset ComputerOcean
mov bl,'O'
cmp [edx+eax],bl
JE pc1
mov bl,'X'
cmp [edx+eax],bl
JE pc1
mov bl,'.'
cmp [edx+eax],bl
JE WrongPos
Jmp GoodPos
jmp k1
WrongPos:
mov bl,'X'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,42
call Draw
mov eax,4
CALL SetTextColor
mov al,'X'
CALL WriteChar
jmp pc2
k1:
jmp k2
GoodPos:
mov bl,'O'
mov [edx+eax],bl

mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,42
call Draw
mov eax,2
CALL SetTextColor
mov al,'O'
CALL WriteChar
inc allattack
cmp allattack,17
JE finalDonePC1
jmp pc1
k2:
jmp l2
pc2:
call RandomPos
mov edx,offset ComputerOcean2
mov bl,'O'
cmp [edx+eax],bl
JE pc2
mov bl,'X'
cmp [edx+eax],bl
JE pc2
mov bl,'.'
cmp [edx+eax],bl
JE WrongPos1
Jmp GoodPos1
jmp k11
WrongPos1:
mov bl,'X'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,0
call Draw
mov eax,4
CALL SetTextColor
mov al,'X'
CALL WriteChar
mov pc,1
jmp pc1
k11:
jmp k22
GoodPos1:
mov bl,'O'
mov [edx+eax],bl
mov ebx,eax
mov eax,100
call Delay
mov eax,ebx
mov valpc,0
mov pc,0
call Draw
mov eax,2
CALL SetTextColor
mov al,'O'
CALL WriteChar
inc allattack1
cmp allattack1,17
JE finalDonePC2
jmp pc2
k22:
l2:
jmp f
finalDonePC1:
CALL DrawWin
mov NewpostionX,30
mov NewpostionY,0
call DrawNow
mov edx,offset Win
Call WriteString
mov al,'1'
call WriteChar
ret
f:
jmp f1
finalDonePC2:
CALL DrawWin
mov NewpostionX,30
mov NewpostionY,0
call DrawNow
mov edx,offset Win
Call WriteString
mov al,'2'
call WriteChar
ret
f1:

ret
Attack ENDP
@
END main

