Feature: US001 Google Sayfasi Testi

  Scenario Outline: Arama kutusunda ford aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda "<aranacakArac>" aratir
    But kullanici 5 saniye bekler
    And google sayfasinda basligin "<aranacakArac>" icerdigini test eder
    And sayfayi kapatir
    Examples:
      | aranacakArac |
      | ford         |
      | volvo        |
      | audi         |
      | mercedes     |
  #Scenario Outline kullanimi testNG deki data provider mantigi ile ayni calisir.
  #Scnerio Outline yapisini kullandiktan sonra birden fazla veri ile arma islemi yapmak ya da login islemi yapmak istiyorsak
  #aratmak istedigimiz kelimeyi "<>" icine belirtiriz.Daha önce parametreli method olusturdugumuz icin tekrar parametreli method
  #olusurmaya gerek kalmadan Scenoria Outline yapisina tiklayarak alt kisimda cikan Examples bölümünde yukaridaki örnekteki gibi
  # belirttigimiz baslik altina istedigimiz verileri girerek sirasiyla arama islemlerini gerceklestirmis oluruz.
