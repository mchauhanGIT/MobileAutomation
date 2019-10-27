#Author: manoj.chauhan@prodigylabs.net
#Keywords Summary : Android Automation 
#Feature: Account Move Money (New App)
#Scenario: #NA
Feature: Meed Rewards

@RegressionPack @TC001+Meed_Extras
Scenario Outline: Verify Meed customer is able to view Meed Rewards to Meed app 
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
 And user clicks on button "Rewards"
  And user waits for "2" seconds
 
  And user clicks on button "MeedExtras"
  And user clicks on button "Okay"
  
  And user scrolls down
  And user scrolls down
  And user clicks on label "See_All_Offers"
  And user waits for "3" seconds
  And user scrolls down
  And user scrolls down
   And user clicks on button "Back"
   And user clicks on label "See_Nearby_Offers"
 
  And user waits for "5" seconds

  Examples: 
    |   Platform    |   Email                           |   Username     |   Password    |  
    |   Android     |   manoj.chauhan@prodigylabs.net   |   mchauhan9189 |   Qwerty123!! | 
    
    @RegressionPack @TC002+Meed_Shares
Scenario Outline: Verify Meed customer is able to view Meed Share to Meed app 
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
 And user clicks on button "Rewards"
  And user waits for "2" seconds
 
  And user clicks on button "MeedShare"
  And user clicks on button "ACTIVE_SHARES"
  And user clicks on button "Back"
  
  And user clicks on button "THIS_MONTH"
  And user clicks on button "Back"
  And user clicks on button "TOTAL"
  And user clicks on button "Back"
  
  And user waits for "5" seconds
  

  Examples: 
    |   Platform    |   Email                           |   Username     |   Password    |   
    |   Android     |   manoj.chauhan@prodigylabs.net   |   mchauhan9189 |   Qwerty123!! |   
    
    
    @RegressionPack @TC003+Meed_Travel
Scenario Outline: Verify Meed customer is able to view Meed Travel to Meed app 
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
 And user clicks on button "Rewards"
  And user waits for "2" seconds
  And user clicks on button "MeedTravel"
  And user scrolls down  
  And user clicks on button "Book_via_MeedTravel"
  And user clicks on button "Im_good_with_that"
   And user waits for "5" seconds
  

  Examples: 
    |   Platform    |   Email                           |   Username     |   Password    |   
    |   Android     |   manoj.chauhan@prodigylabs.net   |   mchauhan9189 |   Qwerty123!! |  
    
    
    
    @RegressionPack @TC004+Meed_Cover
Scenario Outline: Verify Meed customer is able to view Meed Cover to Meed app 
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
 And user clicks on button "Rewards"
  And user waits for "2" seconds
 
 And user clicks on button "MeedCover"
  And user waits for "2" seconds
  And user clicks on button "View_Policy"
   And user waits for "5" seconds
  
  Examples: 
    |   Platform    |   Email                           |   Username     |   Password    |   
    |   Android     |   manoj.chauhan@prodigylabs.net   |   mchauhan9189 |   Qwerty123!! |  