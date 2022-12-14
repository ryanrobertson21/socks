*** Settings ***
Documentation  Basic Search Functionality
Resource  ../Resources/PageObjects/Cart.robot
Resource  ../Resources/PageObjects/Common.robot
Resource  ../Resources/PageObjects/Login.robot
Resource  ../Resources/PageObjects/Product.robot
Resource  ../Resources/PageObjects/Search.robot
Resource  ../Resources/PageObjects/SearchResults.robot
#Library  DataDriver  ../Resources/TestData/TestData.xlsx

Test Setup  Common.Start TestCase
Test Teardown  Common.Finish TestCase
*** Variables ***


*** Test Cases ***
Verify basic search functionality
    [Documentation]  Amazon test  
    [Tags]  Functional


    Search.Input Search Text and Click Search Button
    SearchResults.Verify Search Results
    SearchResults.Click First Result
    ${passed}    Run Keyword And Return Status  
                 ...    Element Should Be Visible    xpath://*[@id=""//*[@id='variation_size_name']/div[2]/label""]
    Run Keyword If     ${passed}       Keyword Passed
    Product.Add To Cart
    Product.Verify Product Added to Cart

*** Keywords ***
Keyword Passed
    Product.Click Select Size DropDown

