Program exerciceread;
Const maxc = 100;
  maxr = 100;
Type
  Tc = 1..maxc;
  Tr = 1..maxr;
  Tab2 = Array[Tc,Tr] Of Integer;
Procedure read2d(Var c:Integer;Var r:Integer ;Var Tab:Tab2);
Var
  i,j: Integer;
Begin
  Writeln('Enter the size of columns');
  Readln(c);
  Writeln('Enter the number of rows');
  Readln(r);
  For i:=1 To c Do
    Begin
      For j:=1 To r Do
        Begin
          Write('Tab[',i,',',j,']=');
          Readln(Tab[i,j]);
        End;
    End;
End;
Procedure write2d(Var c:Integer;Var r:Integer ; Var Tab:Tab2);
Var
  i,j: Integer;
Begin
  For i:=1 To c Do
    Begin
      For j:=1 To r Do
        Begin
          Writeln(Tab[i,j],',');
          Readln;
        End;
    End;
End;
Var
  c,r,i,j: Integer;
  t , tt: Tab2;
Begin
  read2d(c,r,t);
  write2d(c,r,t);
End.
