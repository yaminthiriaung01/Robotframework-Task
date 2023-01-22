*** Settings ***
Resource    ../Resources/Settings.robot

*** Keywords ***
Open Browser and Maximize Window
    SeleniumLibrary.Set Screenshot Directory    ${EXECDIR}/Screenshots
    Open Browser   ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Login Page Should Be Open

Login with Credential
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Input Text    email    ${EMAIL}
    Input Password    password    ${PASSWORD}
    Sleep    2s
    Click Button    Log in
    
Login Page Should Be Open
    Wait Until Element Is Visible    xpath://h1/*[text()="${LOGIN_HEADER}"]
    Title Should Be    ${LOGIN_TITLE}
    Element Should Be Visible    email
    Element Should Be Visible    password
    Page Should Contain Button    Log in
    Capture Page Screenshot    Login_Page_Screenshot.png

Dashboard Should Be Open
    Wait Until Element Is Visible    composition-button
    Title Should Be   ${DASHBOARD_TITLE}
    Sleep    2s
    Capture Page Screenshot    Dashboard_Page_Screenshot.png

Login Failed Because of Invalid Email
    Title Should Be    ${LOGIN_TITLE}
    Element Should Be Visible    //*[@id=":r0:-helper-text"]
    Element Text Should Be     //*[@id=":r0:-helper-text"]    ${INVALID_EMAIL_ERROR}
    Sleep    2s
    Capture Page Screenshot    Invalid_Email_Error_Screenshot.png

Login Failed Beacuse of Blank Credential
    Title Should Be    ${LOGIN_TITLE}
    Element Should Be Visible    //*[@id=":r0:-helper-text"]
    Element Text Should Be     //*[@id=":r0:-helper-text"]    ${INVALID_EMAIL_ERROR}
    Element Should Be Visible    //*[@id=":r1:-helper-text"]
    Element Text Should Be     //*[@id=":r1:-helper-text"]    ${MANDATORY_ERROR}
    Sleep    2s
    Capture Page Screenshot    Mandatory_Error_Screenshot.png
Click Logout    
    Click Button     composition-button
    Sleep    2s
    Capture Page Screenshot    Logout__Button_Screenshot.png
    Click Element    composition-menu
    Sleep    2s