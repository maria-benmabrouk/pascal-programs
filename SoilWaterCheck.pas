Program TD_2_EXO3;
Uses Crt;
Var
  soil_type: String;
  CML: Real;
Begin
  Writeln('the soil type is :');
  Readln(soil_type);
  Writeln('the current moisture level is :');
  Readln(CML);
  If soil_type='sandy' Then
    Begin
      If CML<0.2 Then
        Writeln('recommend irrigation')
      Else
        Writeln('no need for irrigation')
    End
  Else
    Begin
      If soil_type ='clay'Then
        Begin
          If CML<0.3 Then
            Begin
              Writeln('recommend irrigation');
              Readln;
            End
          Else
            Begin
              Writeln('no need for irrigation');
              Readln;
            End
        End
      Else
        Begin
          If soil_type ='loamy'Then
            Begin
              If CML<0.25 Then
                Writeln('recommend irrigation')
              Else
                Writeln('no need for irrigation')
            End;
          Readln;
        End;
      Readln;
    End;
  Readln;
End.
