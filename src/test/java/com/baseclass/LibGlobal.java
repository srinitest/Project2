package com.baseclass;

import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.Alert;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

public class LibGlobal {

	public WebDriver driver;
	public Robot rob;
	public Alert alert;

	public WebDriver launchBrowser(String browserName) {
		if (browserName.equalsIgnoreCase("chrome")) {
			System.setProperty("webdriver.chrome.driver", "D:\\Selenium\\Baseclass\\driver\\chromedriver.exe");
			driver = new ChromeDriver();

		}

		else if (browserName.equalsIgnoreCase("firefox")) {
			System.setProperty("webdriver.gecko.driver", "D:\\Selenium\\Baseclass\\driver\\geckodriver.exe");
			driver = new FirefoxDriver();
		} else {
			System.setProperty("webdriver.ie.driver", "D:\\Selenium\\Baseclass\\driver\\IEDriverServer.exe");
			driver = new InternetExplorerDriver();
			
		}
		return driver;
	}
	
	public boolean isDisplayed(WebElement e) {
		return e.isDisplayed();
	}
	
	public boolean isEnabled(WebElement e) {
		return e.isEnabled();
	}

	public void getToUrl(String url) {
		driver.get(url);
		driver.manage().deleteAllCookies();
		driver.manage().window().maximize();
		driver.manage().timeouts().pageLoadTimeout(10, TimeUnit.SECONDS);
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}

	public String currentUrl() {
		String currentUrl = driver.getCurrentUrl();
		return currentUrl;

	}

	public String title() {
		String title = driver.getTitle();
		return title;

	}

	public void sendKey(WebElement e, String text) {
		if(isDisplayed(e) && isEnabled(e) && text!=null ) {
			e.sendKeys(text);
		}
		
	}

	public void click(WebElement e) {
		if(isDisplayed(e) && isEnabled(e)  ) {
			e.click();
		}
		
	}

	public void quit() {
		driver.quit();
	}

	public String retriveText(WebElement e) {
		String text = e.getText();
		return text;

	}

	public String retriveAttribute(WebElement e) {
		String attributevalue = e.getAttribute("value");
		return attributevalue;
	}

	public void moveToElement(WebElement e) {
		Actions action = new Actions(driver);
		action.moveToElement(e).perform();
	}

	public void dragAndDrop(WebElement src, WebElement des) {
		Actions action = new Actions(driver);
		action.dragAndDrop(src, des).perform();
	}

	public void doubleClick(WebElement e) {
		Actions action = new Actions(driver);
		action.doubleClick(e).perform();
	}

	public void rightClick(WebElement e) {
		Actions action = new Actions(driver);
		action.contextClick(e).perform();
	}

	public void selectAll() {
		rob.keyPress(KeyEvent.VK_CONTROL);
		rob.keyPress(KeyEvent.VK_A);
		rob.keyRelease(KeyEvent.VK_A);
		rob.keyRelease(KeyEvent.VK_CONTROL);
	}

	public void cut() {
		rob.keyPress(KeyEvent.VK_CONTROL);
		rob.keyPress(KeyEvent.VK_X);
		rob.keyRelease(KeyEvent.VK_X);
		rob.keyRelease(KeyEvent.VK_CONTROL);
	}

	public void paste() {
		rob.keyPress(KeyEvent.VK_CONTROL);
		rob.keyPress(KeyEvent.VK_V);
		rob.keyRelease(KeyEvent.VK_V);
		rob.keyRelease(KeyEvent.VK_CONTROL);
	}

	public void enter() {

		rob.keyPress(KeyEvent.VK_ENTER);
		rob.keyRelease(KeyEvent.VK_ENTER);
	}

	public void arrowDown() {

		rob.keyPress(KeyEvent.VK_DOWN);
		rob.keyRelease(KeyEvent.VK_DOWN);
	}

	public void arrowUp() {

		rob.keyPress(KeyEvent.VK_UP);
		rob.keyRelease(KeyEvent.VK_UP);
	}

	public void arrowLeft() {

		rob.keyPress(KeyEvent.VK_LEFT);
		rob.keyRelease(KeyEvent.VK_LEFT);
	}

	public void arrowRight() {

		rob.keyPress(KeyEvent.VK_RIGHT);
		rob.keyRelease(KeyEvent.VK_RIGHT);
	}

	public void screenShot(String path) throws IOException {
		TakesScreenshot shot = (TakesScreenshot) driver;
		File src = shot.getScreenshotAs(OutputType.FILE);
		File des = new File(path);
		FileUtils.copyFile(src, des);
	}

	public void scrollDown(WebElement e) {
		JavascriptExecutor j = (JavascriptExecutor) driver;
		j.executeScript("arguments[0].scrollIntoView(true)", e);
	}

	public void scrollUp(WebElement e) {
		JavascriptExecutor j = (JavascriptExecutor) driver;
		j.executeScript("arguments[0].scrollIntoView(false)", e);
	}

	public void jscriptClick(WebElement e) {
		JavascriptExecutor j = (JavascriptExecutor) driver;
		j.executeScript("arguments[0].click()", e);
	}

	public void acceptAlert() {
		driver.switchTo().alert();
		alert.accept();

	}

	public void dismissAlert() {
		driver.switchTo().alert();
		alert.dismiss();

	}

	public void getIntoFrame(int index) {
		driver.switchTo().frame(index);
	}

	public void getIntoFrame(String id) {
		driver.switchTo().frame(id);
	}

	public void getIntoFrame(WebElement e) {
		driver.switchTo().frame(e);
	}

	public void switchToWindow(int i) {
		Set<String> windowHandles = driver.getWindowHandles();
		ArrayList<String> al = new ArrayList<String>(windowHandles);
		String id = al.get(i);
		driver.switchTo().window(id);
	}
	
	public void selectByVisibleTextDD(WebElement e, String value) {
		Select s = new Select(e);
		s.selectByVisibleText(value);
	}

}
