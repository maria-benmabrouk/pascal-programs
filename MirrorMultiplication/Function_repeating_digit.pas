

Function Repeat_digit(N:Integer): Boolean;
Var
  X,Y,L,i: Integer;
Begin
  repeat_digit := False;
  For i:=0 To 9 Do
    Begin
      X := N;
      L := 0;
      Repeat
        Y := X Mod 10;
        X := X Div 10;
        If Y=i Then
          Begin
            L := L+1;
            If L>=2 Then
              Repeat_digit := True;
          End
      Until X=0;
    End;
End;
