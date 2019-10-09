package stepDefinations;

import java.util.List;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.cucumber.listener.Reporter;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import cucumber.api.Scenario;
import cucumber.api.java.Before;
import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import io.appium.java_client.*;
import io.appium.java_client.android.Activity;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.StartsActivity;
import io.appium.java_client.android.nativekey.AndroidKey;
import io.appium.java_client.android.nativekey.KeyEvent;
import io.appium.java_client.touch.offset.PointOption;
import net.prodigylabs.config.ObjectRepository;
import net.prodigylabs.driver.CapabilitiesGenerator;
import net.prodigylabs.handlers.ScreenshotHandler;
import net.prodigylabs.test.BaseTest;

import org.junit.Assert;


public class GenericSteps extends BaseTest{

	//public AndroidDriver<MobileElement> driver;
	WebDriver driver;
    public WebDriverWait wait;
   
    DesiredCapabilities caps = new DesiredCapabilities();
	ScreenshotHandler screenshot = null;
	String sName = null;
    
	@Before
	public void setup(Scenario scenario) throws Exception {		
		//System.out.println("Executing Before of Step Defination");
		sName=scenario.getName();
		
	}
	
	
    @Given("^user launches the app in \"(.*?)\" device$")
    public void user_launches_the_app_in_device(String platform) throws Throwable {    	 
        
        driver = CapabilitiesGenerator.getInstance().launchApp(platform);
        screenshot = new ScreenshotHandler(driver);
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
	
    }
    
    @Given("^user enters email \"(.*?)\"$")
    public void user_enters_email(String arg1) throws Throwable {
    	wait = new WebDriverWait(driver, 40);
    	wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("android.widget.EditText"))).sendKeys(arg1);
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
    }
    
    
    @Given("^user clicks on button \"([^\"]*)\"$")
    public void user_clicks_on_button(String button_name) throws Throwable {
    	wait.until(ExpectedConditions.visibilityOfElementLocated
    			(ObjectRepository.getobjectLocator(button_name))).click();  
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
    	
    }
    
    @Given("^user clicks on label \"([^\"]*)\"$")
    public void label(String label_name) throws Throwable {    	 
    	wait.until(ExpectedConditions.visibilityOfElementLocated
    			(ObjectRepository.getobjectLocator(label_name))).click();  
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
    	
    }
   
    @Given("^user enters text \"([^\"]*)\" in textbox \"([^\"]*)\"$")
    public void user_enters_text_in_textbox(String text_value, String textbox_name) throws Throwable {
    	wait.until(ExpectedConditions.visibilityOfElementLocated
    			(ObjectRepository.getobjectLocator(textbox_name))).clear();
    	wait.until(ExpectedConditions.visibilityOfElementLocated
                (ObjectRepository.getobjectLocator(textbox_name))).sendKeys(text_value);
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
    }
   
    
    @Given("^user selects option \"([^\"]*)\"  from the dropdown \"([^\"]*)\"$")
    public void user_selects_option_from_the_dropdown(String dropdown_value, String dropdown_name) throws Throwable {
    	 wait.until(ExpectedConditions.visibilityOfElementLocated
    			 (ObjectRepository.getobjectLocator(dropdown_name))).click();
         //Select Weekly Radio button
         wait.until(ExpectedConditions.visibilityOfElementLocated
        		 (ObjectRepository.getobjectLocator(dropdown_value))).click();
         Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
          
    }
    
    
 /*   @Given("^user select radio button \"([^\"]*)\"$")
    public void user_select_radio_button(String recipient) throws Throwable {
        
    	driver.findElement(By.xpath("//android.widget.CheckBox[@text='" +"receipient']")).click();
    	
    	utility.captureScreenShot(driver);
    	
    }
    */

    @Given("^user validates \"([^\"]*)\" field with expected value as \"([^\"]*)\"$")
    public void user_validates_field_with_expected_value_as(String actual, String expected) throws Throwable {
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
    	actual = actual+ "_value";
    	String actual_argument = wait.until(ExpectedConditions.visibilityOfElementLocated
   			 (ObjectRepository.getobjectLocator(actual))).getText();
    
    		Assert.assertEquals(expected, actual_argument);
    		
    }
   
    
    @Given("^user swipes right to select \"([^\"]*)\"$")
    public void user_swipes_right_to_select(String account) throws Throwable {
    	
    	 TouchAction touchAction = new TouchAction((PerformsTouchActions) driver);    //for touch actions on mobile devices
    	if(account.equalsIgnoreCase("SAVINGS"))
	{
    	//action.press(startx,starty).waitAction(1000).moveTo(startx,endy).release().perform();    	
        touchAction.longPress(PointOption.point(290, 309)).moveTo(PointOption.point(0, 309)).release().perform();
    }
    	else
    	{
    		touchAction.longPress(PointOption.point(290, 540)).moveTo(PointOption.point(0, 540)).release().perform();	
    	}
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
    }
    
    
    @Given("^user clicks on link \"([^\"]*)\"$")
    public void user_clicks_on_link(String linkname) throws Throwable {
       
    	 wait.until(ExpectedConditions.visibilityOfElementLocated
    			 (ObjectRepository.getobjectLocator(linkname))).click();
    	 Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
    	
    }
    
    @Given("^user selects checkbox \"([^\"]*)\"$")
    public void user_selects_checkbox(String checkbox_name) throws Throwable {
    	wait.until(ExpectedConditions.visibilityOfElementLocated
   			 (ObjectRepository.getobjectLocator(checkbox_name))).click();
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
        
    }

    @Given("^user waits for \"(.*?)\" seconds$")
    public void user_waits_for_seconds(long arg1) throws Throwable 
    {
       arg1 = arg1*1000;
    	Thread.sleep(arg1);
    	Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
    } 
    
    
    
    @Given("^user enters \"([^\"]*)\" in textbox with index \"([^\"]*)\"$")
    public void user_enters_in_textbox_with_index(String text, int index) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
    	
    	List<MobileElement> elements = driver.findElements(By.className("android.widget.EditText"));
        System.out.println("Number of elements:" +elements.size());

        for (int i=0; i<elements.size();i++)
        {
          System.out.println("button text:" + elements.get(i).getAttribute("text"));
          elements.get(index).sendKeys(text);
          elements.get(index).click();
         
        }
       
    }
 
    @SuppressWarnings({ "unchecked", "rawtypes" })
    
    @Given("^user switches to \"([^\"]*)\" app to get \"([^\"]*)\" for account with email \"([^\"]*)\"  and password \"([^\"]*)\"$")
    public void user_switches_to_app_to_get_for_account_with_email_and_password(String app_name, String requirement, String email_id, String password) throws Throwable {
       
    	Thread.sleep(2000);
    	Activity activity; 
    	switch(app_name)
		{
			case "chrome":
				activity = new Activity(ObjectRepository.getString("global.capability.chromeAppPackage"), ObjectRepository.getString("global.capability.chromeAppActivity"));
		        activity.setStopApp(false);
		        ((AndroidDriver<MobileElement>) this.driver).startActivity(activity);	
		        String domain = email_id.split("@")[1];
		        System.out.println("DOMAIN-- "+ domain);
		     
		     //   System.setProperty("webdriver.chrome.driver","\\src\\main\\resources\\chromedriver.exe");
		        
		   if(domain.equalsIgnoreCase("gmail.com"))     
		   {        
			   try {
		        	System.out.print("Inside Try block");
		        //	driver.get("http://www.gmail.com");
		        	driver.findElement(By.className("android.widget.EditText")).sendKeys("https://"+domain);			        
			       ((AndroidDriver) driver).pressKey(new KeyEvent(AndroidKey.ENTER));
			        
			       System.out.print("Exit try block"); 
		        }
		
			   catch(Exception e)
			   {
    				System.out.print("Inside catch block");
    				
    					driver.findElement(By.xpath("//android.widget.EditText[@resource-id='com.android.chrome:id/url_bar']")).sendKeys("https://"+domain);
    				((AndroidDriver) driver).pressKey(new KeyEvent(AndroidKey.ENTER));
    				Thread.sleep(2000);
    				
			   }
		 
			   finally
			   {
			 
		/*	   driver.findElement(By.xpath("//android.widget.EditText[@resource-id='identifierId']")).sendKeys(email_id);
		        driver.findElement(By.xpath("//android.widget.Button[@text='Next']")).click();
		        Thread.sleep(2000);
		        driver.findElement(By.className("android.widget.EditText")).sendKeys(password);
		        driver.findElement(By.xpath("//android.widget.Button[@text='Next']")).click();
		        Thread.sleep(5000);
			*/ 
			   }
		   	}
		   else if(domain.equalsIgnoreCase("yopmail.com"))  
		   {
			   
		   }
		break;
				
			case "message":
				 activity = new Activity(ObjectRepository.getString("global.capability.settingsAppPackage"), ObjectRepository.getString("global.capability.settingsAppActivity"));
		        activity.setStopApp(false);
		        ((AndroidDriver<MobileElement>) this.driver).startActivity(activity);
		        driver.findElement(By.className("android.widget.LinearLayout")).click();
			break;
			
		}
    	    
        Thread.sleep(2000);
        
         //Re launch calculator App
        activity = new Activity(ObjectRepository.getString("global.capability.meedAppPackage"), ObjectRepository.getString("global.capability.meedAppActivity"));
        activity.setStopApp(false);
        
        ((AndroidDriver<MobileElement>) this.driver).startActivity(activity);
        Thread.sleep(5000);
    }
    
    
  /*
 @After()
	public void tearDown() throws Exception {		
		System.out.println("Executing After of Step Defination");
        Reporter.addScreenCaptureFromPath(screenshot.captureScreenShot(sName));  
		driver.quit();
	}*/
	
}	



    
	

