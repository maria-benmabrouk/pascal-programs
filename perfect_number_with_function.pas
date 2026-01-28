Program perfect_number;
Function SumDiviseur(N:Integer): Integer;
Var
  i,Sum,X: Integer;
Begin
  Sum := 0;
  For i:=1 To N Do
    Begin
      X := N Mod i;
      If X=0 Then
        Sum := Sum+i;
    End;
  SumDiviseur := Sum;
End;
Var
  i,a,N,X,Y: Integer;
Begin
  Writeln('Enter the number please':2);
  Readln(N);
  a := 0;
  If N = 1 Then
    Writeln(1,'is not a perfect number':2)
  Else
    Begin
      For i:=2 To N Do
        Begin
          X := SumDiviseur(i);
          Y := X-i;
          If Y=i Then
            Begin
              Write(i,' ; ':2);
              a := a+1;
            End;
        End;
      If a=0 Then
        Writeln('Not exist a perfect number betwin 1 and ',N:2)
      Else
        Write(' : are the perfect numbers between 1 and ',N);
    End;
  Readln
End.
