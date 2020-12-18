package com.stepdefinition;

import org.openqa.selenium.WebElement;

import com.baseclass.LibGlobal;
import com.pom.BookingDetails;
import com.pom.LoginPagePOM;
import com.pom.SearchHotelPage;
import com.pom.SelectHotel;

import cucumber.api.java.en.*;

public class AdactinBookingSteps extends LibGlobal {

	LoginPagePOM login = new LoginPagePOM();
	SearchHotelPage sh =new SearchHotelPage();
	SelectHotel selhot = new SelectHotel();
	BookingDetails bd = new BookingDetails();
	
	
	
	@Given("User is on the Adactin Login Page")
	public void user_is_on_the_Adactin_Login_Page() {
		LoginPagePOM login = new LoginPagePOM();
		launchBrowser("chrome");
		getToUrl("http://adactinhotelapp.com/");
	}

	@When("User should enter {string},{string}")
	public void user_should_enter(String userName, String password) {
		
		WebElement txtuser = login.getUserName();
		sendKey(txtuser, userName);
		
		WebElement txtpass = login.getPassword();
		sendKey(txtpass, password);
	}

	@When("User should click on login button")
	public void user_should_click_on_login_button() {
		WebElement loginBtn = login.getLoginBtn();
		click(loginBtn);
	}

	@When("User should select {string},{string},{string},{string},{string},{string},{string},{string}")
	public void user_should_select(String location, String hotels, String roomType, String numOfRooms,
			String checkInDate, String checkOutDate, String adultPerRoom, String childPerRoom) {
		
		WebElement ddloc = sh.getLocation();
		selectByVisibleTextDD(ddloc, location);
		
		WebElement ddhotel = sh.getHotelsDD();
		selectByVisibleTextDD(ddhotel, hotels);

		WebElement ddRoomType = sh.getRoomTypeDD();
		selectByVisibleTextDD(ddRoomType, roomType);

		WebElement ddRoomNos = sh.getRoomNoDD();
		selectByVisibleTextDD(ddRoomNos, numOfRooms);

		WebElement txtin = sh.getDateIn();
		sendKey(txtin, checkInDate);

		WebElement txtout = sh.getDateOut();
		sendKey(txtout, checkOutDate);

		WebElement ddAdultRoom = sh.getAdultRoomDD();
		selectByVisibleTextDD(ddAdultRoom, adultPerRoom);
		
		WebElement ddChildRoom = sh.getChildRoomDD();
		selectByVisibleTextDD(ddChildRoom, childPerRoom);

	}

	@When("User should click on search button")
	public void user_should_click_on_search_button() {
		WebElement searchBtn = sh.getSearchBtn();
		click(searchBtn);
	}

	@When("User should click on the preferred hotel radio button")
	public void user_should_click_on_the_preferred_hotel_radio_button() {
		WebElement radioBtn = selhot.getRadioButton();
		click(radioBtn);
	}

	@When("User should click on the continue button")
	public void user_should_click_on_the_continue_button() {
		WebElement continueBtn = selhot.getContinueBtn();
		click(continueBtn);
	}

	@When("User should enter {string},{string},{string},{string}")
	public void user_should_enter(String firstName, String lastName, String address, String ccNum) {
		WebElement txtFirst = bd.getFirstName();
		sendKey(txtFirst, firstName);

		WebElement txtLast = bd.getLastName();
		sendKey(txtLast, lastName);

		WebElement txtAdd = bd.getAddress();
		sendKey(txtAdd, address);

		WebElement txtccnum = bd.getCcNum();
		sendKey(txtccnum, ccNum);
	}

	@When("User should select the {string},{string},{string}")
	public void user_should_select_the(String cctype, String expiryMonth, String expiryYear) {
		WebElement ddcctype = bd.getCcType();
		selectByVisibleTextDD(ddcctype, cctype);

		WebElement ddexmnth = bd.getExpiryMonth();
		selectByVisibleTextDD(ddexmnth, expiryMonth);

		WebElement ddexyr = bd.getExpiryYear();
		selectByVisibleTextDD(ddexyr, expiryYear);

	}

	@When("User should enter {string}")
	public void user_should_enter(String cvvNo) {
		WebElement txtcvv = bd.getCvvNo();
		sendKey(txtcvv, cvvNo);
	}

	@When("User should click on booknow button")
	public void user_should_click_on_booknow_button() {
		WebElement booknowBtn = bd.getBookNowBtn();
		click(booknowBtn);
	}

	@Then("User should verify whether the orderNo is displayed")
	public void user_should_verify_whether_the_orderNo_is_displayed() {
		WebElement orderNo = bd.getOrderNo();
		String ordernum = retriveAttribute(orderNo);
		System.out.println("Order number is: " + ordernum);
		quit();
	}
}
