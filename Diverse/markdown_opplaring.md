# Markdown syntaks og kommandoer

## Extension
Installer Markdown preview enhanced (5,5 Mill nedlastninger).

## Overskrifter i MD
Overskrifter i markdown tilsvarer h1-h6 i HTML.

# h1
## h2
### h3
#### h4
osv.

## Avsnitt
Du lager et avsnitt ved å 
trykke 
Enter to ganger.

Nytt avsnitt. Dette tilsvarer et nytt \<p\> element.

## Lister
### Uordnet liste
Bruk - for å lage uordnet liste
- punkt 
- punkt
- punkt

### Ordnet liste
Bruk 1. for å lage ordnet liste
1. punkt 1
2. punkt 2
3. punkt 3
1. sett hvilket som helst tall

## Formatert tekst
Fet skrift **her** og kursiv *her*. For fet skriver vi \*\*her\*\* og for kursiv \*her\*. 

## HTML funker i markdown
Skriver du følgende i markdown
```html
<hr>
<div>Litt tekst her (div)</div>
<p>p element her</p>
<img alt="bilde her" src="">
<hr>
```
Så blir dette resultatet
<hr>
<div>Litt tekst her (div)</div>
<p>p element her</p>
<img alt="bilde her" src="">
<hr>

## Kodeblokk med syntaks-highlight
Her kommer litt python-kode, uten syntaks-highlight. Bruk \`\`\` før og etter for å lage en kodeblokk.
```
a = 3
print("tallet er", a)
``` 

Med highlight
```python
a = 3
print("tallet er", a)
```
HTML med syntaks
```html
<h1>Min overskrift</h1>
<p>Avsnitt her</p>
<hr>
```

## Bilder
For å lage et bilde, kan du skrive
```markdown
![Alt tekst her]("mittbilde.png")
```
Dette tilsvarer HTML:
```html
<img alt="Alt tekst her" src="mittbilde.png">
```
Bruk f.eks. picsum til å lage et bilde her: 

![Bilde fra picsum](https://picsum.photos/200)

Koden til bilde 
```markdown
![Bilde fra picsum](https://picsum.photos/200)
```

## Lenker
Eksempler:
```markdown
[vg.no](https://www.vg.no)
[Les på nrk her](https://www.nrk.no)
```
Resultat:
[vg.no](https://www.vg.no)
[Les på nrk her](https://www.nrk.no)

### Interne lenker
Fint å bruke i TOC (table of contents):
```markdown
[intern-lenke](#overskrifter-i-md)
```
[intern-lenke](#overskrifter-i-md)

### Enkel tabell

|Navn|Alder|Klasse|
|----|----|----|
|Jens Stoltenberg|18|1sta|
|Per|22|1sta|
|Sarah|17|1ima|

