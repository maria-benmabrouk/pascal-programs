Program exemple;
Type
  Tab2d = Array[1..3,1..3] Of String ;
  obje = Record
    TabM: Tab2d ;
    c: Char;
    B: Boolean;
    freq: Integer;
  End;

Procedure read_tabM(Var tabM:tab2d);
Var
  i,j: Integer;
Begin
  For i:=1 To 3 Do
    Begin
      For j:=1 To 3 Do
        Begin
          Writeln('the word in [',i,',',j,']is: ');
          Readln(tabM[i,j]);
        End;
    End;
End;

Function NCword(c:Char;S:String): Integer;
Var
  n,i: Integer;
Begin
  n := 0;
  For i:=1 To (Length(S)) Do
    Begin
      If S[i]=c Then
        N := N+1;
    End;
  NCword := N;
End;

Procedure freq_opeC(C:Char;tabM:tab2d;Var NT:Integer;Var NB:Integer);
Var
  i,j,k: Integer;
Begin
  NB := 0;
  NT := 0;
  For i:=1 To 3 Do
    Begin
      For j:=1 To 3 Do
        Begin
          k := NCword(C,tabM[i,j]);
          NT := NT+k;
          If k>0 Then
            NB := NB+1;
        End;
    End;
End;

Procedure fill_rec(Var O:obje);
Var
  NB: Integer;
Begin
  With O Do
    Begin
      read_tabM(TabM);
      Writeln('enter the carecter c');
      Readln(c);
      freq_opeC(C,TabM,freq,NB);
      If NB>1 Then
        B := True
      Else
        B := False;
    End;
End;

Procedure write_2d(tabM:tab2d);
Var
  i,j: Integer;
Begin
  For i:=1 To 3 Do
    Begin
      For j:=1 To 3 Do
        Writeln('T[',i,',',j,']= ',tabM[i,j]);
      Read;
    End;
End;

Procedure implimentation(Var O:obje);
Begin
  With O Do
    Begin
      write_2d(tabM);
      Writeln('The character is: ',C);
      Writeln('The frequency of operances of c is: ',freq);
      If B=True Then
        Writeln('it exist in more than one word')
      Else
        Writeln('it not exist in more than one word');
      Readln;
    End;
End;
Var
  o: obje;
Begin
  fill_rec(o);
  implimentation(o);
End.
