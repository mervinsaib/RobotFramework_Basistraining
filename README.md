<!-- update voor GitHub test -->

# Introductie 
Dit project bevat de oefenopgaven voor de Robot Framework basistraining. De installatie van Robot Framework is hieronder beschreven:

# Voorbereiding
Om Robot Framework te kunnen installeren, moet het volgende al zijn geïnstalleerd:
1. NodeJS (>=18): <https://nodejs.org/en/download>
2. Python (>=3.8): <https://www.python.org/downloads/>
3. VS Code (nieuwste versie): <https://code.visualstudio.com/download>

# VS Code en Robot Framework
Open nu VS Code. Voor Robot Framework moet je een plugin installeren. Ga naar extensions (Ctrl-shift-X) en zoek op RobotCode.
Open de command palette (Ctrl-shift-P) en typ Python:Create Environment. Selecteer vervolgens Venv. Selecteer de Python versie die je wil gebruiken (bij meerdere versies). Selecteer dan requirements.txt bij dependencies.
Nu wordt (alleen) in deze folder Robot Framework geïnstalleerd.
Open als dit proces klaar is een terminal en voer het volgende uit: rfbrowser init
Dit installeert de browsers die door Robot Framework worden gebruikt.

Mocht je een foutmelding krijgen dat rfbrowser niet kan worden gevonden, dan is de terminal niet goed gereload. Dit zie je aan het <!>. Probeer de terminal dan te herladen. Mocht dit niet lukken, gebruik dan dit commando: python -m Browser.entry init
