#Author: manoj.chauhan@prodigylabs.net
#Keywords Summary : Android Automation 
#Feature: Account Move Money (New App)
#Scenario: #NA
Feature: P2P Transfer

@RegressionPack @TC001_P2P_Send_Money
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
  And user waits for "5" seconds
  And  user selects radio button "Pay_Meed_Members"

  And user clicks on button "Continue"
 And user waits for "5" seconds
  And user enters text "<recipient>" in textbox "Search_friends"
  
  And user selects option "<recipient>" from the list
  And user waits for "2" seconds
  And user enters text "<Amount>" in textbox "AMOUNT_TO_BE_SENT"
  And user enters text "P2P automation notes" in textbox "NOTES"
  And user clicks on button "Confirm_details"
  And user clicks on button "Send_money"
  And user switches to app "message" to get "OTP"
  
  # TO BD COMPLETED

  Examples: 
    |   Platform    |   Email                           |   Username     |   Password    |   recipient               |  Amount  |
    |   Android     |   manoj.chauhan@prodigylabs.net   |   mchauhan9189 |   Qwerty123!! |   meedtest75@yopmail.com  |   10.00          |
    
    
    
    @RegressionPack @TC001_P2P_Request_Money
Scenario Outline: Verify Meed customer is able to request money in Meed app 
Given user launches the app in "<Platform>" device
And user waits for "10" seconds
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
  And user waits for "5" seconds
  And  user selects radio button "Pay_Meed_Members"

  And user clicks on button "Continue"
 And user waits for "5" seconds
 And user clicks on button "Request"
  And user enters text "<recipient>" in textbox "Search_friends"
  
  And user selects option "<recipient>" from the list
  And user waits for "2" seconds
 
 
 #TO BE COMPLETED
 
 
 
 
  And user enters text "<Amount>" in textbox "AMOUNT_TO_BE_SENT"
  And user enters text "P2P automation notes" in textbox "NOTES"
  And user clicks on button "Confirm_details"
  And user clicks on button "Send_money"
  And user switches to app "message" to get "OTP"

  Examples: 
    |   Platform    |   Email                           |   Username     |   Password    |   recipient               |  Amount  |
    |   Android     |   manoj.chauhan@prodigylabs.net   |   mchauhan9189 |   Qwerty123!! |   meedtest75@yopmail.com  |   10.00          |