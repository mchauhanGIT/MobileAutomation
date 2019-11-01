import java.util.Calendar;
import java.util.Locale;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
String otp_value="09";
int abc = Integer.parseInt(otp_value);
System.out.println("Integer value - " + abc);

System.out.println("Length is " +otp_value.length());
		 /*for(int i=0;i<otp_value.length();i++)
	     {
	        	
	        	System.out.println("Value - "+otp_value.charAt(i));
	        	String temp = otp_value.substring(i, i+1);
	        	System.out.println("temp " +temp);
	     //   driver.findElement(By.xpath("//android.view.View[@index='"+j+"']")).sendKeys(val);
	        
		
	}*/
	

	
	Calendar mCalendar = Calendar.getInstance();    
	String current_month = mCalendar.getDisplayName(Calendar.MONTH, Calendar.SHORT, Locale.getDefault());
	System.out.println("MONTH VALUE IS RETREIVED AS --- " + current_month);
	
	int current_day = mCalendar.get(Calendar.DAY_OF_MONTH);
	System.out.println("Month VALUE IS RETREIVED AS --- " + current_day);
	}

}
