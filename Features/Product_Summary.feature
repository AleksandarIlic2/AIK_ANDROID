Feature: Product_Summary

  @Account_Overview_[MOB_ANDROID]
  Scenario Outline: Account_Overview_[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN
    And Wait for login page to load
    And Choose option "Meni" from bottom menu
    And Click on element by text "Računi"
    #And Wait "100" seconds
    And Assert element by text "Raspoloživo stanje"

    Examples:
      | rowindex |
      |        1 |
  @Product_Summary-Loan_List_[MOB_ANDROID]
  Scenario Outline: Product_Summary-Loan_List_[MOB_ANDROID]

    Given Open Application
    #And Wait "100" seconds
    And Select User from Excel "<rowindex>" columnName "username" and login
    And Wait for element by resource id "nlb-bottom-nav-button" to appear
    #Open My products page
    When Click "My Products"
    And Wait for element by text "Edit list"

    #Loan accounts are displayed, sorted by ascending   -za sorting potreban user sa vise loan racuna...
    And Scroll until element with text from excel "<rowindex>" columnName "loan_account_bban" is in view
    And Swipe vertical short

    #Then Assert that product card of name "loan_account_name" and bban "loan_account_bban" from Excel "<rowindex>" for loan account are shown correctly
    Then Assert that product card with BBAN "<rowindex>" from Excel "loan_account_bban" has name from Excel "loan_account_name"
    And Assert that whole product card of loan account with name "loan_account_name" and bban "loan_account_bban" from Excel "<rowindex>" is clickable
    And Click on element by text from excel "<rowindex>" columnName "loan_account_bban" and assert the correct page opens

    Examples:
      | rowindex |
      |        5 |

#  @Product_Summary-Term_Deposits_Lists_[MOB_ANDROID]
#  Scenario Outline: Product_Summary-Term_Deposits_Lists_[MOB_ANDROID]
#    Given Open Application
#    And Select User from Excel "<rowindex>" columnName "username" and login
#    And Wait for element by resource id "nlb-bottom-nav-button" to appear
#    And Assert that products in My products page is loaded
#
#    Then Assert amount and currency are displayed by Android xpath "//android.widget.TextView[@resource-id=\"nlb-value-product-primary-balance\" and @text=\"5304,55 EUR\"]"
#    And Assert Product number is in BBAN format by xPath "//android.widget.TextView[@resource-id=\"nlb-value-product-account-id\" and @text=\"205-9032022325800-66\"]"
#    And Assert Product page for product with name from Excel "<rowindex>" columnName "termDepositBBAN"
#    And Assert that whole product card of term deposit account with name "termDepositName" and bban "termDepositBBAN" from Excel "<rowindex>" acts as a clickable button
#
#    Examples:
#      | rowindex |
#      |        1 |


