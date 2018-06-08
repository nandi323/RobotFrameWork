*** Settings ***
Library  Selenium2Library

*** Variables ***

${BROWSER}        Firefox
${DELAY}          0
${GOOGLE_URL}   https://www.google.com/

*** Keywords ***
Open Browser To Google
    Open Browser    ${google_url}   ${BROWSER}
