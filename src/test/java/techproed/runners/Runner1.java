package techproed.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)//-->TestCalistirici notasyon
@CucumberOptions(plugin = {"pretty",
        "html:target/default-cucumber-reports.html",
        "json:target/json-reports/cucumber2.json",
        "junit:target/xml-report/cucumber.xml",
        "rerun:TestOutput/failed/failed_scenario.txt"},
        //rerun ile belirttigimiz dosyada fail olan senaryolar tutulur.
        features = "src/test/resources/features",//features package -sag tik -copy path-copy Path content root
        glue = {"techproed/stepDefinition"},  // step definition package-sag tik -copy path-copy Path source root
        tags = "@n",   //Calistirmak istedigimiz scenario'nun üstüne bu tag'i koyarsak sadece o scenario calisir.
        dryRun = false,//-->true secersek scenario'lari kontrol eder, browser'i calistirmaz. False -->Normal calistirir.
        monochrome=false) //--> false olursa consoldaki ciktilar renkli olur


public class Runner1 {

}
