

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
  Until (X=0);
End;
