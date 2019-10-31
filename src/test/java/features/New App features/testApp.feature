#Author: manoj.chauhan@prodigylabs.net
#Keywords Summary : Android Automation 
#Feature: Account Login New App
#Scenario: #NA
Feature: Internal P2P Transfer new app
@RegressionPack @TC001_Contact_Us
Scenario Outline: Verify Meed customer is able contact us in Meed app 
Given user launches the app in "<Platform>" device

And user waits for "15" seconds
 And user clicks on button "Apply_now"
 And user waits for "3" seconds
 And user enters text "<Email>" in textbox "Your_email"
 And user clicks on button "Continue"
 And user waits for "2" seconds
 And user enters text "<Username>" in textbox "Username"
 And user enters text "<Password>" in textbox "Password"
 And user clicks on button "Log_In"
 And user waits for "5" seconds
 
 
 And user waits for "2" seconds
 And user clicks on button "I'm_good_to_go"
 And user waits for "2" seconds
 And user clicks on button "ALLOW"
 
 And user clicks on label "Driver_License"
 And user waits for "200" seconds
 
 
 
 
 

  Examples: 
    |   Platform    |   Email                    |	Nickname	| Username   |   Password    |   
    |   Android     |   meeduat1121@yopmail.com	 |  Meeduser	|	muat991122 |   Password-1	 | 