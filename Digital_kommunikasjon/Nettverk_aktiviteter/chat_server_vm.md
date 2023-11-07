# Gruppechat med ulike fysiske maskiner gjennom VM (linux mint)

### Intro:
For å bruke `ncat` (en del av Nmap-pakken og en oppgradert versjon av Netcat) til
å kommunisere mellom virtuelle maskiner i VirtualBox på forskjellige fysiske PC-er, 
må du først sørge for at alle virtuelle maskiner er satt opp til å bruke et 
nettverksmodus som tillater dem å kommunisere med hverandre. 
For dette formålet kan du bruke "Bridged Adapter" modusen i VirtualBox.

Her er en trinnvis handout for å konfigurere en `ncat` server og klienter:

### Forberedelse av Nettverk i VirtualBox:

1. Åpne VirtualBox.
2. Velg den virtuelle maskinen du vil konfigurere og klikk på "Settings".
3. Gå til "Network".
4. I fanen "Adapter", velg "Bridged Adapter" eller liknende avhengig av ditt nettverksoppsett.
5. Gjenta denne prosessen for alle de virtuelle maskinene.

**Merk:** Hvis du bruker "Internal Network" eller liknende, 
kan bare virtuelle maskiner på samme fysiske maskin kommunisere med hverandre. 
"Bridged Adapter" lar virtuelle maskiner på forskjellige fysiske maskiner koble seg 
til samme nettverk som vertsmaskinen.

### Installasjon av ncat på Linux Mint:

På alle de virtuelle maskinene med Linux Mint, åpne terminalen og installer `ncat` ved å kjøre:

```bash
sudo apt update
sudo apt install ncat
```

### Konfigurasjon av ncat Server:

1. Velg en av de virtuelle maskinene som server.
2. Åpne en terminal.
3. Kjør følgende kommando for å starte en `ncat` lytteøkt på en spesifikk port (erstatt `<port>` med et portnummer du velger, for eksempel `12345`):

```bash
ncat -l -p <port>
```

### Konfigurasjon av ncat Klienter:

På de andre virtuelle maskinene som skal koble til serveren:

1. Finn ut serverens IP-adresse. På servermaskinen, kjør kommandoen:

```bash
ip addr show
```

Noter ned IP-adressen som er tildelt til serveren av nettverket.

2. Åpne en terminal på hver av klientmaskinene.
3. Koble til serveren ved å kjøre følgende kommando (erstatt `<server-ip>` med IP-adressen til serveren og `<port>` med portnummeret som serveren lytter på):

```bash
ncat <server-ip> <port>
```

Nå skal hver klient kunne skrive meldinger og sende dem til serveren, og omvendt, serveren kan sende meldinger tilbake.

### Kommunikasjon:

- Når klientene har koblet seg til serveren, kan de skrive meldinger og trykke Enter for å sende.
- Alle meldinger som sendes fra serveren vil bli vist på klientenes terminaler, og motsatt, alt som klientene sender vil vises på serverens terminal.

### Avslutning av ncat økten:

- For å avslutte `ncat` økten, skriv `exit` eller bruk Ctrl+C i terminalen.
- Lukk først klienttilkoblingene før serveren lukkes for å unngå tilkoblingsfeil på klientenes side.

**Tilleggsinformasjon:**

- Pass på at brannmuren på din fysiske maskiner tillater innkommende og utgående trafikk på de portene du har valgt.
- Du kan også bruke forskjellige alternativer med `ncat`, som `-v` for verbose output, som gir mer detaljert informasjon om tilkoblingen.

**Sikkerhetshensyn:**

- Vær forsiktig med å åpne porter og sørge for at bare ønskede klienter kan koble til serveren.
- I en skoleinnstilling, pass på at nettverkskommunikasjonen overholder skolens IT-regler og retningslinjer.
