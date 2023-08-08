package techproed.stepDefinition;


import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import techproed.utilities.Driver;


public class Hooks {
      /*
     Hooks classinin kullanim amaci scenario lardan önce veya sonra calismasini istedigimiz kodlari belirttigimiz classtir.
     Bunu @Before ve @After notasyonlarina sahip methodlar ile yapariz. Bu notasyonlarin importu io.cucumber dan olmalidir.Bu classin scenario lar tarafindan
     görülüp burdaki @Before @After methodlarini isleme alabilmesi icin Hooks classini farkli bir package da olusturmak istersek
      Runner classindaki glue parametresine bu package i tanimlamamiz gerekir.Ancak Hooks classini direk StepDefinition package i altinda olusturursak
      Runner classindaki glue parametresinde stepDefinition package i tanimli oldugu icin baska bir islem yapmama gerek kalmaz.Glue parametresinde
      stepDefinition package i tanimli oldugu icin direkt hook classinda kullanabiliriz.
      */
    @Before//import io.cucumber.java
    public void setUp() throws Exception {
        System.out.println("Scenariolar calismaya basladi");

    }

    @Before("@arac2")
    public void setUp2() {
        System.out.println("Google'da Ford aratildi.");
    }

    @Before("@arac3")
    public void setUp3() {
        System.out.println("Google'da Audi aratildi.");

    }
    /*
    Scenario dan önce calismasini istedigimiz @Before methodunun notasyonuna parametre olarak scenario ya tanimladigimiz tag'i
    belirtebiliriz.Dolayisiyla sadece parametre olarak belirttigimiz @Before methodu Scenario'dan önce calisacaktir.
     */

    @After//import io.cucumber.java
    public void tearDown(Scenario scenario) throws Exception {
        if(scenario.isFailed()){//--> Scenario fail olursa
            TakesScreenshot ts = (TakesScreenshot) Driver.getDriver();
            scenario.attach(ts.getScreenshotAs(OutputType.BYTES),"image/jpeg","scenario_"+scenario.getName());
            Driver.closeDriver();
        }

    }
    //Bu method fail olan scenario larda fail olan kismin resmini rapora ekleyecektir.
}
