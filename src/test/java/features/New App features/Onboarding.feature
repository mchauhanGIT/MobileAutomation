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

 And user switches to "chrome" app to get "OTP" for account with email "<Email>"  and password ""
 

 And user waits for "3" seconds
 And user enters text "<Username>" in textbox "Username"
 And user enters text "<Password>" in textbox "Password"
 And user enters text "<Password>" in textbox "Repeat_password"
 And user clicks on button "Continue"
 And user waits for "3" seconds
 
 #Security Questions
 
 And user scrolls down
 
 And user selects dropdown at index "0"
 And user clicks on label "Favorite_food?" 
 And user waits for "2" seconds
 And user enters "Indian" in textbox at index "1"

 And user scrolls down
 
 And user selects dropdown at index "1"
 And user clicks on label "Favorite_vacation_location?"
 And user waits for "2" seconds 
 And user enters "London" in textbox at index "3"
 
 And user waits for "2" seconds  
 And user selects dropdown at index "2"
 And user waits for "2" seconds 
 And user clicks on label "City_where_you_were_born?"
 # And user waits for "2" seconds
 And user enters "delhi" in textbox at index "5"
 
 And user waits for "2" seconds
 And user clicks on button "Continue"
  And user waits for "2" seconds
  And user clicks on button "I'm_good_to_go"


  Examples: 
    |   Platform    |   Email                    |	Nickname	| Username   |   Password    |   
    |   Android     |   meeduat1121@yopmail.com	 |  Meeduser	|	muat991122 |   Password-1	 |  