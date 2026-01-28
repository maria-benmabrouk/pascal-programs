Program exo;
Var
  x,y,z: Integer;
Begin
  Repeat
    Writeln('enter the nember');
    Readln(x);
  Until (x>1);
  For y:=1 To x Do
    Begin
      z := z+y;
    End;
  Writeln(z);
  Readln;
End.
