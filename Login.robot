*** Settings ***
Resource           ../Resources/DemoStore_keywordlogin.robot
Test Setup        Open Browser With Google Chrome
Test Teardown     Close Google Chrome Browser

*** Test Cases ***
User Should Be Able To Login
    Input Username Field
    Input Password Field
    Click Login Button

Verification Login With Invalid Username
    Input Invalid Username
    Input Password Field
    Click Login Button
    Verify Error Message Is Appears

Verification Login With Invalid Password
    Input Username Field
    Input Invalid Password
    Click Login Button
    Verify Error Message Is Appears