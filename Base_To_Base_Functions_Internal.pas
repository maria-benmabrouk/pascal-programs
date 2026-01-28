Program Base_To_Base;

Function Freak_Digit(N:Integer;B:Integer): Boolean;
Var
  X,Y: Integer;
Begin
  Freak_digit := False;
  X := N;
  Repeat
    Y := X Mod 10;
    X := X Div 10;
    If Y>=B Then
      Freak_digit := True
  Until (X=0) ;
End;

Function Base_To_Decimal(N:Integer;B:Integer): Integer;
Var
  X,Y,i: Integer;
Begin
  X := N;
  i := 1;
  Y := 0;
  Repeat
    Y := Y +(X Mod 10)*i;
    X := X Div 10;
    i := i*B
  Until X=0;
  Base_To_Decimal := Y;
End;

Function Decimal_To_Base(N:Integer;B:Integer): Integer;
Var
  X,i,Y,Z: Integer;
Begin
  X := N;
  Z := 0;
  i := 1;
  Repeat
    Y := X Mod B ;
    X := X Div B ;
    Z := Z+Y*i;
    i := i*10
  Until (X=0);
  Decimal_To_Base := Z;
End;
Var
  N,BA,BB,D,B: Integer;
  L: Boolean;
Begin
  Writeln('Enter the number you want to convert');
  Readln(N);
  Writeln('Enter the base of the number');
  Readln(BA);
  L := Freak_Digit(N,BA);
  If L=False Then
    Begin
      Writeln('Enter the base to wich you want to convert');
      Readln(BB);
      D := Base_To_Decimal(N,BA);
      B := Decimal_To_Base(D,BB);
      Writeln(N,' "in the base ',BA ,'"',' = ',B,' "in the base ',BB,'"');
      Readln
    End
  Else
    Write('Error');
  Readln;
End.
