*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

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
    click button    ${editButton}

Click DeleteButton
    click button    ${deleteButton}

Verify Succesfully User Deleted
    Page Should Contain    The customer has been deleted successfully.