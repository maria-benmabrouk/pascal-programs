Program EXO_4;
Var
  y: Integer;
Begin
  Writeln('please enter the year');
  Readln(y);
  If y<=0 Then
    Writeln('is a leap year')
  Else
    Begin
      If y Mod 100 = 0 Then
        Begin
          If y Mod 400 = 0 Then
            Writeln('is a leap year')
          Else
            Writeln('is not a leap year');
        End
      Else
        Begin
          If y Mod 4 = 0 Then
            Writeln('is a leap year')
          Else
            Writeln('is not a leap year');
        End
    End;
  Readln;
End.
