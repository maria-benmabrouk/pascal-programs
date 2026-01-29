

Function Exist_digit(A:Integer;D:Integer): Boolean;
Begin
  Exist_digit := False;
  Repeat
    If (A Mod 10)=D Then
      Exist_digit := True;
    A := A Div 10
  Until A=0;
End;
