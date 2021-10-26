Attribute VB_Name = "Module1"
Sub HEXPALETTE()
  Application.ScreenUpdating = False
  Application.Calculation = xlCalculationManual
Dim i As Long
Dim str0 As String, str As String
For i = 0 To 56
  Cells(i + 1, 1).Interior.ColorIndex = i
  Cells(i + 1, 1).Value = "[Color " & i & "]"
  Cells(i + 1, 2).Font.ColorIndex = i
  Cells(i + 1, 2).Value = "[Color " & i & "]"
  str0 = Right("000000" & Hex(Cells(i + 1, 1).Interior.Color), 6)
  str = Right(str0, 2) & Mid(str0, 3, 2) & Left(str0, 2)
  Cells(i + 1, 3) = "#" & str & "#" & str & ""
  Cells(i + 1, 4).Formula = "=Hex2dec(""" & Right(str0, 2) & """)"
  Cells(i + 1, 5).Formula = "=Hex2dec(""" & Mid(str0, 3, 2) & """)"
  Cells(i + 1, 6).Formula = "=Hex2dec(""" & Left(str0, 2) & """)"
  Cells(i + 1, 7) = "[Color " & i & ")"
Next i
done:
  Application.Calculation = xlCalculationAutomatic
  Application.ScreenUpdating = True
End Sub
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                