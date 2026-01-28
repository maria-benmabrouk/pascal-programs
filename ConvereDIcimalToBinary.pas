Program binary_conversion;
Var
  n,r,bin,p: Integer;
Begin
  Writeln('enter the decimal nember to convert it to binary');
  Readln(n);
  p := 1;
  bin := 0;
  While n<>0 Do
    Begin
      r := n Mod 2;
      bin := bin +r*p;
      p := p*10;
      n := n Div 2 ;
    End;
  Writeln('the number in binary is : ',bin);
  Readln
End.
