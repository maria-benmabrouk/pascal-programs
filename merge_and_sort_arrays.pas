Program EXERCISE2T4;
Const Max = 100;
Type
  T = 1..Max;
  Tab1d = Array[T] Of Integer;

Procedure Read1d(Var size:Integer;Var tab:Tab1d);
Var
  i: Integer;
Begin
  Writeln('Enter the size ');
  Readln(size);
  For i:=1 To size Do
    Begin
      Write('tab[',i,']=');
      Readln(tab[i]);
    End;
End;
Procedure Write1d(size:Integer;tab:Tab1d);
Var
  i: Integer;
Begin
  For i:=1 To size Do
    Begin
      Write(tab[i],',');
      Readln;
    End;
End;
Procedure change_name(Tab1:Tab1d;size1:Integer;Var Tab2:Tab1d);
Var
  i: Integer;
Begin
  For i:=1 To size1 Do
    Begin
      Tab2[i] := Tab1[i];
    End;
End;
Procedure Bubble_sort(size1:Integer;Var Tab1:Tab1d);
Var
  i,k,j: Integer;
Begin
  For j:=1 To size1 Do
    Begin
      For i:=1 To size1 Do
        Begin
          If Tab1[i]>Tab1[i+1] Then
            Begin
              k := Tab1[i];
              Tab1[i] := Tab1[i+1];
              Tab1[i+1] := k;
            End;
        End;
    End;
End;

Procedure Marge_2sort(Tab1:Tab1d;size1:Integer;Tab2:Tab1d;size2:Integer;Var Tab3:Tab1d;Var size3:
                      Integer);
Var
  i,j,m,n: Integer;
Begin
  i := 1;
  j := 1;
  size3 := 1;
  Repeat
    If Tab1[i]<Tab2[j] Then
      Begin
        Tab3[size3] := Tab1[i];
        size3 := size3+1;
        i := i+1;
      End
    Else
      Begin
        Tab3[size3] := Tab2[j];
        size3 := size3+1;
        j := j+1;
      End;
  Until (i=size1+1) Or (j=size2+1);
  If i<=size1 Then
    Begin
      For m:=i To size1 Do
        Begin
          Tab3[size3] := Tab1[m];
          size3 := size3+1;
        End;
    End;
  If j<=size2 Then
    Begin
      For n:=j To size2 Do
        Begin
          Tab3[size3] := Tab2[n];
          size3 := size3+1
        End;
    End;
  size3 := size3-1;
End;
Procedure Marge_n_sort(Var n:Integer;Var Tab3:Tab1d;Var size3:Integer);
Var
  size1,size2,i: Integer;
  tab1,tab2: Tab1d;
Begin
  Writeln('Enter the number of arrays');
  Readln(n);
  Read1d(size1,tab1);
  Bubble_sort(size1,tab1);
  Write1d(size1,tab1);
  For i:=2 To n Do
    Begin
      Read1d(size2,tab2);
      Bubble_sort(size2,tab2);
      Marge_2sort(tab1,size1,tab2,size2,tab3,size3);
      change_name(tab3,size3,tab1);
      size1 := size3;
    End;
End;
Var
  n,size: Integer;
  tab: Tab1d;
Begin
  Marge_n_sort(n,tab,size);
  Write1d(size,tab);
End.
