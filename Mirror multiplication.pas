Program Mirror_multiplication;
{$i Function_existing_digit.pas}
{$i Function_Swich.pas}
{$i Function_Composition.pas}
{$i Function_repeating_digit.pas}
Var
  N,B,X,Y,Z,S,C: Integer;
  D,R: Boolean;
Begin
  Writeln('Mirror_multiplication');
  For N:=123 To 987 Do
    Begin
      For B:=12 To 98 Do
        Begin
          C := Comp(N,B);
          D := Repeat_digit(C);
          If D=False Then
            Begin
              R := Exist_digit(C,0);
              If R=False Then
                Begin
                  S := N*B;
                  X := Swich(N);
                  Y := Swich(B);
                  Z := X*Y;
                  If Z=S Then
                    Writeln(N,'*',B,'=',X,'*',Y,'=',S);
                End;
            End;
        End;
    End;
  Readln;
End.
