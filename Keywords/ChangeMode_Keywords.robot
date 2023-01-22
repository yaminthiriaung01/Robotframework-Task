*** Settings ***
Resource    ../Resources/Settings.robot

*** Keywords ***
Switch to DarkMode
    Wait Until Element Is Visible    ${DARKMODE_BUTTON}
    Click Element    ${DARKMODE_BUTTON}
    Sleep    2s
    Element Attribute Value Should Be    //html    data-mui-color-scheme    dark
    Wait Until Element Is Visible    ${LIGHTMODE_BUTTON}
    Capture Page Screenshot    DarkMode_Page_Screenshot.png

Switch to LightMode
    Wait Until Element Is Visible    ${LIGHTMODE_BUTTON}
    Click Element    ${LIGHTMODE_BUTTON}
    Sleep    2s
    Element Attribute Value Should Be    //html    data-mui-color-scheme    light
    Wait Until Element Is Visible    ${DARKMODE_BUTTON}
    Capture Page Screenshot    LightMode_Page_Screenshot.png
