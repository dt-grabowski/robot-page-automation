*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/SignUpResources.robot
*** Variables ***
${url}=     https://www.techlistic.com/p/selenium-practice-form.html
${first_name}=      Damian
${last_name}=      Nowak
${date}=        14-02-2021
${continent_index}=       4
${selenium_index}=      2


*** Test Cases ***
Fill Fields
    Open My Browser     ${url}
    Fill First Name     ${first_name}
    Fill Last Name      ${last_name}
    Fill Date       ${date}

Select Radio Buttons
    Select Male Gender
    Select 3 Years Experiance

Select Ckeckboxes
    Select Manual Tester Profession
    Select Automation Tester Profession
    Select Selenium Tool

List Test
    Select Continent        ${continent_index}
    Select Selenium Commands        ${selenium_index}
