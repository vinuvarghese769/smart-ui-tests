*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords/login_keywords.robot
Test Setup        Open Browser To Login Page
Test Teardown     Close Browser

*** Test Cases ***
Login With Valid Credentials
    Input Credentials    vinuvarghesec@gmail.com    Test@123
    Click Login Button
    Verify Login Successful

Login With Invalid Credentials
    Input Credentials    test@testmail.com    12ab34cd
    Click Login Button
    Verify Error Message
