**** settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
Variables    ../TestData/Data.py

*** Keywords ***
Open My Browser
    [Arguments]    ${url}    ${Browser}
    open browser    ${url}    ${Browser}
    Maximize Browser Window

Click Customers
    Click Element    ${btnCustomers}
Click Customers Role
    Click Element    ${btnCustomerRoles}
Click On Create Button In Customer Roles
    Click Element    ${createButtonCustomerRoles}
Enter User Name In Customer Roles
    Input Text    ${txtName}    ${FIRST_NAME}
    Log To Console    ${FIRST_NAME}
Select Checkbox Exempt Tax
    Select Checkbox    ${checkboxTax}
Click On Choose Product Button
    Click Button   ${btnChooseProduct}
Click On Select button
    Click Button    ${selectProduct}
Click On Save Button In Customer Roles
    Click Button    ${saveButtonInCustomerRoles}
Asserting The Changes
    Page Should Contain    The new customer role has been added successfully.