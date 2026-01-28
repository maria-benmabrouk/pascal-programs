

Function Comp(A:Integer;B:Integer): Integer;
Var
  X,Y,R: Integer;
Begin
  R := B;
  X := A;
  While X>0 Do
    Begin
      Y := X Mod 10;
      X := X Div 10;
      R := R*10+Y;
    End;
  comp := R;
End;
