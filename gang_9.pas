Program Gang_of_9;

Function Comp(A:Integer;B:Integer): Integer;
Var
  X,Y,R: Integer;
Begin
  R := B;
  X := A;
  While X>0 Do
    Begin
      Y := X Mod 10;
      X := X Div 10;
      R := R*10+Y;
    End;
  comp := R;
End;

Function Exist_digit(A:Integer;D:Integer): Boolean;
Begin
  Exist_digit := False;
  Repeat
    If (A Mod 10)=D Then
      Exist_digit := True;
    A := A Div 10
  Until A=0;
End;

Function Sum_digit(N:Integer): Integer;
Var
  X,sum: Integer;
Begin
  X := N;
  sum := 0;
  Repeat
    sum := sum+X Mod 10;
    X := X Div 10
  Until X=0;
  Sum_digit := sum;
End;

Function NB_Digit(N:Integer): Integer;
Var
  i,X: Integer;
Begin
  i := 0;
  X := N;
  Repeat
    X := X Div 10;
    i := i+1
  Until X=0;
  NB_Digit := i;
End;

Function Repeat_digit(N:Integer): Boolean;
Var
  X,Y,L,i: Integer;
Begin
  repeat_digit := False;
  For i:=0 To 9 Do
    Begin
      X := N;
      L := 0;
      Repeat
        Y := X Mod 10;
        X := X Div 10;
        If Y=i Then
          Begin
            L := L+1;
            If L>=2 Then
              Repeat_digit := True;
          End
      Until X=0;
    End;
End;
Var
  A,B,C,R,S,NB,sum: Integer;
  D,E: Boolean;
Begin
  Writeln('The gang of 9 :');
  For A:=123 To 987 Do
    Begin
      For B:=123 To 987 Do
        Begin
          C := A+B;
          sum := Sum_digit(C);
          If sum=18 Then
            Begin
              R := Comp(A,B);
              S := Comp(R,C);
              NB := NB_Digit(S);
              If NB=9 Then
                Begin
                  E := Exist_digit(S,
                       0);
                  If E=False Then
                    Begin
                      D := Repeat_digit(S);
                      If D=False Then
                        Writeln(A,'+',B,'=',C);
                    End;
                End;
            End;
        End;
    End;
  Readln;
End.
