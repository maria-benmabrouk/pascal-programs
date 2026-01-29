Program xyz;
Var
  x,y,z: Integer;
Begin
  Repeat
    Write('x=');
    Readln(x);
  Until (x>=0) And (x<=10);
  For y:=0 To 10 Do
    Begin
      z := x*y;
      Writeln('z=',z);
    End;
  Readln;
End.
