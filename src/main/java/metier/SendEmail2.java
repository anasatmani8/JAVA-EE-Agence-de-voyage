package metier;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

public class SendEmail2 {

	
	public void envoyerEmail(String from, String password) throws IOException {
		String to = "anasatmani8@gmail.com"; // to address. It can be any like gmail, hotmail etc.
		   
		 
		  Properties prop = new Properties();
		  prop.put("mail.smtp.host", "smtp.gmail.com");
		  prop.put("mail.smtp.port", "465");
		  prop.put("mail.smtp.auth", "true");
		  prop.put("mail.smtp.socketFactory.port", "465");
		  prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		 
		  Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(from, password);
		   }
		  });
		 
		  try {
		 
		   Message message = new MimeMessage(session);
		   message.setFrom(new InternetAddress(from));
		   message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
		   message.setSubject("Message from Java Simplifying Tech");
		    
		   String msg = "This email sent using JavaMailer API from Java Code!!!";
		    
		   MimeBodyPart mimeBodyPart = new MimeBodyPart();
		   mimeBodyPart.setContent(msg, "text/html");
		     
		  
		   System.out.println("envoie en cours");
		   Transport.send(message);
		 
		   System.out.println("Mail successfully sent..");
		 
		  } catch (MessagingException e) {
		   e.printStackTrace();
		  }
	}
}
