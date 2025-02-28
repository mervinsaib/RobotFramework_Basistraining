*** Settings ***
Documentation    A resource file with reusable keywords and variables.
...
...              The system specific keywords created here form our own
...              domain specific language. They utilize keywords provided
...              by the imported SeleniumLibrary.
Library          Browser


*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        chromium
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/welcome.html
${ERROR URL}      http://${SERVER}/error.html


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Login Page Should Be Open

Login Page Should Be Open
    Get Title    ==    Login Page DEV

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Type Text    id=username_field    ${username}

Input Password
    [Arguments]    ${password}
    Type Secret    id=password_field    $password

Submit Credentials
    Click    id=login_button

Welcome Page Should Be Open
    Get Url    ==    ${WELCOME URL}
    Get Title    ==    Welcome Page DEV

Login Should Have Failed
    Get Url    ==    ${ERROR URL}
    Get Title    ==    Error Page DEV
