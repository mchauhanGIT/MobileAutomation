package meed.base;

import org.openqa.selenium.WebDriver;

import net.prodigylabs.handlers.WebElementHandler;

public class MeedBasePage extends WebElementHandler{
	
	public MeedBasePage(WebDriver webDriver) {	
		super(webDriver);
		System.out.println("Inside MeedBasePage constructor");
	}

}
