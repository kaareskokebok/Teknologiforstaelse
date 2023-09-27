Her er en steg-for-steg guide for å sette opp en virtuell maskin ved hjelp av **VirtualBox**, som er en populær gratis virtualiseringsløsning:

### 1. Installer VirtualBox:
1. Gå til VirtualBox sin offisielle nettside: https://www.virtualbox.org/
2. Last ned den nyeste versjonen av VirtualBox for Windows.
3. Åpne den nedlastede filen og følg instruksjonene for å installere VirtualBox.

### 2. Last ned Linux ISO:
1. Gå til [Distrowatch.com](https://distrowatch.com/) og last ned en Linux iso. Linux Mint er en god start for nybegynnere.
1. Last ned ISO-filen for den ønskede versjonen. Husk plasseringen der du lagrer denne filen.

### 3. Opprett en virtuell maskin i VirtualBox:
1. Åpne VirtualBox fra Start-menyen.
2. Klikk på "New" knappen for å starte prosessen med å opprette en ny VM.
3. Gi VM-en et navn, velg type (Linux) og versjon (basert på distribusjonen du har valgt, for eksempel "Ubuntu (64-bit)").
4. Velg mengden RAM du vil tildele til VM. For mange Linux-distribusjoner er 2 GB eller mer tilstrekkelig.
5. Opprett en virtuell harddisk. Velg "VDI (VirtualBox Disk Image)" som filtype. For lagringsstørrelse, velg enten fast størrelse eller dynamisk tildelt, basert på dine preferanser. 20 GB eller mer er ofte tilstrekkelig for mange Linux-distribusjoner.

### 4. Sett opp Linux ISO for installasjon:
1. Med den nyopprettede VM-en markert, klikk på "Settings".
2. Gå til "Storage" seksjonen.
3. Under "Controller: IDE", klikk på det tomme CD-ikonet, deretter på CD-ikonet til høyre og velg "Choose/Create a Virtual Optical Disk File".
4. Velg Linux ISO-filen du lastet ned tidligere.

### 5. Start og Installer Linux:
1. Velg den virtuelle maskinen du nettopp opprettet og klikk på "Start" knappen.
2. VM-en skal starte fra Linux ISO-filen. Følg installasjonsinstruksjonene for valgt Linux-distribusjon.
3. Når installasjonen er ferdig, shut ned eller restart den virtuelle maskinen. 

Gratulerer! Du har nå satt opp en virtuell maskin med Linux på din Windows 10 Home-PC ved hjelp av VirtualBox. Husk å holde både vertsmaskinen og den virtuelle maskinen oppdatert for å sikre at de kjører trygt og effektivt.
