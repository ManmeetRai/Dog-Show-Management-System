package ca.sheridancollege.beans;

	import java.util.Properties;

	import javax.mail.Authenticator;
	import javax.mail.Message;
	import javax.mail.MessagingException;
	import javax.mail.PasswordAuthentication;
	import javax.mail.Session;
	import javax.mail.Transport;
	import javax.mail.internet.InternetAddress;
	import javax.mail.internet.MimeMessage;

	/**
	 *
	 * @author jorge santos
	 */
	public class SendEmail {
	    public void sendAEmailToDogPerson(String emailTo, String msg){
	        Properties props = new Properties();
	        props.put("mail.smtp.host", "smtp.gmail.com");
	        props.put("mail.smtp.socketFactory.port", "465");
	        props.put("mail.smtp.socketFactory.class",
	            "javax.net.ssl.SSLSocketFactory");
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.port", "465"); 
	        Session session = Session.getDefaultInstance(props,
	        new javax.mail.Authenticator() {
	                            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("sandeepsinghxg@gmail.com","");
	            }
	        });

	    try {

	        Message message = new MimeMessage(session);
	        message.setFrom(new InternetAddress("sandeepsinghxg@gmail.com"));
	        message.setRecipients(Message.RecipientType.TO,
	                InternetAddress.parse(emailTo));
	        message.setSubject("Testing Subject");
	        message.setText(msg);

	        Transport.send(message);

	        System.out.println("Done");

	    } catch (MessagingException e) {
	        throw new RuntimeException(e);
	    }
	}

	}