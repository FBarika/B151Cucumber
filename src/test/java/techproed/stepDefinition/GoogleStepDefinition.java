package techproed.stepDefinition;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.But;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import techproed.pages.GooglePage;
import techproed.utilities.ConfigReader;
import techproed.utilities.Driver;
import techproed.utilities.ReusableMethods;

public class GoogleStepDefinition {

    GooglePage googlePage = new GooglePage();
    @Given("kullanici {string} sayfasina properties ile gitti")
    public void kullaniciSayfasinaGitti(String url) {

        Driver.getDriver().get(ConfigReader.getProperty(url));
        ReusableMethods.scroll(googlePage.cerez);
        ReusableMethods.bekle(2);
        googlePage.cerez.click();


    }

    @Then("kullanici google arama kutusunda {string} aratir")
    public void kullaniciGoogleAramaKutusundaAratir(String arac) {

        googlePage.aramaKutusu.sendKeys(arac);
        googlePage.kabul.click();

    }

    @And("google sayfasinda basligin {string} icerdigini test eder")
    public void googleSayfasindaBasliginIcerdiginiTestEder(String baslik) {

        Assert.assertTrue(Driver.getDriver().getTitle().contains(baslik));
    }

    @But("kullanici {int} saniye bekler")
    public void kullaniciSaniyeBekler(int sayi) {
        try {
            Thread.sleep(sayi*1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }


    @Then("kullanici google arama kutusunda {string} aratti")
    public void kullaniciGoogleAramaKutusundaAratti(String araclar) {
        googlePage.aramaKutusu.sendKeys(ConfigReader.getProperty(araclar));
        googlePage.kabul.click();
    }

    @And("google sayfasinda basligin {string} icerdigini test etti")
    public void googleSayfasindaBasliginIcerdiginiTestEtti(String str) {
        Assert.assertTrue(Driver.getDriver().getTitle().contains(ConfigReader.getProperty(str)));
    }

    @Then("kullanici data tableda verilen bilgileri aratir")
    public void kullaniciDataTabledaVerilenBilgileriAratir(DataTable data) {
        System.out.println(data.asList());
        for (int i = 1; i <data.asList().size() ; i++) {

            if(i<2){
                googlePage.aramaKutusu.sendKeys(data.asList().get(i));
                googlePage.kabul.click();
            }else{
                googlePage.aramaKutusu.sendKeys(data.asList().get(i),Keys.ENTER);
            }
            ReusableMethods.bekle(2);
            Assert.assertTrue(Driver.getDriver().getTitle().contains(data.asList().get(i)));
            ReusableMethods.bekle(2);
            googlePage.aramaKutusu.clear();
        }
    }
}