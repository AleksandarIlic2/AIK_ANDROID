Feature: Product_Summary

  @Account_Overview_[MOB_ANDROID]
  Scenario Outline: Account_Overview_[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN
    And Wait for login page to load
    And Assert text from excel "1" columnName "currentDomesticAccountBBAN" in element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/account_number"
    And Assert element by text "asdadasd"
    And Scroll down until element with text "Vidi ceo promet" is in view
#    And Click on element by text "Štednja"
#    And Click on element by text "Oročeni depozit u valuti RSD"
#    And Check number of transactions shown
#
#
#    And Scroll down until element with text "Kursna lista" is in view
#    And Scroll down until element with text "Menjačnica" is in view
#    And Assert element by text "EUR"
#    And Assert element by text "CHF"
#    And Assert element by text "USD"
#    And Assert element by text "GBP"
#    And Choose option "Meni" from bottom menu
#    And Click on element by text "Računi"
#    And Assert element by text "Raspoloživo stanje"
#    And Choose option "Meni" from bottom menu
#    And Choose option "Ponude" from bottom menu
#    And Assert element by text "Krediti"
#    And Assert element by text "Dozvoljeno prekoračenje"
#    And Assert element by text "Kreditna kartica"
#    And Assert element by text "Štednja"
#    And Click on element by text "Krediti"
#    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/ic_arrow"
#    And Assert element by text "Kreditni kalkulator"
#    And Scroll down until element with text "Nastavi" is in view
#    And Click on element by text "Nastavi"
#    And Wait for element by text "Usaglašavanje podataka"
#    And Assert element by text "Usaglašavanje podataka"
#    And Scroll down until element with text "Potvrđujem tačnost podataka" is in view
#    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/check_box"
#    And Click on element by text "Nastavi"
#    And Scroll down until element with text "Saglasan/na sam sa ponudom banke" is in view
#    And Click on "2" element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/check_box"
#    And Click on "1" element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/check_box"


    #And Enter text from excel "1" columnName "test123" in element id "test123"




    Examples:
      | rowindex |
      |        1 |


  @HomePage_[MOB_ANDROID]
  Scenario Outline: HomePage_[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN
    And Wait for login page to load
    And Assert text from excel "1" columnName "currentDomesticAccountBBAN" in element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/account_number"
    And Assert element by text "asdadasd"
    And Scroll down until element with text "Vidi ceo promet" is in view




    Examples:
      | rowindex |
      |        1 |