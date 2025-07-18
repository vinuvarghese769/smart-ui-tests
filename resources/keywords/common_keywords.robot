*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s

Close Browser
    Close All Browsers

Wait For Element
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    ${timeout}

Take Screenshot On Failure
    [Arguments]    ${name}=screenshot
    Capture Page Screenshot    results/${name}.png

Scroll Element Into View
    [Arguments]    ${locator}
    Execute JavaScript    arguments[0].scrollIntoView(true);    ${locator}