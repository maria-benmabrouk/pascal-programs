Program change;

Function change_digit_binary(N:Integer): Integer;
Var
  Y,a,X: Integer;
Begin
  X := N;
  a := 1;
  Repeat
    Y := X Mod 10;
    X := X Div 10;
    a := a*10;
  Until Y=1;
  If (X Mod 10 = 0) Then
    Begin
      X := X+1
    End
  Else
    Begin
      X := X-1;
    End;
  X := (X*10+1)*(a Div 10);
  change_digit_binary := X;
End;
Var
  N,s: Integer;
Begin
  Readln(N);
  s := change_digit_binary(N);
  Writeln(s);
  Readln
End.
