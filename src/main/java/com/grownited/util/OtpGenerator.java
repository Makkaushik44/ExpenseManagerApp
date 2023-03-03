package com.grownited.util;

public class OtpGenerator {
	
	 public static String generateOTP(int n)//5 10 do not access static using object  
	 {                                      //static to use by using class name
	 
	  // choose a Character random from this String
	  String alphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	         + "0123456789";
	 
	  // create StringBuffer size of AlphaNumericString
	  StringBuilder sb = new StringBuilder(n);//"" 
	 
	  for (int i = 0; i < n; i++) {
	 
	   // generate a random number between
	   // 0 to AlphaNumericString variable length
	   int index
	    = (int)(alphaNumericString.length()
	      * Math.random());
	 
	   // add Character one by one in end of sb
	   sb.append(alphaNumericString
	      .charAt(index));// M9YZ3   
	  }
	 
	  return sb.toString();
	 }

}
