#Author: manoj.chauhan@prodigylabs.net
#Keywords Summary : Android Automation 
#Feature: Account Login New App
#Scenario: #NA
Feature: Account Login 
@RegressionPack @TC001
Scenario Outline: Verify Meed customer is able to successfully able to login in Meed App and not able login successfully
Given user launches the app in "<Platform>" device  
And user waits for "5" seconds
  And user clicks on button "Apply_now"
  And user waits for "3" seconds
 And user enters text "<Email>" in textbox "Your_email"
 And user clicks on button "Continue"
 And user waits for "2" seconds
 And user enters text "<Username>" in textbox "Username"
 And user enters text "<Password>" in textbox "Password"
 And user clicks on button "Log_In"
 And user waits for "3" seconds

  Examples: 
	|	Platform	|	Email													|	Username				|	Password		|		
	|	Android		|	manoj.chauhan@prodigylabs.net	|	mchauhan9189		|	Qwerty123!!	|	
	

@RegressionPack @TC002
Scenario Outline: Verify Meed customer is able to view all the accounts in Meed App
Given user launches the app in "<Platform>" device
And user waits for "5" seconds
  And user clicks on button "Apply_now"
  And user waits for "3" seconds
 And user enters text "<Email>" in textbox "Your_email"
 And user clicks on button "Continue"
 And user waits for "2" seconds
 And user enters text "<Username>" in textbox "Username"
 And user enters text "<Password>" in textbox "Password"
 And user clicks on button "Log_In"
 And user waits for "5" seconds
 And user clicks on button "CHECKING"
 And user waits for "3" seconds
 And user clicks on button "Back"
 And user waits for "2" seconds
 And user scrolls down
 And user waits for "2" seconds
 And user clicks on button "LINE_OF_CREDIT"
 And user waits for "2" seconds
 And user clicks on button "Back"
 And user waits for "2" seconds
 And user clicks on button "SAVINGS"
 And user waits for "2" seconds
 And user clicks on button "Back"


Examples: 
	|	Platform	|	Email										|	Username			|	Password		|		
	|	Android		|	Meedoct091@yopmail.com	|	Meedoct091		|	Password-1	|	
	
#Test case to retrieve username and password - to be written (options currently unavailable in the app)
   
  
   