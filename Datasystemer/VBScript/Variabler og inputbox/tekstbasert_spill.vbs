'Oppgaven. Bygg ut til minst 7 hindre. Lag din egen story til spillet
'Fantasi, politi, dungeon, star wars, warcraft osv.
'Bruk både ja/nei spørsmål, og InputBox.
'Bruk chatgpt for å hjelpe til med kreativiteten, 
'men koden må du skrive selv
Function playGame()
    MsgBox("Info om spillet her...")
    Dim svar

    'Hinder 1
    svar = MsgBox("Du møter et monster. Vil du skremme det?", vbYesNoCancel)   
    If svar = vbNo Then 
        MsgBox "Feil. Du døde. Game Over", vbCritical, "Game over"
        Exit Function
    ElseIf svar = vbCancel Then
        MsgBox "Du avsluttet spillet. Game Over", vbCritical, "Game over"
        Exit Function
    Else 
        MsgBox("Bra. Monsteret ble skremt og løp vekk")
    End if

    'Hinder 2
    svar = InputBox("Neste oppgave. Vil du skrike(s), eller flykte(f)?")
    if svar = "f" Then
        MsgBox("Feil. Du døde. Game Over")
        Exit Function
    Else
        MsgBox("Du skrek. Monsteret ble dauhørt.")
    End if

    'Hinder 3
End Function

playGame()