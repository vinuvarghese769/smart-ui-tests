*** Keywords ***
Open Browser To Login Page
    Open Browser    https://automationexercise.com/login    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //input[@data-qa='login-email']    10s

Input Credentials
    [Arguments]    ${email}    ${password}
    Input Text    //input[@data-qa='login-email']    ${email}
    Input Text    //input[@data-qa='login-password']    ${password}

Click Login Button
    Click Button    //button[@data-qa='login-button']

Verify Login Successful
    Page Should Contain Element    //a[contains(text(), 'Logout')]

Verify Error Message
    Page Should Contain    Your email or password is incorrect!