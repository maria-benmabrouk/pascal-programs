Program sorting;
Uses Crt;
Const max = 100;
Type
  v = 1..max;
  tab = Array[v] Of Integer;

Procedure read1d(Var max:Integer ; Var t:tab ;Var i:Integer);
Begin
  Writeln('the size is : ' );
  Readln(max);
  i := 0;
  Repeat
    i := i+1;
    Readln(t[i])
  Until (i=max) Or (Readkey=Chr(27));
End;
Procedure write1d(t:tab; m:Integer);
Var
  s: Integer;
Begin
  s := 0;
  Repeat
    s := s+1;
    Writeln('t[',s,']=',t[s]);
    Readln
  Until (s=m) Or (Readkey=Chr(27));
End;
Procedure SWAP(Var A:Integer;Var B:Integer);
Var
  C: Integer;
Begin
  C := A;
  A := B;
  B := C;
End;
Function indMin(T:tab;B1:Integer;B2:Integer): Integer;
Var
  i,ind: Integer;
Begin
  ind := B1;
  For i:=B1+1 To B2 Do
    Begin
      If T[i]<T[ind] Then
        Ind := i;
    End;
  indMin := i;
End;
Procedure TRISEL(Tai:Integer; Var T:tab);
Var
  i,n: Integer;
Begin
  For i:=1 To Tai-1 Do
    Begin
      n := indMin(T,i,Tai);
      SWAP(T[i],T[n]);
    End;
End;
Var
  m,i: Integer;
  t: tab;
Begin
  read1d(m,t,i);
  TRISEL(i,t);
  write1d(t,i);
End.
