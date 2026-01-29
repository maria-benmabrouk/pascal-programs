
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
