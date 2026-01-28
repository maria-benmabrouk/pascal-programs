Program MaxElementInArray;
Const max1 = 100;
  max2 = 100;
Type
  Tind1 = 1..max1;
  Tind2 = 1..max2;
  TAB_2D = Array[1..max1,1..max2] Of Integer;

Procedure read2d(Var c:Integer;Var r:Integer ;Var Tab:TAB_2D);
Var
  i,j: Integer;
Begin
  Writeln('Enter the size of columns');
  Readln(c);
  Writeln('Enter the number of rows');
  Readln(r);
  For i:=1 To c Do
    Begin
      For j:=1 To r Do
        Begin
          Write('Tab[',i,',',j,']=');
          Readln(Tab[i,j]);
        End;
    End;
End;
Procedure Max_ele_2D (T:TAB_2D;c:Integer;r:Integer; Var max:Integer;Var i:Integer;Var j:Integer);
Var
  m,n: Integer;
Begin
  max := T[1,1];
  i := 1;
  j := 1;
  For m:=1 To c Do
    Begin
      For n:=2 To r Do
        Begin
          If max<T[m,n] Then
            Begin
              max := T[m,n];
              i := m;
              j := n;
            End;
        End;
    End;
  Writeln('the max value is :',max,'	its index is:T[',i,',',j,']');
  Readln;
End;
Var
  c,r,i,j,max: Integer;
  T: TAB_2D;
Begin
  read2d(c,r,T);
  Max_ele_2D(T,c,r,max,i,j);
End.
