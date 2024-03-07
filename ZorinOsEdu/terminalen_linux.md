# Terminalen i Linux

## Navigering i filsystemet

| Kommando    | Forklaring |
|-------------|------------|
| `pwd`       | Viser stien til den nåværende katalogen (Print Working Directory). |
| `ls`        | Lister innholdet i en katalog. Uten argumenter lister den innholdet i den nåværende katalogen. |
| `cd <mappe>`| Endrer den nåværende katalogen til `<mappe>`. Hvis `<mappe>` er utelatt, bytter den til hjemmekatalogen til brukeren. |
| `cd ..`     | Flytter til overordnet katalog (en katalog opp). |
| `cd -`      | Bytter til forrige katalog. |
| `ls -l`     | Lister innholdet i en katalog med detaljert informasjon (f.eks. tillatelser, eier, størrelse). |
| `ls -a`     | Lister all kataloginnhold, inkludert skjulte filer (filer som starter med `.`). |
| `mkdir <mappe>` | Oppretter en ny katalog med navnet `<mappe>`. |
| `rmdir <mappe>` | Sletter en tom katalog med navnet `<mappe>`. |
| `find <mappe> -name <navn>` | Søker gjennom `<mappe>` og alle underkataloger etter filer og kataloger med navnet `<navn>`. |
