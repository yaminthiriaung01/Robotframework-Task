*** Settings ***
Resource    ../Resources/Settings.robot
Test Setup    Open Browser and Maximize Window
Test Teardown    Close Browser

*** Test Cases ***
Search Record By FirstName & LastName
    Login with Credential    ${VALID_EMAIL}    ${PASSWORD}
    Dashboard Should Be Open
    Search by FirstName
    Search by LastName
    Click Logout
    Login Page Should Be Open

Search Record By Age
    Login with Credential    ${VALID_EMAIL}    ${PASSWORD}
    Dashboard Should Be Open
    Search by Age
    Click Logout
    Login Page Should Be Open

Search Record By FullName
    Login with Credential    ${VALID_EMAIL}    ${PASSWORD}
    Dashboard Should Be Open
    Search by FullName
    Click Logout
    Login Page Should Be Open


