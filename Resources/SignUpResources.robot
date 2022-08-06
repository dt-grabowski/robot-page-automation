*** Settings ***
Library     SeleniumLibrary
Variables       ../Variables/variables.py

*** Keywords ***
Open My Browser
    [Arguments]     ${url_adress}
    Open Browser    ${url_adress}       chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //button[@id = 'ez-accept-all']      3
    Click Element       //button[@id = 'ez-accept-all']
    Wait Until Page Contains Element    //a[@id = 'cookieChoiceDismiss']      6
    Click Element       //a[@id = 'cookieChoiceDismiss']


Fill First Name
    [Arguments]     ${first_name}
    Input Text      ${first_name_field}     ${first_name}

Fill Last Name
    [Arguments]     ${last_name}
    Input Text      ${last_name_field}      ${last_name}

Select Male Gender
    Click Element       ${male_radio}
Select Female Gender
    Click Element       ${female_radio}
Select 1 Years Experiance
    Click Element       ${experiance_1_radio}
Select 2 Years Experiance
    Click Element       ${experiance_2_radio}
Select 3 Years Experiance
    Click Element       ${experiance_2_radio}
Select 4 Years Experiance
    Click Element       ${experiance_3_radio}
Select 5 Years Experiance
    Click Element       ${experiance_4_radio}
Select 6 Years Experiance
    Click Element       ${experiance_5_radio}
Select 7 Years Experiance
    Click Element       ${experiance_6_radio}

Fill Date
    [Arguments]     ${data}
    Input Text      ${date_field}      ${data}

Select Manual Tester Profession
    Click Element       ${manual_tester_profession}
Select Automation Tester Profession
    Click Element       ${automation_tester_profession}

Select UFT Tool
    Click Element       ${uft_at}
Select Protractor Tool
    Click Element       ${protractor_at}
Select Selenium Tool
    Click Element       ${selenium_at}

Select Continent
    [Arguments]     ${index}
    Select From List By Index       ${continents_list}      ${index}

Select Selenium Commands
    [Arguments]     ${index}
    Select From List By Index       ${selenium_commands_list}       ${index}

