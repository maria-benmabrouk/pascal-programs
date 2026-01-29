

Function prime_number(X:Integer): Integer;
Var
  i,z,a: Integer;
Begin
  a := 1 ;
  For i :=2 To (x Div 2) Do
    Begin
      z := x Mod i;
      a := a*z;
    End;
  prime_number := a;
End;
