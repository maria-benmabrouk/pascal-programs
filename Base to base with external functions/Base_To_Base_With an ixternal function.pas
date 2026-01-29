Program Base_To_Base_Function;
{$i Function_Freak_Digit.pas}
{$i Function_Decimal_To_Base.pas}
{$i Function_Base_To_Decimal.pas}
Var
  N,BA,BB,D,B: Integer;
  L: Boolean;
Begin
  Writeln('Enter the number you want to convert');
  Readln(N);
  Writeln('Enter the base of the number');
  Readln(BA);
  L := Freak_Digit(N,BA);
  If L=False Then
    Begin
      Writeln('Enter the base to wich you want to convert');
      Readln(BB);
      D := Base_To_Decimal(N,BA);
      B := Decimal_To_Base(D,BB);
      Writeln(N,' "in the base ',BA ,'"',' = ',B,' "in the base ',BB,'"');
      Readln
    End
  Else
    Write('Error');
  Readln;
End.
