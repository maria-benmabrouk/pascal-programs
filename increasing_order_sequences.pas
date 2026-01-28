Program increasing_order_sequences;

Const max = 100;
Type
  T = 1..max;
  Tab1 = Array[T] Of Integer;

Procedure read1d(Var m:Integer;Var Tab:Tab1);
Var
  i: Integer;
Begin
  Writeln('Enter the size');
  Readln(m);
  For i:=1 To m Do
    Begin
      Writeln('Tab[',i,']=');
      Readln(Tab[i]);
    End;
End;
Var
  m,i,l,r: Integer;
  Ta: Tab1;
Begin
  read1d(m,Ta);
  i := 0;
  l := 0;
  Repeat
    r := 0;
    Repeat
      i := i+1;
      r := r+1
    Until (Ta[i]>Ta[i+1]);
    i := i+1;
    If r>=2 Then
      l := l+1;
  Until (i=m);
  Writeln('the number of increasing-order sequences is : ' ,l);
  Readln;
End.
