
INCLUDE Irvine32.inc
.data
arrans byte 10 dup(?),0
question1 byte "This is Question One Frequency: ",0
question2 byte "This is Question Two Power: ",0
question3 byte "This is Question Three String: ",0
question4 byte "This is Question Four Reverse: ",0
question5 byte "This is Question Five SumOPower: ",0

freq byte "Frequency of ",0
NotPowerFour byte "It is not a power of four.",0
PowerFour byte "It is a power of four",0
ReadNumber byte "Enter Your Number : ",0
firstword byte 100 dup(?),0
secondword byte 100 dup(?),0
Correct byte " IS CORRECT",0
Almost_Correct byte " IS ALMOST CORRECT",0
Wrong byte " IS WRONG",0
firstString byte "WriteFirstString : ",0
secondtString byte "WriteSecondString :",0
digit byte 100 dup(?),0
length1 dword ?
.code
main PROC

;;;Question <One>

mov edx,offset question1
Call WriteString
Call crlf
mov edx,offset ReadNumber
Call WriteString
Call ReadInt

Call Go_QuestionOne
Call crlf


;;;Question <Two>
mov edx,offset question2
Call WriteString
Call crlf
mov edx,offset ReadNumber
Call WriteString

Call ReadInt

Call Go_QuestionTwo 
Call crlf

;;;Question <Three>
mov edx,offset question3
Call WriteString
Call crlf
mov edx,offset firstString
Call WriteString

mov ecx,20
mov edx,offset firstword
Call ReadString
mov ebx,eax
mov edx,offset SecondtString
Call WriteString
mov ecx,20
mov edx,offset secondword
Call ReadString
mov edx,eax
Call crlf
mov edx,eax
Call Go_QuestionThree 
Call crlf

;;;Question <Four>

mov edx,offset question4
Call WriteString
Call crlf
mov edx,offset ReadNumber
Call WriteString
Call ReadInt
Call Go_QuestionFOUR
Call crlf

;;;Question <Five>
mov edx,offset question5
Call WriteString
Call crlf
mov edx,offset ReadNumber
Call WriteString
Call ReadInt
Call Go_QuestionFive

	exit
main ENDP
Go_QuestionOne PROC

mov ecx ,100
mov edi,eax
l1:
mov ebx,ecx
mov eax,edi
mov ecx,10
cdq
DIV ecx
mov esi,eax
mov edi,eax
mov eax,edx

cmp edx,0
JE zero
cmp edx,1
JE one
cmp edx ,2
JE two
cmp edx,3
JE three
cmp edx ,4
JE four
cmp edx,5
JE five
cmp edx,6
JE six
cmp edx,7
JE seven
cmp edx,8
JE eight
cmp edx,9
JE nine

kr:
mov ecx,ebx

cmp esi,0
JE done


loop l1

jmp k0
zero:
inc arrans[0]
jmp kr
k0:
jmp k1
one:
inc arrans[1]
jmp kr
k1:
jmp k2
two:
inc arrans[2]
jmp kr
k2:
jmp k3
three:
inc arrans[3]
jmp kr
k3:
jmp k4
four:
inc arrans[4]
jmp kr
k4:
jmp k5
five:
inc arrans[5]
jmp kr
k5:

jmp k6
six:
inc arrans[6]
jmp kr
k6:

jmp k7
seven:
inc arrans[7]
jmp kr
k7:

jmp k8
eight:
inc arrans[8]
jmp kr
k8:

jmp k9
nine:
inc arrans[9]
jmp kr
k9:


done:

mov ecx,10
mov ebx,offset arrans
mov esi,0
mov edx,offset freq
l2:
Call WriteString
mov eax,esi
Call Writedec
mov al,' '
Call WriteChar
mov al,'='
Call WriteChar
mov al,' '
Call WriteChar

mov al,[ebx]
Call Writedec
inc ebx
inc esi
Call crlf
loop l2
Call crlf
ret

Go_QuestionOne ENDP



Go_QuestionTwo PROC
mov ecx,50
mov ebx,4
cmp eax,ebx
JE powerfour1
mov esi,1
l3:
mov ebx,ecx
mov edx,4
mov ecx,esi
l4:
shl edx,1
shl edx,1
loop l4
cmp edx,eax
JE powerfour1
inc esi
mov ecx,ebx

loop l3

mov edx,offset NotPowerFour
Call WriteString
jmp skipp
powerfour1:
mov edx,offset PowerFour
Call WriteString
skipp:
Call crlf
ret
Go_QuestionTwo ENDP


Go_QuestionThree PROC

mov ecx,edx
cmp edx,ebx
JA kk1
mov ecx,ebx
kk1:
mov eax,ecx
mov esi,offset firstword
mov edi,offset secondword
mov edx,0
l1:

mov al,[esi]
cmp al,[edi]
JNE count

jmp skipp
count:
inc edx
skipp:
inc esi
inc edi
loop l1
mov eax,edx

mov edx,offset secondword
Call WriteString
cmp eax,0
JE zero
cmp eax,1
JE one13
cmp eax,2
JE one11

mov edx ,offset Wrong
Call WriteString
jmp corr
zero:

mov edx ,offset Correct
Call WriteString
corr:
jmp corr1
one13:
mov edx ,offset Almost_Correct
Call WriteString
corr1:
jmp corr11
one11:
mov edx ,offset Almost_Correct
Call WriteString
corr11:
Call crlf

ret
Go_QuestionThree ENDP

Go_QuestionFOUR PROC


; count lenght of the int

mov esi,eax
mov ecx,100
mov edi,0
mov length1,0
l2:
mov ecx,10
cdq
DIV ecx
cmp eax,0
JE k33
inc length1
loop l2

k33:
mov ecx ,100
mov edi,esi
mov ebp,0
l1:
mov eax,edi
mov ecx,10
cdq
DIV ecx
mov esi,eax
mov edi,eax
cmp edx,0
JE zero
cmp edx,1
JE one
cmp edx ,2
JE two
cmp edx,3
JE three
cmp edx ,4
JE four
cmp edx,5
JE five
cmp edx,6
JE six
cmp edx,7
JE seven
cmp edx,8
JE eight
cmp edx,9
JE nine

kr:
cmp esi,0
JE done

loop l1

jmp k0
zero:
add ebp,0
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,0
mov edx,10
l11:
mov edx,10
mul edx
loop l11
add ebp,eax
sub ebp,0
dec length1
jmp kr
k0:
jmp k1
one:
add ebp,1
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,1
mov edx,10
l0:
mov edx,10
mul edx
loop l0
add ebp,eax
sub ebp,1
dec length1
jmp kr
k1:
jmp k2
two:
add ebp,2
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,2
mov edx,10
l121:
mov edx,10
mul edx
loop l121
add ebp,eax
sub ebp,2
dec length1
jmp kr
k2:
jmp k3
three:
add ebp,3
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,3
mov edx,10
l3:
mov edx,10
mul edx
loop l3
add ebp,eax
sub ebp,3
dec length1
jmp kr
k3:
jmp k4
four:
add ebp,4
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,4
mov edx,10
l4:
mov edx,10
mul edx
loop l4
add ebp,eax
sub ebp,4
dec length1
jmp kr
k4:
jmp k5
five:
add ebp,5
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,5
mov edx,10
l5:
mov edx,10
mul edx
loop l5
add ebp,eax
sub ebp,5
dec length1
jmp kr
k5:

jmp k6
six:
add ebp,6
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,6
mov edx,10
l6:
mov edx,10
mul edx
loop l6
add ebp,eax
sub ebp,6
dec length1
jmp kr
k6:

jmp k7
seven:
add ebp,7
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,7
mov edx,10
l7:
mov edx,10
mul edx
loop l7
add ebp,eax
sub ebp,7
dec length1
jmp kr
k7:

jmp k8
eight:
add ebp,8
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,8
mov edx,10
l8:
mov edx,10
mul edx
loop l8
add ebp,eax
sub ebp,8
dec length1
jmp kr
k8:

jmp k9
nine:

add ebp,9
mov eax,length1
mov ecx,length1
cmp ecx,0
JE kr

mov eax,9
mov edx,10
l9:
mov edx,10
mul edx
loop l9
add ebp,eax
sub ebp,9
dec length1
jmp kr
k9:

done:
mov eax,ebp
Call Writedec
Call crlf
ret
Go_QuestionFour ENDP


Go_QuestionFive PROC

mov ecx ,100
mov edi,eax
mov ebp,0
l1:
push ecx
mov eax,edi
mov ecx,10
cdq
DIV ecx
mov edi,eax
mov esi,edx
mov ebx,edx
mov ecx,2
l2:
mov edx,ebx
mov eax,esi
mul edx
mov esi,eax
loop l2
add ebp,eax
pop ecx
loop l1
done:
mov eax,ebp
Call Writedec
Call crlf
ret
Go_QuestionFive ENDP

END main