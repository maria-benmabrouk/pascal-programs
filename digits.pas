Program digits;
Function Swich(N:Integer): Integer;
Var
  X,D: Integer;
Begin
  X := N;
  D := 0;
  Repeat
    D := (D*10)+(X Mod 10);
    X := X Div 10
  Until X=0;
  Swich := D;
End;
Function Delete_Digits(N:Integer;D:Integer): Integer;
Var
  i,X: Integer;
Begin
  X := N;
  If D>1 Then
    Begin
      For i:=1 To (D-1) Do
        X := X Div 10;
    End;
  Delete_Digits := X;
End;
Function Give_Digits(N:Integer;D:Integer): Integer;
Var
  X,Y,a,i : Integer;
Begin
  X := N;
  Y := 0;
  a := 1;
  For i:=1 To D Do
    Begin
      Y := Y+(X Mod 10)*a;
      a := a*10;
      X := X Div 10;
    End;
  Give_Digits := Y;
End;
Var
  N,Des,D,ND,X,Y,Z,S: Integer;
Begin
  Writeln('please enter the number');
  Readln(N);
  Writeln('Choose a destination:');
  Writeln('*1:From right to left');
  Writeln('*2:From left to right');
  Readln(Des);
  Writeln('select the number of the digit that you want start from it');
  Readln(D);
  Writeln('select the number of the digit that you want take it');
  Readln(ND);
  Case Des Of
    1:
       Begin
         X := Delete_Digits(N,D);
         Y := Give_Digits(X,ND);
         Writeln('the result is:',Y);
       End;
    2:
       Begin
         Z := Swich(N);
         X := Delete_Digits(Z,D);
         Y := Give_Digits(X,ND);
         S := Swich(Y);
         Writeln('the result is:',S);
       End
       Else
         Writeln('error');
  End;
  Readln;
End.
