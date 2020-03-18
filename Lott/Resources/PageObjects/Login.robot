*** Settings ***
Documentation    Page objects for the app login screen
Library    AppiumLibrary
Library    SeleniumLibrary
Resource    Core/EnvironmentConfig/PROD.py

*** Variables ***
${TEXTBOX-loginScreen-Username}    id=com.tattsbet.android:id/txt_user
${TEXTBOX-loginScreen-Password}    id=com.tattsbet.android:id/passvalueEditText
${BUTTON-loginScreen-Login}        id=com.tattsbet.android:id/button_signon
${username}    ${APP_USER}
${password}    ${APP_PASS}
${TEXT-loginScreen-Login}    xpath=//*[@label='Login']

*** Keywords ***
Click Login on Splash Screen
    wait until page contains element    ${TEXT-loginScreen-Login}
    click element    ${TEXT-loginScreen-Login}

Log into the app
    wait until keyword succeeds    1 min    2 sec    AppiumLibrary.wait until element is visible    ${TEXTBOX-loginScreen-Username}
    AppiumLibrary.input text    ${TEXTBOX-loginScreen-Username}    ${username}
    AppiumLibrary.input text    ${TEXTBOX-loginScreen-Password}    ${password}
    wait until keyword succeeds    1 min    2 sec    AppiumLibrary.click element    ${BUTTON-loginScreen-Login}