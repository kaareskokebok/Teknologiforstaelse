# Handout: Dual-Boot Windows 11 og Ubuntu

## Mål
I denne øvelsen skal du og en partner installere Windows 11 og Ubuntu på samme maskin. Dere skal også lage en partisjon for Ubuntu og sikre at begge operativsystemene kan velges ved oppstart.

## Viktig informasjon
- **Arbeid i par**: Denne øvelsen utføres i par for å fremme samarbeid og problemløsning.
- **Rotasjon**: Sørg for at begge får prøve seg på de praktiske oppgavene.
- **Hjelp hverandre**: Hvis du ser noen som strever, tilby din hjelp.

---

## Steg-for-Steg Instruksjoner

### Del 1: Installere Windows 11

1. **Sett inn den bootable USB-flashen med Windows 11** i datamaskinen.
2. **Start eller start datamaskinen på nytt** og gå til BIOS/UEFI for å endre oppstartsrekkefølgen slik at USB-en blir valgt først.
3. **Følg installasjonsveiviseren** for Windows 11. Når du kommer til delen om partisjonering, følg nøye med på neste trinn.

### Del 2: Opprette en 50 GB Partisjon for Ubuntu

4. I Windows installasjonsveiviser, **velg "Egendefinert: Installer Windows bare (avansert)."**
5. **Partisjoner harddisken** slik at det er en ledig partisjon på minst 50 GB. Dette vil senere bli brukt til å installere Ubuntu.
6. **Fullfør installasjonen** av Windows 11.

### Del 3: Koble til Internett og Last ned Rufus

7. **Koble datamaskinen til internett** med en nettverkskabel.
8. **Start Windows** og åpne en nettleser.
9. **Last ned Rufus** fra den offisielle nettsiden.

### Del 4: Lage en Bootable Ubuntu USB

10. **Sett inn en tom USB-flash** i datamaskinen.
11. **Åpne Rufus** og velg den nedlastede Ubuntu ISO-filen. Følg instruksjonene for å lage en bootable USB.
12. **Safely Eject USB-en** når Rufus er ferdig.

### Del 5: Installere Ubuntu

13. **Sett inn Ubuntu USB-en** og start maskinen på nytt.
14. **Velg å starte fra USB-en** via BIOS/UEFI.
15. **Følg installasjonsveiviseren** for Ubuntu. Når du kommer til delen om diskplass, velg den 50 GB ledige partisjonen du opprettet tidligere.
16. **Fullfør installasjonen** av Ubuntu.

### Del 6: Verifisere Dual-Boot

17. **Start maskinen på nytt**. Du skal nå se en meny som lar deg velge mellom Windows og Ubuntu. Test at begge operativsystemene starter som de skal.

---

## Oppsummering
Gratulerer! Du har nå installert både Windows 11 og Ubuntu på samme maskin, og kan velge mellom dem ved oppstart. 
