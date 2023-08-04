@tech
  #buraya @all @tech yazabilriz tüm feature i calistirmak icin sonra runner class ta tags dan sonra @all veya  @tech yazarak tüm feature i calistirabiliriz.
Feature: US003 TechProEducation Sayfasi Testi


  #Feature file icinde Scenario larda ortak kullanilan steplerde Background yapisini kullanabiliriz.
  #Her scenario'dan önce buradaki step calisir sonra scenario'daki stepler calismaya devam eder.
  Background: Kullanici TechproEducation Sayfasina Gider.
    Given kullanici techpro sayfasina gider



  Scenario: TC01 Sayfada Arama Yapar

    Then arama kutusunda qa aratir.
    And sayfa basliginin qa icerdigini test eder.
    #Tek bir browser da calistirmak istersek sayfayi kapatir steplerini kapatmamiz gerekir
    # Burada daha once yazdigimiz methodlardan birini secersek yazi rengi koyu olmaz
    #Feature file da daha önce olusturdugumuz bir methodu baska scenerio larda tekrar olusturmadan kullanabliriz.
    #Yukaridaki örnekte sayfayi kapatir step'i icin daha önce amazonStepDefinition class'inda olusturdugumuz methodu kullanabiliriz.

    #Burada ilk run da hata verme ihtimali var run etmeden once her seferinde cekicle Build et

  Scenario: TC02 Sayfada Arama Yapar

    Then arama kutusunda java aratir
    And sayfa basliginin java icerdigini test eder
    #Tek bir browser da calistirmak istersek sayfayi kapatir steplerini kapatmamiz gerekir


  Scenario: TC03 Sayfada Arama Yapar

    Then arama kutusunda mobile aratir
    When cikan dropdown da mobile developer linkine tiklar
    And sayfa basliginin Mobile icerdigini test eder.
    And sayfayi kapatir

    #Tek bir browser da calistirmak istersek sayfayi kapatir steplerini kapatmamiz gerekir veya en sondaki TC de birakiriz sadece.
    #Scenario larimizin tek bir browser da calismasini istersek ve tum scenariolardan sonra browser'i kapatmak istersek en son scenario'da close yapabiliriz
    #Featurelarin istedigimiz siraya gore veya alfabetik olarak calismasini istiyorsak file larin basina a b c vs gibi koyabiliriz


