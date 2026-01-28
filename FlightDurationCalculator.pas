Program EXO5;
Var
  HAT,HDT,MAT,MDT,HDF,MDF: Integer;
Begin
  Writeln('please enter the departure time in hours');
  Readln(HDT);
  Writeln('please enter the departure time in minutes');
  Readln(MDT);
  Writeln('please enter the arrival time in hours');
  Readln(HAT);
  Writeln('please enter the arrival time in minutes');
  Readln(MAT);
  If (HDT<0)Or(HDT>23)Or(MDT<0)Or(MDT>59)Or(HAT<0)Or(HAT>23)Or(MAT<0)Or(MAT>59)Then
    Writeln('impossible')
  Else
    Begin
      If HAT=HDT Then
        Begin
          If MAT>MDT Then
            Begin
              HDF := 0;
              MDF := MAT-MDT;
              Writeln('the duration of flight is: ',HDF,'h',':',MDF,'m');
            End
          Else
            Writeln('impossible');
        End
      Else
        Begin
          If HAT>HDT Then
            Begin
              If MAT>=MDT Then
                Begin
                  HDF := HAT-HDT;
                  MDF := MAT-MDT;
                  Writeln('the duration of flight is: ',HDF,'h',':',MDF,'m');
                End
              Else
                Begin
                  HDF := HAT-1-HDT;
                  MDF := MAT+60-MDT;
                  Writeln('the duration of flight is: ',HDF,'h',':',MDF,'m');
                End
            End
          Else
            Begin
              If MAT>=MDT Then
                Begin
                  HDF := 24-HDT+HAT;
                  MDF := MAT-MDT;
                  Writeln('the duration of flight is: ',HDF,'h',':',MDF,'m');
                End
              Else
                Begin
                  HDF := 23+HAT-HDT;
                  MDF := MAT+60-MDT;
                  Writeln('the duration of flight is: ',HDF,'h',':',MDF,'m');
                End
            End
        End
    End;
  Readln;
End.
