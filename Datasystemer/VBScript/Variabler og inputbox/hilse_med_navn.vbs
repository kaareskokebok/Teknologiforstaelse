'Programmet skal lese inn et navn, og hilse på formen
'Hei, Per. Velkommen!
Dim fornavn, etternavn
fornavn = InputBox("Hva er ditt fornavn?")
etternavn = InputBox("Hva er ditt etternavn?")
MsgBox "Hei, " & fornavn & " " & etternavn & ". Velkommen!"

'TODO: legg til spørsmål om etternavn også. 
'Teksten i MsgBox skal være
'på formen "Hei, Per Johansen. Velkommen!"