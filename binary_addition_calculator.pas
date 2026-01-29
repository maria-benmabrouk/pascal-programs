Program EXO11_TD2;
Var
  A,B,C,S,N,M,XA,XB,YA,YB,SUM: Integer;
Begin
  Writeln('enter the number A');
  Readln(A);
  Writeln('enter the number B');
  Readln(B);
  n := 1;
  m := 10;
  c := 0;
  SUM := 0;
  Repeat
    XA := A Div M;
    XB := B Div M;
    YA := A Mod M;
    YB := B Mod M;
    A := XA;
    B := XB;
    S := YA+YB+C;
    If S=0 Then
      Begin
        S := YA+YB;
        C := 0;
      End
    Else
      Begin
        If S=1 Then
          Begin
            S := 1;
            C := 0;
          End
        Else
          Begin
            If S=2 Then
              Begin
                S := 1;
                C := 1;
              End
            Else
              Begin
                If S=3 Then
                  Begin
                    S := 1;
                    C := 1
                  End;
              End;
          End;
      End;
    SUM := SUM+S*N;
    N := N*10;
  Until (A=0) And (B=0);
  SUM := SUM+C*(N*10);
  Writeln('A+B=',SUM );
  Readln;
End.
