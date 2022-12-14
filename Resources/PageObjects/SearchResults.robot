*** Settings ***
Library  SeleniumLibrary
Resource  ./Search.robot
Variables  ../WebElements.py


*** Variables ***
${search_result}  results for

*** Keywords ***

Verify Search Results  
    Page Should Contain    ${search_result} "${search_text}"
Click First Result
    Click Element    ${FirstSearchResult}
