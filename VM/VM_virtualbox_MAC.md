Her er en steg-for-steg guide for å sette opp en virtuell maskin ved hjelp av **VirtualBox** på en Mac:

### 1. Installer VirtualBox:
1. Besøk VirtualBox sin offisielle nettside: https://www.virtualbox.org/
2. Last ned den nyeste versjonen av VirtualBox for macOS.
3. Åpne den nedlastede `.dmg` filen og dra VirtualBox-ikonet til Applications-mappen.

### 2. Last ned Linux ISO:
1. Gå til [Distrowatch.com](https://distrowatch.com/) og finn en Linux distribusjon du ønsker. Linux Mint er en god start for nybegynnere.
2. Last ned ISO-filen for den ønskede versjonen. Noter hvor du lagrer denne filen.

### 3. Opprett en virtuell maskin i VirtualBox:
1. Åpne VirtualBox fra Applications-mappen.
2. Klikk på "New" knappen for å starte opprettingen av en ny VM.
3. Gi VM-en et navn, velg type (Linux) og versjon (basert på distribusjonen du valgte, for eksempel "Mint (64-bit)").
4. Velg mengden RAM du ønsker å tildele til VM. For mange Linux-distribusjoner er 2 GB eller mer tilstrekkelig.
5. Opprett en virtuell harddisk. Velg "VDI (VirtualBox Disk Image)" som filtype. Angående lagringsstørrelse, velg enten fast størrelse eller dynamisk tildelt, basert på dine preferanser. 20 GB eller mer er ofte tilstrekkelig for mange Linux-distribusjoner.

### 4. Konfigurer Linux ISO for installasjon:
1. Med den nyopprettede VM-en markert, klikk på "Settings".
2. Gå til "Storage" seksjonen.
3. Under "Controller: IDE", klikk på det tomme CD-ikonet, deretter på CD-ikonet til høyre og velg "Choose/Create a Virtual Optical Disk File".
4. Naviger til og velg Linux ISO-filen du lastet ned tidligere.

### 5. Start og Installer Linux:
1. Velg den virtuelle maskinen du nettopp opprettet og klikk på "Start" knappen.
2. VM-en skal nå starte fra Linux ISO-filen. Følg installasjonsinstruksjonene for den valgte Linux-distribusjonen.
3. Når installasjonen er ferdig, shut ned eller restart den virtuelle maskinen. 

Gratulerer! Du har nå satt opp en virtuell maskin med Linux på din Mac ved hjelp av VirtualBox. Akkurat som med Windows, husk å holde både vertsmaskinen og den virtuelle maskinen oppdatert for sikkerhet og optimal ytelse.
