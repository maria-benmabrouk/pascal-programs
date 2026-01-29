Program OccurrencesCounterInArray;
Uses Crt;
Const max = 100;
Type
  T = 1..max;
  Tab1d = Array[T] Of Integer;
Procedure Read1d1(Var x:T;Var ta:Tab1d);
Var
  i: Integer;
Begin
  Writeln('Enter the size ');
  Readln(x);
  For i:=1 To x Do
    Begin
      Write('tab[',i,']=');
      Readln(ta[i]);
    End;
End;
Function NbeV(v:Integer;x:T; ta:Tab1d ): Integer;
Var
  r,i: Integer;
Begin
  i := 0;
  For r:=1 To x Do
    Begin
      If v=ta[r] Then
        i := i+1;
    End;
  NbeV := i
End;
Var
  v: Integer;
  table: Tab1d;
  s: T;
Begin
  Read1d1(s,table);
  Writeln('enter the number');
  Readln(v);
  Writeln('the Occurrences of ',v,' in the table is ', NbeV(v,s,table));
  Readln;
End.
