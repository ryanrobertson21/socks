*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is sample test case
    [Documentation]  Amazon test  
    [Tags]  smoke

    Open Browser  http://amazon.com  chrome
    Close Browser

*** Keywords ***