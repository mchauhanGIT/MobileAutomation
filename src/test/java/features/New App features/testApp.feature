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
 And user waits for "30" seconds
 And user waits for "30" seconds
And user waits for "10" seconds
 
And user enters text "<FirstName>" in textbox "First_Name"
And user enters text "<LastName>" in textbox "Last_Name"
And user clicks on label "DOB"
And user selects "09" "20" "1960" from calendar

And user enters text "<SSN>" in textbox "Social_Security"

And user scrolls down 



And user selects dropdown at index "1"
 And user clicks on label "Science" 
 And user waits for "2" seconds
And user scrolls down 
And user enters text "7000" in textbox "Monthly_Income"

And user selects dropdown at index "2"
 And user clicks on label "Investments" 
 And user waits for "2" seconds

And user scrolls down
And user scrolls down

And user clicks on label "Monthly_Withdrawal"
 And user clicks on label "0-1000" 
 And user waits for "2" seconds

 And user selects dropdown at index "4"
 And user clicks on label ">5000-15000" 
 And user waits for "2" seconds
 
 And user clicks on button "Next"
 And user waits for "2" seconds
 And user enters text "<HomeAddress>" in textbox "Home_Address"
 And user enters text "<City>" in textbox "city"
 
And user selects dropdown at index "0"
And user scrolls down
And user scrolls down
And user scrolls down
And user scrolls down
And user scrolls down
And user scrolls down

 And user clicks on label "<State>" 
 And user waits for "2" seconds
 
 
 And user enters text "<ZIPCode>" in textbox "ZIP_Code"
 And user enters text "<Mobile>" in textbox "Mobile_Number"
 
 And user scrolls down
 And user scrolls down
 And user scrolls down
 And user scrolls down
 And user scrolls down
 
 And user selects radio button "No_I_am_neither."
  And user clicks on button "Next"
  And user waits for "2" seconds
  
 # And user selects dropdown at index "0"
 #And user clicks on label "Driver_License" 
 
 And user enters text "<Mobile>" in textbox "Identity_Number" 
 And user clicks on button "Next"
 
 And user waits for "30" seconds
 
 

  Examples: 
    |   Platform    |   Email                  |	Nickname	| Username  |   Password    |  FirstName		| LastName	|	dob					|	SSN					|	HomeAddress			|	City				|	State				|	ZIPCode	|	Mobile			|	IdentityNumber	|
    |   Android     |   manojuat2@yopmail.com	 |  ManojUAT	|	manojuat2 |   Password-1	| 	Andrew			|	Lopez			|	09/20/1960	|	666124085		|	307 Supor Blvd	|	New Jersey	|	New Jersey	|	07229		|	6479391989	|	J31000000000059	|

