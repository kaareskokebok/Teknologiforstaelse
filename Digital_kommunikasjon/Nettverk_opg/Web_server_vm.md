# Oppsett og Administrasjon av en Apache Webserver på en Virtuell Maskin

Denne handouten leder deg gjennom prosessen med å sette opp en Apache webserver på en virtuell Linux Mint-maskin i VirtualBox. Vi antar at du allerede har en fungerende VirtualBox-installasjon med en Linux Mint VM klar.

## Steg 1: Forberedelse av Virtuell Maskin

- Start din Linux Mint VM i VirtualBox.
- Logg inn med dine brukerdetaljer.

## Steg 2: Installere Apache Webserver

1. Åpne en terminal.
2. Oppdater pakkelisten med følgende kommando:

    ```bash
    sudo apt update
    ```

3. Installer Apache ved å kjøre:

    ```bash
    sudo apt install apache2
    ```

4. Bekreft at Apache er installert og kjører ved å skrive:

    ```bash
    sudo systemctl status apache2
    ```

    Du bør se at den er aktiv (running).

## Steg 3: Tillate Trafikk Gjennom Brannmuren

1. Tillat HTTP-trafikk gjennom brannmuren:

    ```bash
    sudo ufw allow in "Apache"
    ```

2. Sjekk statusen på brannmuren for å forsikre deg om at reglene er lagt til:

    ```bash
    sudo ufw status
    ```

## Steg 4: Testing av Webserveren

1. Finn IP-adressen til din VM ved å kjøre:

    ```bash
    hostname -I
    ```

2. Åpne en nettleser på vertsmaskinen eller en annen VM.
3. Skriv inn IP-adressen du fant i forrige steg i adresselinjen.
4. Du bør nå se Apache sin standard landingsside, som bekrefter at webserveren fungerer.

## Steg 5: Hosting av en Enkel Webside

1. Naviger til Apache sitt rotkatalog:

    ```bash
    cd /var/www/html
    ```

2. Lag en enkel HTML-fil. Du kan kalle den for eksempel `index.html`:

    ```bash
    sudo nano index.html
    ```

3. Skriv inn HTML-innholdet, for eksempel:

    ```html
    <!DOCTYPE html>
    <html>
    <head>
    <title>Velkommen til Min Webside</title>
    </head>
    <body>
    <h1>Hei, Verden!</h1>
    <p>Dette er min første webside på min Apache server!</p>
    </body>
    </html>
    ```

4. Lagre og lukk filen (i nano, trykk CTRL+X, deretter Y og Enter for å lagre endringene).

5. Oppdater nettleseren der du hadde Apache sin standard side åpen. Du bør nå se den nye siden du opprettet.

## Steg 6: Vedlikehold og Administrasjon

- For å stoppe, starte, eller restarte Apache serveren, kan du bruke følgende kommandoer:

    ```bash
    sudo systemctl stop apache2
    sudo systemctl start apache2
    sudo systemctl restart apache2
    ```

- For å gjøre endringer i Apache's konfigurasjon, rediger filene i `/etc/apache2`. Det er viktig å teste konfigurasjon etter endringer:

    ```bash
    sudo apache2ctl configtest
    ```

    Hvis du får "Syntax OK", kan du trygt restarte Apache for å anvende endringene.

## Steg 7: Ferdig, og klar for klienter

Gratulerer! Du har nå en fungerende Apache webserver på din virtuelle maskin. Inviter de
andre på gruppa til å se din nettside.

## Steg 8: Samle IP-Adresser

Hver person i gruppen må finne ut IP-adressen til sin virtuelle maskin (VM) som kjører webserveren.

- Åpne en terminal og kjør:

  ```bash
  hostname -I
  ```

- Skriv ned IP-adressen som vises.

- Bytt IP-adresser med hverandre slik at alle har en liste over IP-adressene til hver VM i gruppen.

## Steg 9: Modifisere Verters Fil

For å gjøre det enklere å huske og tilgang hverandres servere, kan du legge til en oppføring i vertsmaskinens `hosts`-fil for å tilordne et vennlig domenenavn til IP-adressene. Dette steget er valgfritt og anbefales for en mer realistisk opplevelse.

På hver vertsmaskin:

- Åpne `hosts`-filen med en teksteditor som administrator eller med sudo. På Linux eller macOS, åpner du terminal og skriver:

  ```bash
  sudo nano /etc/hosts
  ```

  På Windows, åpner du Notepad som administrator og åpner filen:

  ```
  C:\Windows\System32\drivers\etc\hosts
  ```

- Legg til en linje for hver VM i gruppen med følgende format:

  ```
  <VM-IP> <valgfritt-domenenavn>
  ```

  For eksempel:

  ```
  192.168.56.101 jens.gruppe1
  192.168.56.102 kari.gruppe1
  ```

- Lagre og lukk filen.

## Steg 10: Besøke Gruppemedlemmenes Websider

- Åpne en nettleser på vertsmaskinen eller en annen VM.
- Skriv inn IP-adressen eller det valgfrie domenenavnet til et av gruppemedlemmenes webservere i adresselinjen.
- Du bør nå se den enkle websiden som det gruppemedlemmet har laget.
- Gjenta denne prosessen for å besøke hver gruppemedlems webserver ved å bruke deres IP-adresser eller domenenavn.

## Steg 11: Tilbakemelding og Samarbeid

- Når dere har besøkt hverandres websider, gi tilbakemelding om design, innhold og funksjonalitet.
- Diskuter eventuelle utfordringer eller problemer du støtte på under oppsettet.

## Steg 12: Oppsummering

Alle gruppemedlemmene har nå satt opp sine egne webservere og har besøkt hverandres nettsteder. 
