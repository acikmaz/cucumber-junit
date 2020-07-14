package com.cybertek.step_definitions;

import com.cybertek.pages.WikiSearchPage;
import com.cybertek.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;

public class WikiStepDefinitions {

    WikiSearchPage wikiSearchPage = new WikiSearchPage();

    @Given("User is on the Wikipedia homepage")
    public void userIsOnTheWikipediaHomepage() {
        Driver.getDriver().get("https://www.wikipedia.org");
    }

    @When("User searches {string} in the Wiki search page")
    public void userSearchesInTheWikiSearchPage(String string) {
        wikiSearchPage.searchBox.sendKeys(string + Keys.ENTER);
    }

    @Then("User should see {string} in the wiki title")
    public void userShouldSeeInTheWikiTitle(String expectedInTitle) {

        String actualTitle = Driver.getDriver().getTitle();

        Assert.assertTrue(actualTitle.contains(expectedInTitle));

    }

    @Then("User should see {string} in the main header")
    public void userShouldSeeInTheMainHeader(String expected) {

        String actualHeaderText = wikiSearchPage.mainHeaderAfterSearch.getText();

        Assert.assertEquals(actualHeaderText, expected);

    }

//    @When("User searches {string} in the Wiki {int} search page")
//    public void userSearchesInTheWikiSearchPage(String arg0, int arg1) {
//    }
}
