# Aktivere lokal administrator-konto

## Med terminalen
1. Høyre-klikk på windows-knappen.
2. Velg "Terminal (Administrator)".
3. Skriv først kommandoen for å aktivere brukeren
```console
net user administrator /active:yes
```
4. Skriv så kommandoen for å gi den passord
```cmd
net user administrator *
```
5. Skriv inn ønsket passord (husk det), og gjenta passordet.
6. Skriv `exit` for å gå ut av terminalen.
7. Logg deg av nåværende bruker, og logg deg på administrator-brukeren.
8. Du må muligens velge "annen bruker", og skrive `.\administrator` som brukernavn.
9. Valgfritt: Skru av administrator:
```
net user administrator /active:no
```

## Med vinduer (GUI)
1. Åpne søkefeltet i windows.
2. Høyre-klikk "Datamaskinbehandling" og velg "Kjør som administrator".
3. Gå til "Lokale brukere og grupper".
4. Velg "brukere".
5. Høyre-klikk på "administrator" og velg "Egenskaper".
6. Fjern haken ved "Konto er deaktivert". 
7. Trykk "Bruk", deretter Ok.
8. Høyre-klikk på "administrator" og velg "Angi passord".
9. Skriv inn et passord, lagre og avslutt.
10. Logg deg av nåværende bruker, og logg deg på administrator-brukeren.
11. Du må muligens velge "annen bruker", og skrive `.\administrator` som brukernavn.