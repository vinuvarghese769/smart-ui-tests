*** Keywords ***
Open Browser To Product Page
    Open Browser To URL    https://automationexercise.com/products
    Wait For Element    //input[@id='search_product']

Search Product
    [Arguments]    ${product}
    Input Text    //input[@id='search_product']    ${product}
    Click Button    //button[@id='submit_search']

Verify Product Search Result
    [Arguments]    ${product}
    Page Should Contain    ${product}

Verify No Products Found
    Page Should Contain    No products found

Verify Empty Result List
    Element Should Not Be Visible    xpath=//div[@class='features_items']/div[@class='col-sm-4']
