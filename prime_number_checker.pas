Program prime;
Uses crt;
Var
  x,i,z: Integer;
  a: Real;
Begin
  Repeat
    Writeln('enter the number');
    Readln(x);
    If x<=1 Then
      Writeln(x,' : is not a prime nember');
    If x=2 Then
      Writeln(x,' : is a prime nember');
    If x=3 Then
      Writeln(x,' : is a prime nember');
    If x>3 Then
      Begin
        a := 1 ;
        For i :=2 To (x Div 2) Do
          Begin
            z := x Mod i;
            a := a*z
          End;
        If a=0 Then
          Writeln(x,' : is not a prime nember')
        Else
          Writeln(x,' : is a prime nember');
      End;
  Until Readkey=Chr(27);
End.
