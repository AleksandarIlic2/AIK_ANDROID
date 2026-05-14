Feature: Pocetak

  @Card_details_[MOB_ANDROID]
  Scenario Outline: Card_details_[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load
    And Choose option "Kartice" from bottom menu
    And Bank logo still displayed
    And Page title is "Kartice"
    And Check if card is correctly displayed for user "<rowindex>"
    And Click on element by text from excel "<rowindex>" columnName "cardNumber"
    And Check if card is opened correctly for user "<rowindex>"
    And Click on more options for the card
    And Click on card details
    And Page title is "Detalji kartice"
    #TODO predji na listu labela?
    And Check if card details are correctly displayed for user <"rowindex">

    Examples:
      | rowindex |
      |        1 |

  @Offers_overview_[MOB_ANDROID]
  Scenario Outline: Offers_overview_[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load
    And Choose option "Ponude" from bottom menu
    And Bank logo still displayed
    And Page title is "Ponude po meri"

    Examples:
      | rowindex |
      |        1 |