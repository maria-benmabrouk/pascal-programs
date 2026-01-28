Program exercise7td4;

Const max = 100;
Type
  Tab1d = Array[1..max] Of Integer;
  Temperature = Record
    day: Integer;
    Tab: Tab1d;
  End;
  Tabr = Array[1..7] Of Temperature;

Procedure readtr(Var TW:Tabr);
Var
  i,j: Integer;
Begin
  For i:=1 To 5 Do
    Begin
      Writeln('enter the day in the form DDMMYYYY of the day ',i);
      Readln(TW[i].day);
      For j:=1 To 24 Do
        Begin
          Writeln('enter the temperature of the hour',j);
          Readln(TW[i].Tab[j]);
        End;
    End;
End;

Function average_temperature(d:Integer;TW:Tabr): Real;
Var
  i,a: Integer;
  j: Real;
Begin
  a := 0;
  For i:=1 To 24 Do
    Begin
      a := a+TW[d].Tab[i];
    End;
  j := a/24;
  average_temperature := j;
End;
Var
  tw: Tabr;
  n,h: Integer;
  d: Real;
Begin
  readtr(tw);
  Writeln('enter the number of the day');
  Readln(n);
  d := average_temperature(n,tw);
  Writeln('the average temperature of the day ',n,' is ',d);
  Writeln('enter the hour');
  Readln(h);
  Writeln('the temperature of the hour ',h,' of the day ',n,' is ',tw[n].Tab[h]);
  Readln;
End.
