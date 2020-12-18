package com.pom;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.baseclass.LibGlobal;

public class SearchHotelPage extends LibGlobal {
	
	public SearchHotelPage() {
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath="//select[@name='location']")
	private WebElement location;

	@FindBy(id = "hotels")
	private WebElement hotelsDD;

	@FindBy(id = "room_type")
	private WebElement roomTypeDD;

	@FindBy(id = "room_nos")
	private WebElement roomNoDD;

	@FindBy(id = "datepick_in")
	private WebElement dateIn;

	@FindBy(id = "datepick_out")
	private WebElement dateOut;

	@FindBy(id = "adult_room")
	private WebElement adultRoomDD;

	@FindBy(id = "child_room")
	private WebElement childRoomDD;

	@FindBy(id = "Submit")
	private WebElement searchBtn;

	@FindBy(id = "Reset")
	private WebElement resetBtn;

	public WebElement getLocation() {
		return location;
	}

	public WebElement getHotelsDD() {
		return hotelsDD;
	}

	public WebElement getRoomTypeDD() {
		return roomTypeDD;
	}

	public WebElement getRoomNoDD() {
		return roomNoDD;
	}

	public WebElement getDateIn() {
		return dateIn;
	}

	public WebElement getDateOut() {
		return dateOut;
	}

	public WebElement getAdultRoomDD() {
		return adultRoomDD;
	}

	public WebElement getChildRoomDD() {
		return childRoomDD;
	}

	public WebElement getSearchBtn() {
		return searchBtn;
	}

	public WebElement getResetBtn() {
		return resetBtn;
	}
	
	
}
