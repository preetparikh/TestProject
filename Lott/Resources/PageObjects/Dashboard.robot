*** Settings ***
Documentation    Page objects for the app login screen
Library    AppiumLibrary
Library    SeleniumLibrary

*** Variables ***
${TILE-Dashboard-Lotto}    accessibility_id=tattsLotto


*** Keywords ***
Verify dashboard
    wait until page contains element    ${TILE-Dashboard-Lotto}
    element should be visible    ${TILE-Dashboard-Lotto}

Select Lotto
    click element    ${TILE-Dashboard-Lotto}