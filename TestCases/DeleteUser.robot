*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/AddCustomersKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/DeleteKeywords.robot

*** Variables ***
#${Browser}    headlessfirefox
${Browser}    ff
${url}    https://admin-demo.nopcommerce.com/

*** Test Cases ***
Delete the user
    Valid Login    admin@yourstore.com    admin
    Adding New User
    Enter EmailOfUserWhomeYouHaveToDelete    saurav12@gmail.com
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
    #Set Selenium Speed    2
    Valid Login    admin@yourstore.com    admin
    Click Element    xpath://a[@href='#']//p[contains(text(),'Customers')]
    Click Element    xpath://a[@href='/Admin/Customer/List']//p[contains(text(),'Customers')]
    Click Element    xpath://a[@class='btn btn-primary']
    Enter UserEmail    saurav1234@gmail.com
    Enter NewUserPassword    saurav125
    Enter UserFirstName    Saurav
    Enter UserLastName    Sharma
    Enter UserDOB    01/01/2022
    Click Button    xpath://button[@name='save']
    Verify Succesfully User Created