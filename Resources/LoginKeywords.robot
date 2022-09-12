*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${url}    ${Browser}
    open browser    ${url}    ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text    ${loginUserName}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${loginPassword}    ${password}

Click SignIn
    click button    ${loginButton}

Verify Succesfull login
    Title Should Be    Dashboard / nopCommerce administration

Close My Browser
    close all browsers