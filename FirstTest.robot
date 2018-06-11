*** Settings ***

Resource  resources.robot


#Test Teardown  Close Browser

*** Variables ***
${image_list}

*** Test Cases ***
Search A Static Text
    Open Browser To Google
    Input Text To Google Textfield
    Press Search Button

Search This Text
    Open Browser To Google
    Search This  Elmentem a boltba
    Press Search Button

Open Facebook And Fail To Login
    [Documentation]  IF THIS TEST FAILES CHECK THE INPUT VALUES CUZ YOU MIGHT HAVE ACCESS TO SOME 1.ns ACCOUNT :)
    Open Browser To URL  https://www.facebook.com/
    Input Text  email   kjasnfkjakjadnfkadn
    Input Password  pass    snmfikasnasklndfkja
    Click Button    Log In
    Page Should Contain  The email or phone number you’ve entered doesn’t match any account.

#####vvvvvvvvv THIS IS WHY I DONT LIKE ROBOT vvvvvvvvvvv###########
Open Youtube And Click Random Video
    Open Browser To URL  https://www.youtube.com/
    ${image_list} =  Get WebElements  class : style-scope yt-img-shadow
    Click Element   Select From List By Index   ${image_list}   4
#####^^^^^^^^^^ THIS IS WHY I DONT LIKE ROBOT ^^^^^^^^^^^^^##########