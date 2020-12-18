package com.runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features="D:\\Selenium\\AdactinBookingCucumberWithScenarioOutline\\src\\test\\resources\\Feature\\HotelBooking.feature",glue={"com.stepdefinition"}, monochrome=true)
public class TestRunnerClass {

	
}
