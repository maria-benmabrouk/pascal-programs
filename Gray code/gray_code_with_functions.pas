Program Gray_code;
{$i Function_Decimal_To_Base.pas}
Function Nb_repeat(N:Integer;D:Integer): Integer;
Var
  i,X,Y: Integer;
Begin
  X := N;
  i := 0;
  While X>0 Do
    Begin
      Y := X Mod 10;
      X := X Div 10;
      If Y=D Then
        i := i+1;
    End;
  Nb_repeat := i;
End;
Procedure DLD(N:Integer;Var X:Integer;Var Y:Integer);
Begin
  X := N Div 10;
  Y := N Mod 10;
End;

Function change_digit_binary(N:Integer): Integer;
Var
  Y,a,X: Integer;
Begin
  X := N;
  a := 1;
  Repeat
    Y := X Mod 10;
    X := X Div 10;
    a := a*10;
  Until Y=1;
  If (X Mod 10 = 0) Then
    Begin
      X := X+1
    End
  Else
    Begin
      X := X-1;
    End;
  X := (X*10+1)*(a Div 10);
  change_digit_binary := X;
End;
//Program principal
Var
  N,i,X,Y,D,Z,S,R,B: Integer;
Begin
  Writeln('Enter the number in decimal');
  Readln(N);
  Writeln('Decimal');
  Writeln('--------');
  For i:=1 To N Do
    Write(i,' ,');
  Writeln('          ');
  Writeln('Binary');
  Writeln('-------');
  For i:=1 To N Do
    Begin
      X := Decimal_To_Base(i,2);
      Write(X,' ,');
    End;
  Writeln('       ');
  Writeln('Gray code');
  Writeln('---------');
  Write('1 ,');
  D := 1;
  S := 1;
  Repeat
    Y := Nb_repeat(D,1);
    R := Y Mod 2;
    If R=0 Then
      Begin
        DLD(D,X,Z);
        X := X*10;
        If Z=0 Then
          D := X+1;
        If Z<>0 Then
          D := X;
      End;
    If R<>0 Then
      Begin
        D := change_digit_binary(D);
      End;
    S := S+1;
    Write(D,' ,')
  Until S=N;
  Readln;
End.
