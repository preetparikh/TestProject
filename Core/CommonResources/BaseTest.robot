*** Settings ***
Library    SeleniumLibrary
Library    AppiumLibrary

*** Keywords ***

Base Mobile App Suite Setup
    [Arguments]    ${PLATFORM_NAME}
    import library    AppiumLibrary
    Set Library Search Order    AppiumLibrary    SeleniumLibrary
    open application    http://${HOST}:${PORT}/wd/hub    platformName=Android	   platformVersion=${ENVIRONMENT_MOBILE_PLATFORM_VERSION}    deviceName=${ENVIRONMENT_MOBILE_SIMULATOR}    app=${ENVIRONMENT_MOBILE_APP_LOCATION}     avd=${ENVIRONMENT_MOBILE_SIMULATOR}    noReset=FALSE

Base Mobile App Test Setup
    [Arguments]    ${PLATFORM_NAME}
    import library    AppiumLibrary
    Set Library Search Order    AppiumLibrary    SeleniumLibrary
    open application    http://${HOST}:${PORT}/wd/hub    platformName=Android	   platformVersion=${ENVIRONMENT_MOBILE_PLATFORM_VERSION}    deviceName=${ENVIRONMENT_MOBILE_SIMULATOR}    app=${ENVIRONMENT_MOBILE_APP_LOCATION}    avd=${ENVIRONMENT_MOBILE_SIMULATOR}    noReset=TRUE

Base Mobile Test Tear Down
    Close Application
    log to console    remove application


