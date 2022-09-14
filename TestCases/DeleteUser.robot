*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/AddCustomersKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/DeleteKeywords.robot
Resource    ../TestCases/AddCustomers.robot
Variables  ../PageObjects/Data.py

*** Variables ***
#${Browser}    headlessfirefox
${Browser}    ff
${url}    https://admin-demo.nopcommerce.com/

*** Test Cases ***
Delete the user
    [Documentation]    This Test case is deleting the added user
    Set Selenium Speed    2
    Valid Login    ${userEmailLogin}    ${userPasswordLogin}
    Log To Console    ${userEmailLogin}    ${userPasswordLogin}
    Adding New User
    #Click Element    xpath://a[@href='#']//p[contains(text(),'Customers')]
    #Click Element    xpath://a[@href='/Admin/Customer/List']//p[contains(text(),'Customers')]
    Select From List By Value    //select[@name="customers-grid_length"]    100
    Enter EmailOfUserWhomeYouHaveToDelete    ${EMAIL}
    Click SearchButton
    Click EditButton
    Click DeleteButton
    Handle Alert    accept
    Verify Succesfully User Deleted
    Capture Page Screenshot    ScreenShots/DeletedUser.png
    Click Element    ${logoutButton
    Close All Browsers

*** Keywords ***
Valid Login
    Open Browser    ${url}    ${Browser}
    [Arguments]  ${username}    ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Click SignIn

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