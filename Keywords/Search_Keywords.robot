*** Settings ***
Resource    ../Resources/Settings.robot

*** Keywords ***
Search by FirstName
    Input Text    xpath://input[@placeholder='Search']    ${FIRSTNAME}
    Sleep    2s    
    FOR    ${i}    IN RANGE    ${ROW_COUNT}
        ${RowVisible}=    Run Keyword And Return Status        Element Should Be Visible   xpath:(//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]
        Exit For Loop If    ${RowVisible} != ${True}
        Wait Until Element Is Visible    xpath:((//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]/div/div[@class='MuiDataGrid-cellContent'])[2]
        Element Should Contain    xpath:((//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]/div/div[@class='MuiDataGrid-cellContent'])[2]    ${FIRSTNAME}
        ${Count}=    Evaluate    ${COUNT}+1
    END
    Capture Page Screenshot    SearchBy_Firstname_Screenshot.png

    
Search by LastName
    Input Text    xpath://input[@placeholder='Search']    ${LASTNAME}
    Sleep    2s    
    FOR    ${i}    IN RANGE    ${ROW_COUNT}
        ${RowVisible}=    Run Keyword And Return Status        Element Should Be Visible   xpath:(//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]
        Exit For Loop If    ${RowVisible} != ${True}
        Wait Until Element Is Visible    xpath:((//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]/div/div[@class='MuiDataGrid-cellContent'])[3]
        Element Should Contain    xpath:((//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]/div/div[@class='MuiDataGrid-cellContent'])[3]    ${LASTNAME}
        ${Count}=    Evaluate    ${COUNT}+1
    END
    Capture Page Screenshot    SearchBy_Lastname_Screenshot.png

Search by Age
    Input Text    xpath://input[@placeholder='Search']    ${AGE}
    Sleep    2s    
    FOR    ${i}    IN RANGE    ${ROW_COUNT}
        ${RowVisible}=    Run Keyword And Return Status        Element Should Be Visible   xpath:(//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]
        Exit For Loop If    ${RowVisible} != ${True}
        Wait Until Element Is Visible    xpath:((//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]/div/div[@class='MuiDataGrid-cellContent'])[4]
        Element Should Contain    xpath:((//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]/div/div[@class='MuiDataGrid-cellContent'])[4]    ${AGE}
        ${Count}=    Evaluate    ${COUNT}+1
    END
    Capture Page Screenshot    SearchBy_Age_Screenshot.png

Search by FullName
    Input Text    xpath://input[@placeholder='Search']    ${FULLNAME}
    Sleep    2s    
    FOR    ${i}    IN RANGE    ${ROW_COUNT}
        ${RowVisible}=    Run Keyword And Return Status        Element Should Be Visible   xpath:(//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]
        Exit For Loop If    ${RowVisible} != ${True}
        Wait Until Element Is Visible    xpath:((//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]/div/div[@class='MuiDataGrid-cellContent'])[5]
        Element Should Contain    xpath:((//div[contains(@class,'MuiDataGrid-row')])[${COUNT}]/div/div[@class='MuiDataGrid-cellContent'])[5]    ${FULLNAME}
        ${Count}=    Evaluate    ${COUNT}+1
    END
    Capture Page Screenshot    SearchBy_FullName_Screenshot.png

