package com.honeySecure.util;

import java.util.Properties;
import jakarta.mail.*;
import jakarta.mail.internet.*;

public class MailUtil1 {

    public static void sendLoginAlert(String toEmail) {
        final String fromEmail = "aakankshasolanki911@gmail.com";
        final String password = "fmea foub ftfr lfwr";

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Authenticator auth = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        };

        Session session = Session.getInstance(props, auth);

        try {
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(fromEmail, "HoneySecure"));
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            msg.setSubject("Login Alert - HoneySecure Account");
            msg.setText("Dear " + toEmail + ",\n\nYour account was just accessed.\n\nIf this wasn't you, please change your password.\n\nRegards,\nHoneySecure Security Team");

            Transport.send(msg);
            System.out.println("Login alert email sent to " + toEmail);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

