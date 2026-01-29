Program EXO2;
Var
  weight,height,BMI: Real;
Begin
  Writeln('please input your weight');
  Readln(weight);
  Writeln('please input your height');
  Readln(height);
  If ( weight<=0 ) Or (height <=0) Then
    Writeln('impossible')
  Else
    Begin
      BMI := weight/(height*height);
      If BMI<18.5 Then
        Writeln('underwight')
      Else
        Begin
          If (BMI>=18.5) And( BMI<=24.9) Then
            Writeln('normal weight')
          Else
            Begin
              If (BMI>=25) And (BMI<=29.9) Then
                Writeln('overwight')
              Else
                Begin
                  If BMI>=30 Then
                    Writeln('obesity')
                End
            End
        End
    End;
  Readln;
End.
