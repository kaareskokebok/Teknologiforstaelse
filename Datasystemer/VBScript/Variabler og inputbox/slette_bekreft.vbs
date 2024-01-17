Dim svar
svar = MsgBox("Are you sure you want to delete Windows?", vbQuestion + vbYesNo, "Warning")

If svar = vbYes Then
    MsgBox("Windows will now be deleted.")
Else
    MsgBox("Windows is now safe.")
End If

'Oppgave: Lag en ny vbs-fil. Programmet skal spørre "Are you sure you want to close the program?".
'Hvis brukeren svarer ja, svar "Programmet avsluttes ...", 
'hvis brukeren svarer nei, så skjer det ingenting!
