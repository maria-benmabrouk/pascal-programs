Program aliquote;
Uses crt;
Var
  N,ordre,sauveN,somdiv,i: Longint;
Begin
  Clrscr;
  textcolor(15);
  Write('donnez N');
  Readln(N);
  Write('suite aliquote : ',N,',');
  sauveN := N ;
  ordre := 0 ;
  Repeat
    somdiv := 1;
    For i:=2 To N Div 2 Do
      If N Mod i=0 Then
        somdiv := somdiv + i ;
    N := somdiv;
    Write(N,',');
    ordre := ordre+1;
  Until (n =1) Or (n = sauveN);
  If n=1 Then
    Begin
      If ordre =1 Then Write ('*N est un nombre premier *');
    End
  Else If n = sauveN Then
         Begin
           Write('*N est sociable');
           If ordre =1 Then Write ('et parfait d''ordre ',ordre,' *')
           Else If ordre =2 Then Write ('et amical d''ordre ',ordre,' *')
           Else Write('d''ordre ', ordre,' *');
         End;
  Readln;
End.
