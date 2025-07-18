*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords/product_keywords.robot
Resource          ../resources/keywords/common_keywords.robot
Test Setup        Open Browser To Product Page
Test Teardown     Close Browser

*** Test Cases ***
Search For Existing Product
    Search Product    tshirt
    Verify Product Search Result    T-Shirt

Search For Nonexistent Product
    Search Product    qwertyuiop
    Verify Empty Result List

