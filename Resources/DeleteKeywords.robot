*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py
Resource    ../Resources/DeleteKeywords.robot
Resource    ../TestCases/AddCustomers.robot
Variables  ../TestData/Data.py

*** Keywords ***

Open My Browser
    [Arguments]    ${url}    ${Browser}
    open browser    ${url}    ${Browser}
    Maximize Browser Window

Enter EmailOfUserWhomeYouHaveToDelete
    [Arguments]    ${email}
    Input Text    ${inputEmailofUser}    ${email}

Click SearchButton
    click button    ${searchButton}

Click EditButton
    Click Link    ${editButton}

Click DeleteButton
    Click Element    ${deleteButton}

Verify Succesfully User Deleted
    Page Should Contain    The customer has been deleted successfully.
