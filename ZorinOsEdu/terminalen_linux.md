# Terminalen i Linux

## Logge seg på Debian-serveren
Dere kan logge dere på med deres brukernavn og passord gjennom SSH ved å skrive:
```bash
ssh brukernavn@nannestad-imk.no
```
Du blir promptet om passord. Når passordet er tastet inn, er du klar for å bruke terminalen i Linux.
Endringer du nå gjør, foregår på ditt hjemmeområde på Debian-serveren (som står på lekerommet).

## Navigering i filsystemet

| Kommando    | Forklaring |
|-------------|------------|
| `pwd`       | Viser stien til den nåværende katalogen (Print Working Directory). |
| `ls`        | Lister innholdet i en katalog. Uten argumenter lister den innholdet i den nåværende katalogen. |
| `cd <mappe>`| Endrer den nåværende katalogen til `<mappe>`. Hvis `<mappe>` er utelatt, bytter den til hjemmekatalogen til brukeren. |
| `cd ..`     | Flytter til overordnet katalog (en katalog opp). |
| `cd -`      | Bytter til forrige katalog. |
| `cd`      | Bytter til Hjem-mappa. Brukeren jens vil havne i `/home/jens/`. En root-bruker havner i mappen `/root/`. |
| `ls -l`     | Lister innholdet i en katalog med detaljert informasjon (f.eks. tillatelser, eier, størrelse). |
| `ls -a`     | Lister all kataloginnhold, inkludert skjulte filer (filer som starter med `.`). |
| `mkdir <mappe>` | Oppretter en ny katalog med navnet `<mappe>`. |
| `rmdir <mappe>` | Sletter en tom katalog med navnet `<mappe>`. |
| `rm <fil>` | Sletter filen med navn `<fil>`. |
| `rm -r <mappe>` | Sletter mappen og alle underkataloger etter filer. |

## Kopiering av filer
| Kommando                                                     | Handling                          | Forklaring |
|--------------------------------------------------------------|-----------------------------------|------------|
| `cp <kilde> <destinasjon>`                                   | Kopiere filer lokalt              | Kopierer filen eller katalogen fra `<kilde>` til `<destinasjon>`. Bruk `-r` for rekursiv kopiering av kataloger. |
| `scp <kilde> bruker@server:<destinasjon>`                    | Kopiere fra lokalt til server     | Bruker `scp` for å kopiere filer fra det lokale systemet til en destinasjon på serveren. Krever SSH-tilgang. |
| `scp bruker@server:<kilde> <destinasjon>`                    | Kopiere fra server til lokalt     | Kopierer filer fra en server til det lokale systemet ved hjelp av `scp`. Dette krever også SSH-tilgang. |
| `cp -r <kildemappe> <destinasjonsmappe>`                     | Kopiere kataloger lokalt          | Kopierer en katalog og dens innhold rekursivt fra `<kildemappe>` til `<destinasjonsmappe>`. |
| `scp -r <kildemappe> bruker@server:<destinasjonsmappe>`      | Kopiere kataloger fra lokalt til server | Kopierer en hel katalog rekursivt fra det lokale systemet til en server. `-r` flagget brukes for å indikere rekursiv kopiering. |
| `scp -r bruker@server:<kildemappe> <destinasjonsmappe>`      | Kopiere kataloger fra server til lokalt | Bruker `scp` med `-r` flagget for å rekursivt kopiere en katalog fra en server til det lokale systemet. |

### Komplett eksempel på kopiering til server:

La oss si at du ønsker å kopiere en fil ved navn `eksempel.txt` fra din lokale maskin til en server. Serverens adresse er `eksempelserver.com`, og du vil plassere filen i mappen `/home/brukernavn/dokumenter` på serveren, som tilsvarer banen `~/dokumenter` når du er logget på serveren med `brukernavn` som ditt brukernavn. Din brukerkonto på serveren er `brukernavn`.

1. **Åpne et terminalvindu** på din lokale maskin.
2. Bruk `scp`-kommandoen som følger:

```bash
scp eksempel.txt brukernavn@eksempelserver.com:~/dokumenter
```

3. Du vil bli bedt om å oppgi passordet for `brukernavn` på `eksempelserver.com`.
4. Etter å ha skrevet inn passordet, vil filen `eksempel.txt` bli kopiert til `/home/brukernavn/dokumenter` på serveren.

I dette eksemplet antas det at du har tillatelse til å skrive til målmappen på serveren, og at SSH-tjenesten kjører på `eksempelserver.com`.

## Redigere og lese filer

| Kommando               | Handling                         | Forklaring |
|------------------------|----------------------------------|------------|
| `cat <filnavn>`        | Lese filer                       | Viser innholdet i filen `<filnavn>` på standard output. Brukes ofte for å se innholdet i små filer. |
| `less <filnavn>`       | Lese filer interaktivt           | Åpner filen `<filnavn>` for lesing i et interaktivt grensesnitt som tillater navigering både oppover og nedover i filen. |
| `nano <filnavn>`       | Redigere filer                   | Åpner filen `<filnavn>` i Nano teksteditor for redigering. Nano er enkel for nybegynnere. |
| `head <filnavn>`       | Vise begynnelsen av filer        | Viser de første 10 linjene av filen `<filnavn>`. Antall linjer kan justeres med `-n` flagget (f.eks. `head -n 5 <filnavn>`). |
| `touch <filnavn>`      | Opprette eller oppdatere filer   | Oppretter en ny fil ved navn `<filnavn>` hvis den ikke eksisterer, eller oppdaterer tidsstempelet på filen hvis den eksisterer. |
| `echo 'tekst' > <fil>` | Skrive tekst til filer           | Skriver `tekst` til filen `<fil>`, og erstatter eventuelt eksisterende innhold. Bruk `>>` for å legge til tekst i eksisterende innhold. |




