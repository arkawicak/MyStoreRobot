*** Settings ***
Library                    SeleniumLibrary
Variables                  ../Resources/DemoStore_locatorslogin.yaml

*** Variables ***
${DEMOSAUCE_URL}            http://automationpractice.com/index.php
${DEMOSAUCE_BROWSER}        gc

*** Keywords ***
Open Browser With Google Chrome
    Open Browser            url=${DEMOSAUCE_URL}        browser=${DEMOSAUCE_BROWSER}

Input Username Field
    Input Text                    ${Username}        text=arkaindri@gmail.com

Input Password Field
    Input Text                    ${Password}        text=12345

Click Login Button
    Click Element                ${Login}

Input Invalid Username 
    Input Text                   ${Username}        text=arkawicak

Verify Error Message Is Appears
    Element Should Be Visible  ${ErrorMessage}	   

Input Invalid Password
    Input Text                    ${Password}        text=secret122
Close Google Chrome Browser
    Close Browser

