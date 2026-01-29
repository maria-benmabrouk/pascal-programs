Program EXO12;
Uses Crt;
Var
  n,x,y,z,a,m: Integer;
  b,s : Real;
Begin
  Writeln('enter the number n');
  Readln(n);
  a := 1 ;
  z := n Mod 10;
  m := n;
  Repeat
    x := m Div 10 ;
    y := m Mod 10 ;
    m := x;
    a := a*10 ;
  Until m=0;
  b := a/10;
  s := z*b+y+n-z-y*b;
  Writeln(s:0:0);
  Readln;
End.
