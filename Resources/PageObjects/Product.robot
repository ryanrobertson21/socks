*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
${size_text}  To buy, select Size
${added_to_cart}  Added to Cart


*** Keywords ***

Select Size
    Page Should Contain    ${size_text}
Click Select Size DropDown
    Click Element    ${SelectSizeDropDown}   
Add To Cart
    Click Button    ${AddToCartButton}

Verify Product Added to Cart  
    Page Should Contain    ${added_to_cart}


