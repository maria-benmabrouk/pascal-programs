Program ex_string;

Procedure Delete_char(S:String;Var N:String);
Var
  i,j: Integer;
  R: Char;
Begin
  N := '';
  j := 0;
  For i:=1 To Length(S) Do
    Begin
      R := Upcase(S[i]);
      If ( Ord(R)>=65) And (Ord(R)<=90) Then
        Begin
          N := N+R;
        End;
    End;
End;

Procedure P_string(N:String;Var B:Boolean);
Var
  m,i: Integer;
Begin
  m := 0;
  B := True;
  For i:=1 To ((Length(N))Div 2) Do
    Begin
      If N[i]<>N[Length(N)-m] Then
        B := False;
      m := m+1;
    End;
End;

Procedure palindrom(S:String);
Var
  N: String;
  B: Boolean;
Begin
  Delete_char(S,N);
  Writeln(N);
  P_string(N,B);
  Writeln(N);
  If B=False Then
    Writeln('is not a palindrom');
  If B=True Then
    Writeln('is a palindrom');
  Readln;
End;
Var
  S: String;
Begin
  Writeln('enter the string');
  Readln(S);
  palindrom(S);
End.
