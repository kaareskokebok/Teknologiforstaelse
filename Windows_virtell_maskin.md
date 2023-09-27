# Virtuell maskin på Windows: Hyper-V og Linux
Her er en steg-for-steg-guide for å sette opp en virtuell maskin ved bruk av Hyper-V og et Linux-operativsystem:
### 1. Sjekk Systemkrav:
- Du trenger en Windows 10 Pro, Enterprise eller Education for å kjøre Hyper-V. Windows 10 Home støtter ikke Hyper-V.
- Din PC må ha en 64-bits prosessor med Second Level Address Translation (SLAT).
- Minimum 4 GB RAM, men 8 GB eller mer er anbefalt for bedre ytelse.
- Virtualiseringsteknologi må være aktivert i BIOS/UEFI.

### 2,5. Aktivere virtualiseringsteknolog (hyperthreading)
1. **Restart datamaskinen:** Slå av datamaskinen og deretter på igjen, eller bare utfør en omstart.
  
2. **Åpne BIOS/UEFI:** Umiddelbart etter at datamaskinen starter opp, trykk på en bestemt tast (ofte `Delete`, `F2`, `F10`, `F12`, `Esc` eller en annen angitt tast) gjentatte ganger til BIOS/UEFI-innstillingsskjermen vises. Tasten varierer avhengig av datamaskinens produsent og modell, og den kan ofte sees som en melding på skjermen under oppstart ("Press [KEY] to enter setup" eller lignende). Søk på nett for å finne kombinasjonen til din PC.
  
3. **Naviger til CPU- eller Avanserte innstillinger:** Bruk piltastene til å navigere i BIOS/UEFI-menyen. Se etter kategorier som "Advanced", "CPU Configuration", "Advanced CPU Features" eller tilsvarende, avhengig av BIOS/UEFI-versjonen.
  
4. **Finn Virtualiseringsoptjonen:** Innenfor en av de nevnte kategoriene, se etter en innstilling kalt "Virtualization Technology", "Intel VT-x", "AMD-V", "Hyperthreading" eller lignende.

5. **Aktiver virtualisering:** Marker virtualiseringsoptjonen og endre innstillingen til "Enabled" ved enten å trykke `Enter` og velge "Enabled", eller ved å bruke `+` eller `-` taster, avhengig av BIOS/UEFI-grensesnittet.

6. **Lagre og Avslutt:** Trykk på `F10` (eller en annen tast som er angitt for å "Save & Exit" i BIOS/UEFI) for å lagre endringene og avslutte. Datamaskinen vil restarte med de nye innstillingene aktivert.

**Merk:** BIOS/UEFI-menystrukturer og betegnelser kan variere avhengig av datamaskinens hovedkort og produsent. Søk på nett.

### 2. Installer Hyper-V:
1. Åpne "Control Panel" -> "Programs" -> "Turn Windows features on or off".
2. Scroll nedover og kryss av for "Hyper-V". Trykk OK.
3. Vent mens Windows installerer nødvendige komponenter. Etter installasjonen, restart PC-en.
NB! Dersom du windows home, sjekk ut last ned bat-filen her og følg instruksen:
https://github.com/ilkyaa/hyper-v-force-install#how-can-i-install-it-without-having-windows-professional-edition-

### 3. Last ned Linux ISO:
1. Gå til Distrowatch.com og last ned en Linux iso. Linux Mint er en god start for nybegynnere.
1. Last ned ISO-filen for den ønskede versjonen. Husk plasseringen der du lagrer denne filen.

### 4. Opprett en Virtuell Maskin i Hyper-V:
1. Åpne "Hyper-V Manager" fra Start-menyen.
2. I "Action" menyen, velg "New" -> "Virtual Machine".
3. Følg "New Virtual Machine Wizard". Gi maskinen et navn og velg lagringsplassering.
4. Tildel ønsket mengde minne (RAM). For mange Linux-distribusjoner er 2 GB eller mer tilstrekkelig.
5. Velg nettverksadapteren du vil bruke.
6. Opprett en virtuell harddisk. 20 GB eller mer er ofte tilstrekkelig for mange Linux-distribusjoner.
7. Velg "Install an operating system from a bootable CD/DVD-ROM" og velg "Image file (.iso)". Naviger deretter til og velg Linux ISO-filen du lastet ned tidligere.
8. Fullfør veiviseren.

### 5. Start og Installer Linux:
1. I "Hyper-V Manager", høyreklikk på den nylig opprettede virtuelle maskinen og velg "Connect". Dette åpner et nytt vindu.
2. Start den virtuelle maskinen ved å trykke på "Start"-knappen i dette vinduet.
3. Følg installasjonsinstruksjonene for Linux-distribusjonen du valgte. Installasjonsprosessen kan variere litt avhengig av hvilken distro du har valgt.
4. Når installasjonen er ferdig, restart den virtuelle maskinen.

Gratulerer! Du har nå en fungerende Linux virtuell maskin kjørende på din Windows PC ved hjelp av Hyper-V. Husk å regelmessig ta sikkerhetskopier og holde både vertsmaskinen og den virtuelle maskinen oppdatert med sikkerhetsoppdateringer.
