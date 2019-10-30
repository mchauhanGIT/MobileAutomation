#Author: manoj.chauhan@prodigylabs.net
#Keywords Summary : Android Automation 
#Feature: Account Onboarding New App
#Scenario: #NA
Feature: Customer Onboarding new app
@RegressionPack @TC001_Meed_Onboarding
Scenario Outline: Verify Meed customer is able onboard themselves in Meed app 
Given user launches the app in "<Platform>" device

And user waits for "15" seconds
 And user clicks on button "Apply_now"
 And user waits for "3" seconds
 And user enters text "<Email>" in textbox "Your_email"
 And user clicks on button "Continue"
 And user waits for "2" seconds
 And user enters text "<Nickname>" in textbox "Name_or_Nickname"
 And user waits for "2" seconds
 And user clicks on button "Next"
 And user waits for "2" seconds
 And user clicks on button "Let's_do_it"
 And user clicks on button "No_one_invited_me"
 And user waits for "5" seconds
 And user clicks on button "USA"
 #WAIT FOR USER TO ENTER OTP FROM EMAIL
 And user switches to "chrome" app to get "OTP" for account with email "<Email>"  and password ""
 

 And user waits for "30" seconds
 And user enters text "<Username>" in textbox "Username"
 And user enters text "<Password>" in textbox "Password"
 And user enters text "<Password>" in textbox "Repeat_password"
 And user clicks on button "Continue"
 And user waits for "3" seconds
 And user selects option "" from the dropdown "SECURITY_QUESTION_1"
 
 


  Examples: 
    |   Platform    |   Email                    |	Nickname	| Username   |   Password    |   
    |   Android     |   meeduat1121@yopmail.com	 |  Meeduser	|	muat991122 |   Password-1	 |  