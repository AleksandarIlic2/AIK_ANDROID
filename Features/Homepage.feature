Feature:

  @Homepage_Bottom_nav_[MOB_ANDROID]
  Scenario Outline: Homepage_Bottom_nav_[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load

    And Check if all tabs are displayed and tab "Početna" is selected
    #tab - Placanja
    And Choose option "Plaćanja" from bottom menu
    And Bank logo still displayed
    And Page title is "Plaćanja"
    And Check if all tabs are displayed and tab "Plaćanja" is selected
    #tab - Ponude
    And Choose option "Ponude" from bottom menu
    And Bank logo still displayed
    And Page title is "Ponude po meri"
    And Check if all tabs are displayed and tab "Ponude" is selected
    #tab - Kartice
    And Choose option "Kartice" from bottom menu
    And Bank logo still displayed
    And Page title is "Kartice"
    And Check if all tabs are displayed and tab "Kartice" is selected
    #tab - Meni
    And Choose option "Meni" from bottom menu
    And Bank logo still displayed
    And Page title is "Meni"
    And Check if all tabs are displayed and tab "Meni" is selected
    #tab - Pocetna
    And Choose option "Početna" from bottom menu
    And Bank logo still displayed
    And Check if all tabs are displayed and tab "Početna" is selected



    Examples:
      | rowindex |
      |        1 |



