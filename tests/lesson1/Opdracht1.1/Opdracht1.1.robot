*** Settings ***
Documentation    Voer een eerste testgeval uit, en zorg dat deze een browser opent en navigeert naar Bartosz.nl
...              Je kunt voor de browser kiezen uit chromium en firefox.    
...              Let op: Er zijn meerdere manieren om een testgeval in Eclipse te starten.

Library    Browser
Suite Setup    New Browser    chromium    headless=True


*** Variables ***
${url_bartosz}    https://www.bartosz.nl/
${button_accept_cookie}    button#CybotCookiebotDialogBodyButtonAccept
${hamburgermenu}    .burger
${side_nav}    .side-nav

*** Keywords ***
Accept Cookies homepage
    Wait For Elements State    ${button_accept_cookie}    visible
    Wait For Elements State    ${button_accept_cookie}    enabled
    Click                      ${button_accept_cookie}
    
Wait until argument visible
    [Arguments]    ${selector}
    # wacht tot het element zichtbaar is
    Wait For Elements State    ${selector}
    # controleer of er minstens 1 element is
    ${count}=    Get Element Count    ${selector}
    Should Be True    ${count} > 0

*** Test Cases ***
Open bartosz.nl in een browser
    New Page    ${url_bartosz}
    Wait until argument visible    ${button_accept_cookie}
    Accept Cookies homepage
    # Sleep    5s
    Wait until argument visible    ${hamburgermenu}
    Click    ${hamburgermenu}
    Wait until argument visible    ${side_nav}
    Sleep    3s
    
    

    
    

    
    