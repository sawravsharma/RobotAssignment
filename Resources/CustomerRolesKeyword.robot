**** settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
Variables    ../TestData/Data.py

*** Keywords ***

Add Customer Role
    Set Selenium Speed    3
    Click Element    ${btn_customers}
    Click Element    ${btn_customerrole}
    Click Element    ${btn_addNew}
    Input Text    ${txt_name}    ${name}
    Select Checkbox  ${checkboxActive}
    Select Checkbox    ${checkboxTax}
    Input Text    ${txtSystemName}    "for testing purpose only"

Saving and verifying Customer role added or note
    Click Element    ${btn_save}
    Page Should Contain    The new customer role has been added successfully.