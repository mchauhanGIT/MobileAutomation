#Author: manoj.chauhan@prodigylabs.net
#Keywords Summary : Android Automation 
#Feature: Account Login New App
#Scenario: #NA
Feature: Internal P2P Transfer new app
@RegressionPack @TC001
Scenario Outline: Verify Meed customer is able to successfully Pay Friends having Meed membership - Send Money
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
 And user clicks on button "Move_Money"
  And user waits for "2" seconds
  And user scrolls down
  And user clicks on button "Pay_Friends"
  And user waits for "10" seconds
  And  user selects radio button "Pay_Meed_Members"
  And user clicks on button "Continue"
  And user waits for "5" seconds
  And user enters text "<recipient>" in textbox "Search_friends"
  

  Examples: 
	|	Platform	|	Email										|	Username			|	Password		|	recipient								|
	|	Android		|	Meedoct091@yopmail.com	|	Meedoct091		|	Password-1	|	meedtest75@yopmail.com	|	