Program aliquot_sequence;

Function sumD(N:Integer): Integer;
Var
  i,X,sum: Integer;
Begin
  sum := 0;
  For i:=1 To (N-1) Do
    Begin
      X := N Mod i;
      If X=0 Then
        sum := sum+i;
    End;
  sumD := sum;
End;
Var
  N,X,a: Integer;
Begin
  Writeln('Enter the number');
  Readln(N);
  If N<=1 Then
    Writeln('error')
  Else
    Begin
      X := N;
      a := 0;
      Write('N=',N,' aliquat sequence: ',X,',');
      Repeat
        a := a+1;
        X := sumD(X);
        Write(X,',');
      Until (X=N) Or (X=1);
      If (X=1) And (a=1) Then
        Writeln('(',N,' is prime number)');
      If (X=N) And (a=1) Then
        Writeln('(',N,' is sociable and perfect of order ',a,')');
      If (X=N) And (a=2) Then
        Writeln('(',N,' is sociable and friendly of order ',a,')');
      If (X=N) And (a>2) Then
        Writeln('(',N,' is sociable of order ',a,')');
    End;
  Readln;
End.
