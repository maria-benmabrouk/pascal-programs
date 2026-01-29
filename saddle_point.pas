Program Saddle_Point;

Const maxc = 100;
  maxr = 100;
  max = 100;
Type
  Tc = 1..maxc;
  Tr = 1..maxr;
  T = 1..max;
  Tab1 = Array[T] Of Integer;
  Tab2 = Array[Tc,Tr] Of Integer;

Procedure Read2D (Var T2:Tab2;Var sizeC:Integer ;Var sizeR:Integer);
Var
  i,j: Integer;
Begin
  Writeln('Enter the size of the columns');
  Readln(sizeC);
  Writeln('Enter the size of the rows');
  Readln(sizeR);
  For i:=1 To sizeC Do
    Begin
      For j:=1 To sizeR Do
        Begin
          Write
          ('Tab1[',i,',',j,']=');
          Readln(T2[i,j]);
        End;
    End;
End;

Function small_val_col(NC:Integer;T2:Tab2;sizeR:Integer): Integer;
Var
  sv,i: Integer;
Begin
  sv := T2[NC,1];
  For i:=2 To sizeR Do
    Begin
      If T2[NC,i]<SV Then
        sv := T2[NC,i];
    End;
  small_val_col := sv
End;

Procedure RSmall_valC(T2:Tab2;SV:Integer;NC:Integer;sizeR:Integer;Var T1:Tab1; Var size:Integer);
Var
  i: Integer;
Begin
  size := 0;
  For i:=1 To sizeR Do
    Begin
      If T2[NC,i]=SV Then
        Begin
          size := size+1;
          T1[size] := i;
        End;
    End;
End;

Function Largest_valR(NR:Integer;SV:Integer;T2:Tab2;sizeC:Integer): Boolean;
Var
  i: Integer;
  b: Boolean;
Begin
  b := True;
  For i:=1 To sizeC Do
    Begin
      If T2[i,NR]>SV Then
        b := False;
    End;
  Largest_valR := b
End;
Var
  sizeC,sizeR,size,NR,SV,i,j,n: Integer;
  T2: Tab2;
  T1: Tab1;
  b: Boolean;
Begin
  Read2D(T2,sizeC,sizeR);
  n := 0;
  For i:=1 To sizeC Do
    Begin
      SV := small_val_col(i,T2,sizeR);
      RSmall_valC(T2,SV,i,sizeR,T1,size);
      For j:=1 To size Do
        Begin
          NR := T1[j];
          b := Largest_valR(NR,SV,T2,sizeC);
          If b=True Then
            Begin
              Write('T2[',i,',',NR,'],');
              n := n+1;
            End;
          Read;
        End;
    End;
  If n=0 Then
    Writeln('does not exist a Saddle Point');
  Readln;
End.
