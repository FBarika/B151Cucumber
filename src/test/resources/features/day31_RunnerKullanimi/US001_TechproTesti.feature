
Feature: US001 TechProEducation Sayfasi Testi

  Scenario: TC01 Sayfada Arama Yapar
    Given kullanici techpro sayfasina gider
    Then arama kutusunda qa aratir.
    And sayfa basliginin qa icerdigini test eder.
    And sayfayi kapatir
    # Burada daha once yazdigimiz methodlardan birini secersek yazi rengi koyu olmaz
    #Feature file da daha önce olusturdugumuz bir methodu baska scenerio larda tekrar olusturmadan kullanabliriz.
    #Yukaridaki örnekte sayfayi kapatir step'i icin daha önce amazonStepDefinition class'inda olusturdugumuz methodu kullanabiliriz.

  #Burada ilk run da hata verme ihtimali var run etmeden once her seferinde cekicle Build et

  Scenario: TC02 Sayfada Arama Yapar
    Given kullanici techpro sayfasina gider
    Then arama kutusunda java aratir
    And sayfa basliginin java icerdigini test eder
    And sayfayi kapatir

    @techpro
    Scenario: TC03 Sayfada Arama Yapar
      Given kullanici techpro sayfasina gider
      Then arama kutusunda mobile aratir
      When cikan dropdown da mobile developer linkine tiklar
      And sayfa basliginin Mobile icerdigini test eder.
      And sayfayi kapatir