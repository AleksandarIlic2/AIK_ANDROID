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
    And Choose option "Meni" from bottom menu


    Examples:
      | rowindex |
      |        1 |

  @Login
  Scenario Outline: Login

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN
    And Wait for login page to load
    And Choose option "Kartice" from bottom menu

    Examples:
      | rowindex |
      |        1 |
