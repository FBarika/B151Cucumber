Feature: US004 TechproEducation Arama Testi


  Scenario: TC01 Sayfada Arama Yapar
    Given kullanici "https://techproeducation.com" sayfasina gider
    Then arama kutusunda "mobile" aratir
    When cikan dropdown da mobile developer linkine tiklar
    And sayfa basliginin Mobile icerdigini test eder.
    And sayfayi kapatir

  Scenario: TC02 Sayfada Arama Yapar
    Given kullanici "https://techproeducation.com" sayfasina gider
    Then arama kutusunda "qa" aratir
    And sayfayi kapatir

  Scenario: TC03 Sayfada Arama Yapar
    Given kullanici "https://techproeducation.com" sayfasina gider
    Then arama kutusunda "java" aratir
    And sayfayi kapatir

    #Parametreli method kullanimi icin file da "" icine aramak istedigimiz kelimeyi yazariz.
    #Daha sonra step definition da bir tane parametreli method olusturur.
    #Parametreli bir method olusturdugu icin file sadece istedigimiz kelimeyi degistirerek bunu birden fazla kez kullanabiliriz

  Scenario: TC04 Sayfada Arama Yapar
    Given kullanici "https://google.com" sayfasina gider

  Scenario: TC05 Sayfada Arama Yapar
    Given kullanici "https://youtube.com" sayfasina gider

  Scenario: TC06 Sayfada Arama Yapar
    Given kullanici "https://yahoo.com" sayfasina gider
