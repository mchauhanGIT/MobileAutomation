
public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
String otp_value="518144";

System.out.println("Length is " +otp_value.length());
		 for(int i=0;i<otp_value.length();i++)
	     {
	        	
	        	System.out.println("Value - "+otp_value.charAt(i));
	        	String temp = otp_value.substring(i, i+1);
	        	System.out.println("temp " +temp);
	     //   driver.findElement(By.xpath("//android.view.View[@index='"+j+"']")).sendKeys(val);
	        
		
	}
	}

}
