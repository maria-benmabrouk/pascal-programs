Program exercice5;

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
          Writeln('Tab[',i,',',j,']=');
          Readln(Tab[i,j]);
        End;
    End;
End;
Procedure write2d(c:Integer;r:Integer ;Tab:Tab2);
Var
  i,j: Integer;
Begin
  Writeln('the values of the tableau : ');
  For i:=1 To c Do
    Begin
      For j:=1 To r Do
        Begin
          Writeln('T[',i,',',j,']=',Tab[i,j]);
          Readln;
        End;
    End;
End;

Function traspose(c:Integer;r:Integer;Tab:Tab2): Tab2;
Var
  i,j: Integer;
  A2: Tab2;
Begin
  For i:=1 To c Do
    Begin
      For j:=1 To r Do
        A2[j,i] := Tab[i,j];
    End;
  traspose := A2;
End;
Var
  c,r: Integer;
  t1 , t2: Tab2;
Begin
  read2d(c,r,t1);
  t2 := traspose(c,r,t1);
  write2d(r,c,t2);
End.
