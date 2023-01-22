*** Settings ***
Resource    ../Resources/Settings.robot
Test Setup    Open Browser and Maximize Window
Test Teardown    Close Browser

*** Test Cases ***
Login with Invalid Credential
    Login with Credential    ${INVALID_EMAIL}    ${PASSWORD}
    Login Failed Because of Invalid Email

Login with Blank Credential
    Login with Credential    ${BLANK}    ${BLANK}
    Login Failed Beacuse of Blank Credential

Login with Valid Credential and Logout
    Login with Credential    ${VALID_EMAIL}    ${PASSWORD}
    Dashboard Should Be Open
    Click Logout
    Login Page Should Be Open
