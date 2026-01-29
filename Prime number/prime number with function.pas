 Program prime;
Var
  N: Integer;
 {$i function_test.pas}
Begin
  Writeln('enter the number':2);
  Readln(N);
  If N<=1 Then
    Writeln(N,' is not prime number':2);
  If N=2 Then
    Writeln(N,' is a prime number':2);
  If N=3 Then
    Writeln(N,' is a prime number':2);
  If N>3 Then
    Begin
      If prime_number(N)=0 Then Writeln(N,' is not prime number':2)
      Else Writeln(N,' is a prime number':2);
    End;
  Readln;
End.
