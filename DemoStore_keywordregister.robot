*** Settings ***
Library                    SeleniumLibrary
Variables                  ../Resources/DemoStore_locatorsregister.yaml

*** Variables ***
${DEMOSAUCE_URL}            http://automationpractice.com/index.php
${DEMOSAUCE_BROWSER}        gc

*** Keywords ***
Open Browser With Google Chrome
    Open Browser            url=${DEMOSAUCE_URL}        browser=${DEMOSAUCE_BROWSER}

Enter Valid Email
    Input Text                    ${EmailRegister}        text=arkawicak@gmail.com

Click Sign In Menu
     Click Element                ${SignInMenu}

Click Create An Account Button
    Click Element                   ${RegisterEmail}

Verify Error Message Is Appears
    Wait Until Element Is Visible     ${ErrorMessage} 
    Element Should Be Visible          ${ErrorMessage}	   


Radio Button Is Selected
    Wait Until Element Is Visible     ${RadioButton}  	
    Select Radio Button              id_gender       1

Enter Valid FirstName
    Input Text                   ${FirstName}            Text=Huyearka

Enter Valid Password  
    Input Text                    ${PasswordRegister}    Text=12345  

Select Valid Days
    Select From List By Value        ${Days}            18   

Select Valid Months
    Select From List By Value        ${Months}        8

Select Valid Year
    Select From List By Value        ${Years}        1996  

Select Valid Checkbox
    Select Checkbox                ${Checkbox}

Enter Valid Firstname In Section Address
      Input Text                   ${FirstNameAddress}            Text=Huyearka

Enter Valid Lastname In Section Address
      Input Text                   ${LastNameAddress}            Text=Huyearka

Enter Valid Company
    Input Text                    ${Company}            Text=laundry

Enter Valid Address
    Input Text                    ${Address1}            Text=wulung

Enter Valid Address2
    Input Text                    ${Address2}            Text=congcat

Enter Valid City
    Input Text                    ${City}            Text=jogja

Enter Valid State
     Select From List By Value        ${State}            3

Enter Valid Postcode
     Input Text                    ${PostCode}            Text=79798

Enter Valid Country
     Select From List By Value        ${Country}            21

Enter Valid Additional
    Input Text                    ${Additional}            Text=newTester

Enter Valid Home Phone
    Input Text                    ${Phone}            Text=08177686879

Enter Valid Address Alias
    Input Text                    ${AddressAlias}            Text=jogjasleman

Click Register Button
    Click Element                   ${RegisterButton}





# Input Invalid Username 
#     Input Text                   ${Username}        text=arkawicak

# Verify Error Message Is Appears
#     Element Should Be Visible  ${ErrorMessage}	   

# Input Invalid Password
#     Input Text                    ${Password}        text=secret122
Close Google Chrome Browser
    Close Browser

