Program Card_number;
Uses Crt;
Var
  cardtype: Char;
  cardnumber,n,m: Longint;
  choice,X,Y,Z,S,T,Sum: Longint ;
  cho1,cho2,cho3: Boolean;
Begin
  Repeat
    Clrscr;
    cho1 := False;
    cho2 := False;
    cho3 := False;
    Writeln('----------------------Menu--------------------');
    Writeln('* 1:Enter card type : A,B,C                  *');
    Writeln('* 2:Enter and check of the card number--->   *');
    Writeln('*  A (8 Digits) ; B (7 Digits) ; C (6 Digits)*');
    Writeln('* 3:Checking the card validity               *');
    Writeln('* 4:Exit                                     *');
    Writeln('----------------------------------------------');
    While (cho1=False)Or(cho2=False)Or(cho3=False) Do
      Begin
        Writeln('what is your choice ?');
        Readln(choice);
        Case choice Of
          1:
             Begin
               Repeat
                 Writeln('enter card type:A or B or C');
                 Readln(cardtype)
               Until (cardtype='A') Or (cardtype='B') Or (cardtype='C');
               cho1 := True;
             End;
          2:
             Begin
               If cho1<>True Then
                 Writeln('Process question 1 in first')
               Else
                 Begin
                   Repeat
                     Writeln('Enter And check Of a card number');
                     Readln(cardnumber);
                     If cardtype='A' Then
                       Begin
                         If (cardnumber>99999999) Or (cardnumber<10000000) Then
                           Writeln('incorrect')
                         Else
                           cho2 := True;
                       End;
                     If cardtype='B' Then
                       Begin
                         If (cardnumber>9999999) Or (cardnumber<1000000) Then
                           Writeln('incorrect')
                         Else
                           cho2 := True;
                       End;
                     If cardtype='C' Then
                       Begin
                         If (cardnumber>999999) Or (cardnumber<100000) Then
                           Writeln('incorrect')
                         Else
                           cho2 := True;
                       End
                   Until cho2=True;
                 End;
             End;
          3:
             Begin
               If (cho1=False) Or (cho2=False) Then
                 Writeln('process question 1 and 2 in first')
               Else
                 Begin
                   n := 10;
                   m := 1;
                   Sum := 0;
                   Repeat
                     X := CardNumber Div n;
                     Y := CardNumber Div m;
                     Z := ( X-(X Div 10)*10)*2;
                     S := Y-(Y Div 10)*10;
                     T := Z Div 10 + Z Mod 10;
                     Sum := S+T;
                     n := n*100;
                     m := m*100;
                   Until (X=0) And (Y=0);
                   If Sum Mod 10 = 0 Then
                     Begin
                       Writeln('-------------------card validity------------------');
                       Writeln('card type : ',cardtype,'with number : ', cardnumber);
                       Writeln('calculated sum by the method = ',Sum);
                       Writeln('The last digit is 0 -----> Valid card');
                       Readln;
                     End;
                   If Sum Mod 10 <> 0 Then
                     Begin
                       Writeln('-------------------card validity------------------');
                       Writeln('card type : ',cardtype,'with number : ', cardnumber);
                       Writeln('calculated sum by the method = ',Sum);
                       Writeln('The last digit is not 0 -----> Not valid card');
                       Readln;
                     End;
                   cho3 := True;
                 End;
             End;
          4:
             Begin
               Writeln('exit');
               cho1 := True;
               cho2 := True;
               cho3 := True;
             End;
          Else
            Writeln('the choice is error');
        End;
      End;
    Readln;
  Until Readkey=Chr(27);
End.
