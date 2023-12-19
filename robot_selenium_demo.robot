*** Settings ***
Documentation     Demo using Robot Framework + SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://practicetestautomation.com/practice-test-login/
${BROWSER}        Chrome
${USER}           student
${PASS}           Password123

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    ${USER}
    Input Password    ${PASS}
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Test Login | Practice Test Automation

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    submit

Welcome Page Should Be Open
    Title Should Be    Logged In Successfully | Practice Test Automation
