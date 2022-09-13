*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}    ff
${url}    https://www.saucedemo.com/
${user}    standard_user
${pwd}    secret_sauce

*** Test Cases ***
Login Test
    #Create Webdriver    Chrome    executable_path=C:/Users/SauravSharma/Downloads/chromedriver_win32 (3)/chromedriver.exe
    Open My Browser    ${url}    ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click SignIn
    Verify Succesfull Login
    Capture Element Screenshot    //*[@alt='Sauce Labs Backpack']    ScreenShots/BackPack.png
    Capture Page Screenshot    ScreenShots/LoginTest.png
    Close My Browser