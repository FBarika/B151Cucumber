Feature: US002 Amazon Urun Arama Testi
  @iphone
  Scenario: TC01 Amazonda iphone aramasi
    Given kullanici amazon sayfasina gider
    #Given genelde en basta kullaniliyor sagidaki digerleri rastgele kullanabiliriz.
    And sayfayi yeniler.
    And kullanici aramaKutusunda iphone aratir
    And sayfa basliginin iphone icerdigini test eder
    And sayfayi kapatir


    @samsung
    Scenario: TC02 Amazonda samsung aramasi
      Given kullanici amazon sayfasina gider
      And sayfayi yeniler.
      And kullanici aramaKutusunda samsung aratir
      And sayfa basliginin samsung icerdigini test eder
      And sayfayi kapatir