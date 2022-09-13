*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/AddCustomersKeywords.robot
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
#${Browser}    headlessfirefox
${Browser}    ff
${url}    https://admin-demo.nopcommerce.com/

*** Test Cases ***
Adding New User
    #Set Selenium Speed    2
    Valid Login    admin@yourstore.com    admin
    Click Element    xpath://a[@href='#']//p[contains(text(),'Customers')]
    Click Element    xpath://a[@href='/Admin/Customer/List']//p[contains(text(),'Customers')]
    Click Element    xpath://a[@class='btn btn-primary']
    Enter UserEmail    saurav@gmail.com
    Enter NewUserPassword    saurav123
    Enter UserFirstName    Saurav
    Enter UserLastName    Sharma
    #Select Radio Button    Gender    Male
    Enter UserDOB    01/01/2022
    #Select From List By Label    SelectedCustomerRoleIds_label    Registered
    Click Button    xpath://button[@name='save']
    Verify Succesfully User Created
    Capture Page Screenshot    ScreenShots/AddedUser.png
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