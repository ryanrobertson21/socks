*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
${search_text}  socks

*** Keywords ***

Input Search Text and Click Search Button
    Input Text    ${SearchTextBox}    ${search_text}
    Click Button    ${SearchButton}
