

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
