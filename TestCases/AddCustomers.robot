*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/AddCustomersKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Variables  ../PageObjects/Data.py

*** Variables ***
#${Browser}    headlessfirefox
${Browser}    ff
${url}    https://admin-demo.nopcommerce.com/

*** Test Cases ***
Adding New User
    [Documentation]    This Test case is adding the user
    Valid Login    ${userEmailLogin}    ${userPasswordLogin}
    Click Element    ${btnCustomers}
    Click Element    ${btnCustomers1}
    Click Element    ${btnAddNew}
    Enter UserEmail    ${EMAIL}
    Log To Console    ${EMAIL}
    Enter NewUserPassword    ${PASSWORD}
    Log To Console    ${PASSWORD}
    Enter UserFirstName    ${FIRST_NAME}
    Log To Console    ${FIRST_NAME}
    Enter UserLastName    ${LAST_NAME}
    Log To Console    ${LAST_NAME}
    Enter UserDOB    ${DATE}
    Click Button    ${saveButton}
    Verify Succesfully User Created
    Capture Page Screenshot    ScreenShots/AddedUser.png
    Click Element    ${logoutButton}
    Close All Browsers

*** Keywords ***
Valid Login
    Set Selenium Speed    2
    Open Browser    ${url}    ${Browser}
    [Arguments]  ${username}    ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Click SignIn