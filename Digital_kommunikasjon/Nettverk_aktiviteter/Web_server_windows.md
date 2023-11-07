# Web-server med Apache, Windows

## Steg 1: Last Ned Apache for Windows

Apache tilbyr ikke en offisiell distribusjon for Windows, men du kan laste ned en Windows-versjon av Apache fra tredjepartsleverandører som Apache Lounge eller bruke en distribusjon som XAMPP, som er en PHP-utviklingsmiljø som inkluderer MariaDB, PHP og Perl.

For enkelhets skyld, XAMPP anbefales fordi det er enklere å installere og bruke, spesielt for nybegynnere.

## Steg 2: Installer Apache (via XAMPP)

1. Last ned XAMPP fra den offisielle nettsiden: [apachefriends.org](https://www.apachefriends.org/index.html).
2. Kjør den nedlastede installasjonsfilen og følg installasjonsveiviseren. Under installasjonen kan du velge hvilke komponenter som skal installeres. Apache er nødvendig, men du kan også velge å installere MySQL, PHP, og Perl.
3. Etter installasjonen, åpne XAMPP-kontrollpanelet, som lar deg starte, stoppe, og administrere Apache-tjenestene.

## Steg 3: Start Apache Server

- Gå til XAMPP-kontrollpanelet og start Apache ved å klikke på "Start"-knappen ved siden av "Apache".

## Steg 4: Test at Apache fungerer

- Åpne en nettleser og gå til `http://localhost`. Du bør se XAMPP sin startside, noe som indikerer at Apache kjører.

## Steg 5: Legge til og Tilpasse Websider

- XAMPP installerer filene i en mappe som vanligvis er `C:\xampp`. For å legge til dine egne websider, naviger til `C:\xampp\htdocs`.
- Erstatt eller endre `index.php` eller legg til dine egne HTML/PHP-filer her for å tjene dine websider fra Apache.

## Steg 6: Tillate Nettverkstilgang

- Hvis Windows-brannmuren ber om tillatelser for Apache, sørg for å tillate tilgang.
- Du kan også måtte konfigurere brannmuren for å tillate innkommende forbindelser til port 80 (HTTP) og 443 (HTTPS), hvis du planlegger å bruke disse.

## Steg 7: Tilgang Websider fra Andre Maskiner

- For å tillate andre maskiner i nettverket å se dine websider, finn ut IP-adressen til vertsmaskinen ved å kjøre `ipconfig` i en kommandoprompt.
- Andre kan nå tilgang din Apache server ved å skrive inn denne IP-adressen i deres nettlesere.

