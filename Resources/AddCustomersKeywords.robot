*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py
Variables  ../TestData/Data.py

*** Keywords ***
Open My Browser
    [Arguments]    ${url}    ${Browser}
    open browser    ${url}    ${Browser}
    Maximize Browser Window

Enter UserEmail
    [Arguments]    ${email}
    Input Text    ${inputEmail}    ${email}

Enter NewUserPassword
    [Arguments]    ${NewUserpassword}
    Input Text    ${inputPassword}    ${NewUserpassword}

Enter UserFirstName
    [Arguments]    ${EnterFirstName}
    Input Text    ${inputFirstName}    ${EnterFirstName}

Enter UserLastName
    [Arguments]    ${EnterLastName}
    Input Text    ${inputLastName}    ${EnterLastName}

Enter UserDOB
    [Arguments]    ${EnterDOB}
    Input Text    ${inputDOB}    ${EnterDOB}

Click SaveButton
    click button    ${saveButton}

Verify Succesfully User Created
    Page Should Contain    The new customer has been added successfully.