# Oppgave: Påvirk valgresultat med deepfake

## Oppgavebeskrivelse
Dere skal gruppevis lage en nettside med innhold som svekker velgeres tillit til kandidaten. To grupper lager innhold om Jonas G. Støre, og to grupper lager innhold om Erna Solberg.

## Innhold på nettsiden
- Overskrifter
- Tekst
- To deepfake bilder
- Minst en deepfake video

## Publisering
- Nettsiden legges ut gjennom GitHub pages og deles med klassen i Teams.

## Verktøy
- Roop Unleashed (på github)
- Les dokumentasjonen på git for installeringsinstrukser.

## Innstillinger Roop unleashed (3.6.7)
Du kan for det meste bruke default settings. Det som er viktig er at det dukker opp et ansikt i "Input faces" når du laster opp bildet av ansikt.

Det trenger IKKE å dukke opp ansikt under "Target faces", programmet vil finne det første ansiktet som vises i videoen.

### Sette provider til CPU
1. Settings -> Provider -> Velg cpu (med mindre du har gpu).
2. Trykk "Apply Settings".
3. Trykk "Restart Server".

### Face Swap innstillinger
1. Face Swap fanen.
2. "Select post-processing" velg enten GPEN eller GFPGAN.
3. Sett "Original/Enhanced image blend ratio" til rundt 0,80.

## Viktig om output-folder
Default settings er å slette innhold i output-folderen hver gang du starter en ny face swap. Flytt filer ut av output folderen som du ønsker å beholde, eller endre innstillingene.