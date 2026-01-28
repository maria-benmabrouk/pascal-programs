Program minVal;
Const max = 100;
Type
  T2 = 1..max;
  Tab2 = Array[T2] Of Integer;
Function minTab1D(TABL:Tab2;x:Integer): Integer;
Var
  i,n: Integer;
Begin
  i := TABL[1];
  For n:=2 To x Do
    Begin
      If i>TABL[n] Then
        i := TABL[n];
    End;
  minTab1D := i;
End;
Function maxTab1D(TABL:Tab2;x:Integer): Integer;
Var
  i,n: Integer;
Begin
  i := TABL[1];
  For n:=2 To x Do
    Begin
      If i<TABL[n] Then
        i := TABL[n];
    End;
  maxTab1D := i;
End;
Var
  l,i: Integer;
  TAB: Tab2;
Begin
  Writeln('Enter the number');
  Readln(l);
  For i:=1 To l Do
    Begin
      Write('TAB[',i,']= ');
      Readln(TAB[i]);
    End;
  Writeln('the minimum value of the table is : ',minTab1D(TAB,l));
  Readln;
  Writeln('the maximum value of the table is : ',maxTab1D(TAB,l));
  Readln;
End.
