

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
