*** Settings ***
Resource    Lott/Resources/PageObjects/Dashboard.robot
Resource    Lott/Resources/PageObjects/Login.robot

*** Keywords ***

I am on Login page
    Click Login on Splash Screen

I log into the App
    Log into the app

I am on landing page
    Verify dashboard

I should be able to see lottery tiles
    Verify dashboard
    Select Lotto