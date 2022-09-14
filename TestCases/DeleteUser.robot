*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/AddCustomersKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/DeleteKeywords.robot
Resource    ../TestCases/AddCustomers.robot

*** Variables ***
#${Browser}    headlessfirefox
${Browser}    ff
${url}    https://admin-demo.nopcommerce.com/

*** Test Cases ***
Delete the user
    [Documentation]    This Test case is deleting the added user
    Valid Login    admin@yourstore.com    admin
    Adding New User
    Enter EmailOfUserWhomeYouHaveToDelete    ${EMAIL}
    Click SearchButton
    Click EditButton
    Click DeleteButton
    Handle Alert    accept
    Verify Succesfully User Deleted
    Capture Page Screenshot    ScreenShots/DeletedUser.png
    Click Element    //a[contains(text(),'Logout')]
    Close All Browsers

*** Keywords ***
Valid Login
    Set Selenium Speed    2
    Open Browser    ${url}    ${Browser}
    [Arguments]  ${username}    ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Click SignIn

Adding New User
    Valid Login    admin@yourstore.com    admin
    Click Element    xpath://a[@href='#']//p[contains(text(),'Customers')]
    Click Element    xpath://a[@href='/Admin/Customer/List']//p[contains(text(),'Customers')]
    Click Element    xpath://a[@class='btn btn-primary']
    Enter UserEmail    ${EMAIL}
    Enter NewUserPassword    ${PASSWORD}
    Enter UserFirstName    ${FIRST_NAME}
    Enter UserLastName    ${LAST_NAME}
    Enter UserDOB    01/01/2022
    Click Button    xpath://button[@name='save']
    Verify Succesfully User Created