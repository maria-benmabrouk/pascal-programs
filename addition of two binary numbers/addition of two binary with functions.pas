Program add_two_binary;
Function Addition_of_two_binary(A:Longint;B:Longint): Longint;
Var
  L,c,X,Y,S,sum: Longint;
Begin
  X := A;
  Y := B;
  sum := 0;
  L := 1;
  c := 0;
  Repeat
    S := (X Mod 10)+(Y Mod 10)+c;
    X := X Div 10;
    Y := Y Div 10;
    If S=0 Then
      c := 0;
    If S=1 Then
      Begin
        c := 0;
        sum := sum+L;
      End;
    If S=2 Then
      c := 1;
    If S=3 Then
      Begin
        c := 1;
        sum := sum+L;
      End;
    L := L*10
  Until (S=0) And (X=0) And (Y=0);
  Addition_of_two_binary := sum;
End;
{$i Function_Freak_Digit.pas}
Var
  A,B,sum: Longint;
  d,p: Boolean;
Begin
  Writeln('Enter the number A');
  Readln(A);
  Writeln('Enter the number B');
  Readln(B);
  d := Freak_Digit(A,2);
  p := Freak_Digit(B,2);
  If (d=False) And (p=False) Then
    Begin
      sum := Addition_of_two_binary(A,B);
      Writeln(A,'+',B,'=',sum);
    End
  Else
    Writeln('can not');
  Readln;
End.
