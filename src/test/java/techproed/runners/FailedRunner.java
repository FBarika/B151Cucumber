package techproed.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)//-->TestCalistirici notasyon
@CucumberOptions(plugin = {"pretty",
        "html:target/default-cucumber-reports.html",
        "json:target/json-reports/cucumber.json",
        "junit:target/xml-report/cucumber.xml",
        "rerun:TestOutput/failed/failed_scenario.txt"},
        //rerun ile belirttigimiz dosyada fail olan senaryolar tutulur.
        features = "@TestOutput/failed/failed_scenario.txt",//features package -sag tik -copy path-copy Path content root
        glue = {"techproed/stepDefinition"},  // step definition package-sag tik -copy path-copy Path source root
        dryRun = false,//-->true secersek scenario'lari kontrol eder, browser'i calistirmaz. False -->Normal calistirir.
        monochrome=false) //--> false olursa consoldaki ciktilar renkli olur



public class FailedRunner {

}

/*
    FailedRunner class'ını oluşturma amacımız rerun ile belirttiğimiz yolda fail olan scenarioları
tekrar bu class'dan tüm scenario'ları tekrar çalıştırmak yerine sadece fail olanları çalıştırmak
için kullanırız. @CucumberOptions() parametresi içine belirttiğimiz features tag'ına bu class'da
fail olan scenarioları tutan txt dosyasının yolunu belirtiriz. Dosya yolu belirttiğimiz için
önüne @ işareti koymamız gerekir
 */
