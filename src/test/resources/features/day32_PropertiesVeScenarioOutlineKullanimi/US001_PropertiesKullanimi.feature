Feature: US001 Google Sayfasi Testi
  Background: Google Sayfasina gidilir
    Given kullanici "googleUrl" sayfasina gitti


    Scenario: Arama Kutusunda volvo aratir
      Then kullanici google arama kutusunda "volvo" aratir
      And kullanici 3 saniye bekler
      And google sayfasinda basligin "volvo" icerdigini test eder
      And sayfayi kapatir

      #then and yerine * da kullanabiliyoruz.

    Scenario: Arama kutusunda ford aratir
      Then kullanici google arama kutusunda "ford" aratir
      But kullanici 1 saniye bekler
      And google sayfasinda basligin "ford" icerdigini test eder
      And sayfayi kapatir

      Scenario: Arama kutusunda audi aratir
        Then kullanici google arama kutusunda "audi" aratir
        But kullanici 2 saniye bekler
        And google sayfasinda basligin "audi" icerdigini test eder
        And sayfayi kapatir

        #String kullaniminda "  " cift tirnak ile parametreli method olusturuyoruz.
        #Numerik kullanimda yani sayfayi x saniye bekler gibi kullanimlarda da sayi belirttigimiz zaman int olarak parametreli bir method olusturur.
        #Bunu feature file belirtme sebebimiz step definition icinde yaptigimiz beklemeyi stepleri okuyan kisi ya da dev. bunu bilmez ama
        #bilmesi gerekiyorsa feature file da bunu direk görür ve webelemete ulasilmasi icin bekleme koyuldugunu anlamis olur.
