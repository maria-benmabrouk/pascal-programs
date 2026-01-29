Program maxD1;
Const maxt = 100;
Type
  T = 1..maxt;
  Tab = Array[T] Of Integer;
Procedure read1d(Var size1:Integer;Var T1:Tab);
Var
  i: Integer;
Begin
  Writeln('Enter the size');
  Readln(size1);
  For i:=1 To size1 Do
    Begin
      Writeln('T1[',i,']=');
      Readln(T1[i]);
    End;
End;
Procedure Write1d(size:Integer;T12:tab);
Var
  i: Integer;
Begin
  For i:=1 To size Do
    Write(T12[i],',');
  Readln;
End;
Procedure Max_tab(T1:Tab;size1:Integer; Var Max:Integer);
Var
  i: Integer;
Begin
  Max := T1[1];
  For i:=2 To size1 Do
    Begin
      If T1[i]>Max Then
        Max := T1[i];
    End;
End;
Procedure All_max_tab_index(size1:Integer;T1:Tab;Var size2:Integer; Var T2:Tab);
Var
  Max,i: Integer;
Begin
  size2 := 0;
  Max_tab(T1,size1,Max);
  For i:=1 To size1 Do
    Begin
      If T1[i]=Max Then
        Begin
          size2 := size2+1;
          T2[size2] := i;
        End;
    End;
End;
Var
  size1,size2: Integer;
  T1,T2: Tab;
Begin
  read1d(size1,T1);
  All_max_tab_index(size1,T1,size2,T2);
  Write1d(size2,T2);
End.
