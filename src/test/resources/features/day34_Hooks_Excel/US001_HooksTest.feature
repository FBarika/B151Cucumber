Feature: US001 Google Testi

  @arac1
  Scenario: Arama Kutusunda volvo aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda "arac1" aratir
    And kullanici 3 saniye bekler
    And google sayfasinda basligin "arac2" icerdigini test eder
    And sayfayi kapatir


  @arac2
  Scenario: Arama Kutusunda Ford aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda "arac2" aratir
    And kullanici 3 saniye bekler
    And google sayfasinda basligin "arac2" icerdigini test eder
    And sayfayi kapatir


  @arac3
  Scenario: Arama Kutusunda Audi aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda "arac3" aratir
    And kullanici 3 saniye bekler
    And google sayfasinda basligin "arac3" icerdigini test eder
    And sayfayi kapatir