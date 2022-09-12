*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Library    DataDriver  ../TestData/Login.xlsx  sheet_name=Sheet1

Test Template    Valid Login

*** Variables ***
${Browser}    ff
${url}    https://admin-demo.nopcommerce.com/

*** Test Cases ***
LoginTestWithExcelSheet using    ${username} and    ${password}

*** Keywords ***
Valid Login
    Set Selenium Speed    2
    Open My Browser    ${url}    ${Browser}
    [Arguments]  ${username}    ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Click SignIn
    Verify Succesfull login
    Close My Browser

