Feature: US002 Google Sayfasi Testi
  Background: Google Sayfasina Gidilir
    Given kullanici "googleUrl" sayfasina properties ile gitti

  @p
  Scenario: Arama kutusunda volvo aratir
    Given kullanici google arama kutusunda "volvo" aratir
    And google sayfasinda basligin "volvo" icerdigini test eder
    And sayfayi kapatir


  Scenario: Arama kutusunda ford aratir
    Then kullanici google arama kutusunda "ford" aratir
    But kullanici 2 saniye bekler
    And google sayfasinda basligin "ford" icerdigini test eder
    And sayfayi kapatir

  @n
  Scenario: Arama kutusunda audi aratir
    Then kullanici google arama kutusunda "audi" aratir
    But kullanici 2 saniye bekler
    And google sayfasinda basligin "audi" icerdigini test eder
    And sayfayi kapatir