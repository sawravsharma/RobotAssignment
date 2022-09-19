*** Settings ***
Library    SeleniumLibrary
Library    ../TestData/Data.py
Resource    ../Resources/AddCustomersKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Variables  ../TestData/Data.py
Resource    ../Resources/AddCustomersKeywords.robot
Resource    ../Resources/DeleteKeywords.robot
Resource    ../TestCases/AddCustomers.robot

*** Variables ***
${textPresent}    No data available in table
#${Browser}    headlessfirefox
${SearchingUser}    ${EMAIL}
${Browser}    ff
${url}    https://admin-demo.nopcommerce.com/

*** Test Cases ***
Adding New User
    [Documentation]    This Test case is adding the user
    Valid Login    ${userEmailLogin}    ${userPasswordLogin}
    Click Element    ${btnCustomers}
    Click Element    ${btnCustomers1}
    Select From List By Value    xpath://select[@name='customers-grid_length']    100
    Set Selenium Implicit Wait    5
    Enter EmailOfUserWhomeYouHaveToDelete    ${SearchingUser}
    Click SearchButton
    ${usersCount}    Get Element Count    //a[contains(text(),'Edit')]
    Log To Console    ${usersCount}
    Run Keyword If    ${usersCount} == 0  Adding The User  ELSE IF  ${usersCount} >= 1  Deleting The User

*** Keywords ***
Valid Login
    Set Selenium Speed    2
    Open Browser    ${url}    ${Browser}
    [Arguments]  ${username}    ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Click SignIn

Deleting The User
    Set Selenium Implicit Wait    10
    Click EditButton
    Click DeleteButton
    Click Element    xpath://div[@class='modal-footer']//button[contains(text(),'Delete')]
    Capture Page Screenshot    ScreenShots/DeletedUserWhileAddingUser.png

Adding The User
    Set Selenium Implicit Wait    10
    Click Element    ${btnAddNew}
    Enter UserEmail    ${EMAIL}
    Log To Console    ${EMAIL}
    Enter NewUserPassword    ${PASSWORD}
    Log To Console    ${PASSWORD}
    Enter UserFirstName    ${FIRST_NAME}
    Log To Console    ${FIRST_NAME}
    Enter UserLastName    ${LAST_NAME}
    Log To Console    ${LAST_NAME}
    Select Radio Button    Gender    M
    Enter UserDOB    ${DATE}
    Click Button    ${saveButton}
    Verify Succesfully User Created
    Capture Page Screenshot    ScreenShots/AddedUser.png
    Click Element    ${logoutButton}
    Close All Browsers