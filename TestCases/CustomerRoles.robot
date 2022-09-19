*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/AddCustomersKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/CustomerRolesKeyword.robot
Resource    ../Resources/DeleteKeywords.robot
Resource    ../TestCases/AddCustomers.robot
Variables  ../TestData/Data.py
Variables  ../PageObjects/Locators.py

*** Variables ***
#${Browser}    headlessfirefox
${Browser}    ff
${url}    https://admin-demo.nopcommerce.com/

*** Test Cases ***
Customer Roles
    [Documentation]    This Test case is giving the role to the added user
    Valid Login    ${userEmailLogin}    ${userPasswordLogin}
    Click Customers
    Click Customers Role
    Click On Create Button In Customer Roles
    Enter User Name In Customer Roles
    Select Checkbox Exempt Tax
    Click On Choose Product Button
    Switch Window    title:Choose a product / nopCommerce administration
    Set Selenium Implicit Wait    5
    Click On Select button
    Switch Window    title:Add a new customer role / nopCommerce administration
    Click On Save Button In Customer Roles
    Page Should Contain    The new customer role has been added successfully.
    Capture Page Screenshot    ScreenShots/CustomerRole.png

*** Keywords ***
Valid Login
    Set Selenium Speed    2
    Open Browser    ${url}    ${Browser}
    [Arguments]  ${username}    ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Click SignIn