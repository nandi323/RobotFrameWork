*** Settings ***
Library  Selenium2Library

*** Variables ***

${BROWSER}        Firefox
${DELAY}          0.1
${GOOGLE_URL}   https://www.google.com/
${INPUT_FIELD}  lst-ib
${SEARCH_BUTTON}    btnK
${TEXT_TO_SEARCH}   alma
${GOOGLE_IMAGE}     hplogo


*** Keywords ***
Open Browser To Google
    Open Browser    ${google_url}   ${BROWSER}
    Location Should Be  ${google_url}

Input Text To Google Textfield
    Input Text  ${INPUT_FIELD}  ${text_to_search}

Press Search Button
    Click Button    ${search_button}

Search This
    [Arguments]  ${text_used_to_search_it}
    Input Text  ${input_field}  ${text_used_to_search_it}
    Set Focus To Element    ${google_image}

Open Browser To URL
    [Arguments]     ${this_url}
    Open Browser     ${this_url}    ${BROWSER}
    Location Should Be  ${this_url}