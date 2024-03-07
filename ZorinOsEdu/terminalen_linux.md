# Terminalen i Linux

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


