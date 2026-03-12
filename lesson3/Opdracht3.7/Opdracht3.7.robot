*** Settings ***  
Documentation    Robot ondersteund verschillende vormen van validaties, één daarvan is een zogenaamde
...              'multi-line String Comparison'.
...
...              Voer test uit om twee csv bestanden met elkaar te vergelijken.
...              Gebruik daarbij de Multiline String Comparison.
...              Voer daarna nog een andere test uit die op lijn niveau de bestanden vergelijkt.
...
...              Bonus opdracht: Log in een apart bestand de positie van een regel in het eerste,
...              en in het tweede bestand.

Library    Collections
Library    OperatingSystem
Library    String


*** Variables ***
${Expected_1}    ${CURDIR}\\Source 1.csv
${Actual_1}      ${CURDIR}\\Actual 1.csv
${Expected_2}    ${CURDIR}\\Source 2.csv
${Actual_2}      ${CURDIR}\\Actual 2.csv


*** Test Cases ***
Opdracht3.7a Vergelijk de eerste set bestanden
    Comment    laad twee bestanden in en vergelijk deze

Opdracht3.7b Vergelijk de tweede set bestanden
    Comment    laad twee bestanden in en vergelijk deze

Opdracht3.7c Vergelijk de tweede set bestanden op regel niveau
    Comment    Ondanks dat de vergelijking op bestand niveau een fout terug geeft, bevatten beide bestanden dezelfde informatie.
    ...        schrijf een test die dit bewijst.

Opdracht3.7 bonus Vergelijk de tweede set bestanden op regel niveau en geef zowel de oude als de nieuwe positie terug in een apart log bestand
    Comment    Maak gebruik van je opgedane kennis over loopjes en controles om deze opdracht te maken
