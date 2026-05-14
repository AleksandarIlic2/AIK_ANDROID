Feature: Product_Summary

  @HomePage_[MOB_ANDROID]
  Scenario Outline: HomePage_[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load
    And Assert text from excel "1" columnName "currentDomesticAccountBBAN" in element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/account_number"
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
      |        2 |

#note: Isto verovatno izgleda i SC obicnog placanja samo se na kraju dobije poruka uspesno placanje
  @Placanje_RSD_Nedovoljno_Sredstava[MOB_ANDROID]
  Scenario Outline: Placanje_RSD_Nedovoljno_Sredstava[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load
    And Assert text from excel "1" columnName "currentDomesticAccountBBAN" in element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/account_number"
    And Choose option "Plaćanja" from bottom menu
    And Click on element by text "Plaćanje RSD"
    And Enter text "1000" into field by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/outline_edit_text_app_compat_edit_text" and index "1"
    And Enter text from excel "1" columnName "racunZaUplatu" in element id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/outline_edit_text_app_compat_edit_text" and index "2"
    And Enter text "randomImePrimalac" into field by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/outline_edit_text_app_compat_edit_text" and index "3"
    And Enter text "randomAdresaPrimaoca" into field by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/outline_edit_text_app_compat_edit_text" and index "4"
    And Scroll down until element with text "Mesto primaoca" is in view
    And Enter text "randomMestoPrimaoca" into field by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/outline_edit_text_app_compat_edit_text" and index "5"
    And Scroll down until element with text "Plati" is in view
    And Click on element by text "Plati"
    And Scroll down until element with text "Potvrdi" is in view
    And Click on element by text "Potvrdi"
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN
    And Assert element by text "Greška"
    And Assert element by text "Nalog PP nije uspešno kreiran."
    #And Click on "2" element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/check_box"
    Examples:
      | rowindex |
      |        2 |

#note: Isto verovatno izgleda i SC obicnog placanja samo se na kraju dobije poruka uspesno placanje
@Placanje_RSD_Skeniranjem_QR[MOB_ANDROID]
Scenario Outline: Placanje_RSD_Skeniranjem_QR[MOB_ANDROID]

  Given Open Application
  And Click on element by text "IPS"
  And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/galleryButton"
  And Click on element by text "Download"
  And Wait "10" seconds
  And Click on element by desc "Photo taken on May 14, 2026 8:51 AM"
  And Click on element by text "Potvrdi"
  And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
  And Enter PIN for user "<rowindex>"



  Examples:
    | rowindex |
    |        2 |



  @Licni_Podaci[MOB_ANDROID]
  Scenario Outline: Licni_Podaci[MOB_ANDROID]

    Given Open Application
    And Click on element by id "eu.newfrontier.iBanking.mobile.AIK.Retail.uat:id/pin_view"
    And Enter PIN for user "<rowindex>"
    And Wait for login page to load
    And Choose option "Meni" from bottom menu
    And Click on element by text "Podešavanja"
    And Click on element by text "Lični podaci"
    And Assert element by text "LJILJANA KOVAČ"
    And Wait for element by text "Tip identifikacionog dokumenta"
    And Assert element by text "Tip identifikacionog dokumenta" has first following sibling contains text "Lična karta"
    And Assert element by text "Broj identifikacionog dokumenta" has following sibling with text from excel "1" columnName "Broj_identifikacionog_dokumenta"
    And Assert element by text "Datum važenja identifikacionog dokumenta" has following sibling with text from excel "1" columnName "Datum_važenja_identifikacionog_dokumenta"
    And Assert element by text "Adresa iz identifikacionog dokumenta" has following sibling with text from excel "1" columnName "Adresa_iz_identifikacionog_dokumenta"
    And Assert element by text "Kućni telefon" has following sibling with text from excel "1" columnName "Kucni_telefon"
    And Scroll down until element with text "Podaci nisu ispravni?" is in view
    And Assert element by text "Mobilni telefon" has following sibling with text from excel "1" columnName "Mobilni_telefon"
    And Assert element by text "E-mail adresa" has following sibling with text from excel "1" columnName "E-mail_adresa"


    Examples:
      | rowindex |
      |        2 |