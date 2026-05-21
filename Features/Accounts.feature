Feature: Accounts


@Change_Name_Of_Account_RSD[MOB_ANDROID]
Scenario Outline: Change_Name_Of_Account_RSD[MOB_ANDROID]

  Given Open Application
  And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
  And Enter PIN for user "<rowindex>"
  And Wait for login page to load
  And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/btn_context" 
  And Click on element by text "Izmeni naziv računa"

  Examples:
    | rowindex |
    |        2 |


