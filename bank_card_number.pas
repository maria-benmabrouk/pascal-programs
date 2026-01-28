Program bank_card_number;
Var
  CardType,CA: Char;
  CardNumber,X,Y,Z,S,P,R,T,m,n,SumEven,SumOdd,Sum: Integer;
  D: Real;
Begin
  Writeln('please enter the card type');
  Readln(CardType);
  While (CardType<>'A') And (CardType<>'B') And (CardType<>'C') Do
    Begin
      Writeln('incorrect');
      Writeln('please enter the valid card type');
      Readln(CA);
      CardType := CA;
    End;
  Writeln('The card type is : ', CardType);
  If CardType='A' Then
    Begin
      Repeat
        Writeln('Enter the valid card number');
        Readln(CardNumber);
        D := CardNumber/10000000;
      Until (D > 1) And (D < 10);
    End
  Else
    Begin
      If CardType='B' Then
        Begin
          Repeat
            Writeln('Enter the valid card number');
            Readln(CardNumber);
            D := CardNumber/1000000;
          Until (D>1) And (D<10);
        End
      Else
        Begin
          If CardType='C' Then
            Begin
              Repeat
                Writeln('Enter the valid card number');
                Readln(CardNumber);
                D := CardNumber/100000;
              Until (D>1) And (D<10);
            End;
        End
    End;
  n := 10;
  m := 1;
  SumEven := 0;
  SumOdd := 0;
  Repeat
    X := CardNumber Div n;
    Y := CardNumber Div m;
    Z := X-(X Div 10)*10;
    S := Y-(Y Div 10)*10;
    P := Z*2;
    T := P Div 10;
    R := P Mod 10;
    SumEven := SumEven+T+R;
    SumOdd := SumOdd+S;
    n := n*100;
    m := m*100;
  Until (X=0) And (Y=0);
  Sum := SumEven+SumOdd;
  If Sum Mod 10 = 0 Then
    Begin
      Writeln('We have a valid ', CardType,' card with a valid number');
    End
  Else
    Writeln(CardNumber,' is not a valid number');
  Readln;
End.
