package techproed.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

/*
Runner classi testNG deki .xml file kullanimindaki gibi istedigimiz senario lari kullanacagimiz tag parametresi sayesinde calistirabiliriz.Ve plugin
parametresi ile raporlar alabiliriz.
 */
@RunWith(Cucumber.class)//-->TestCalistirici notasyon
@CucumberOptions(plugin = {"pretty",
        "html:target/default-cucumber-reports.html",
        "json:target/json-reports/cucumber.json",
        "junit:target/xml-report/cucumber.xml"},
        features = "src/test/resources/features",//features package -sag tik -copy path-copy Path content root
        glue = {"techproed/stepDefinition"},  // step definition package-sag tik -copy path-copy Path source root
        tags = "@arac2",   //Calistirmak istedigimiz scenario'nun üstüne bu tag'i koyarsak sadece o scenario calisir.
        dryRun = false,//-->true secersek scenario'lari kontrol eder, browser'i calistirmaz. False -->Normal calistirir.
        monochrome=false) //--> false olursa consoldaki ciktilar renkli olur

//@techpro or @iphone tags dan sonra böyle dersek techpro ve iphone calistirir.
//@techpro and @iphone tag ina sahip olan TC01 i calistiracak.
//@all yazarsak tags dan sonra bütün feature i calistiracak.
public class Runner {

}
/*
@CucumberOptions() notasyonuna parametre olarak
features--> package'in yolunu
glue-->steodefinition package
tag-->calistirmak istedigimiz scenariolari burda belirtiriz.

Scenariolarin nerede ve nasil calisacagi, hangi raporu kullanacagi ile alakali secenekleri bu notasyonda belirtiriz.
 */