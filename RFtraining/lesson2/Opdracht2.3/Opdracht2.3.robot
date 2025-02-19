*** Settings ***
Resource    Resources/Opdracht2.3.resource
Documentation    Naast de demo-omgeving DEV (port 7272) is er ook een op TEST (port 2727)
...              Maak een robot.toml bestand met daarin een placeholder voor de omgevingsvariabele
...              en een profiel voor elke omgeving​
...              Run de testgevallen voor beide omgevingen via de test explorer en via de commandline


*** Test Cases ***
Opdracht2.3.1
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open

Opdracht2.3.2
    Open Browser To Login Page
    Input Username    demo
    Input Password    m0de
    Submit Credentials
    Login Should Have Failed
