package utils;

import java.util.Properties;

import javax.mail.Session;
import javax.mail.Authenticator;
import javax.mail.Transport;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.MimeMessage;
import javax.mail.MessagingException;
import javax.mail.Message;

public class EmailSender {

    static Properties props = new Properties();

    static {

        props.put("mail.transport.protocols", "smtp");
        props.put("mail.smtp.host", "smtp-mail.outlook.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
    }

    public static void sendEmail(String toEmail, String subject, String message) {

        Session session = Session.getInstance(props, new EmailAuthenticator());

        MimeMessage mm = new MimeMessage(session);

        try {
            mm.setFrom("pranjulkesharwani06@outlook.com");
            mm.setRecipients(Message.RecipientType.TO, toEmail);
            mm.setSubject("Hello New Connections");
            mm.setContent(message, "text/html");
            Transport.send(mm);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    public static void sendResetPasswordMail(String email) {
        String resetPasswordEmail = "<h1>Welcome to Grocery</h1>" +
                "<br><br><br><h2>Click over the reset password link</h2>" +
                "<br><br><a href='http://localhost:8080/gro/reset_password.do?email=" + email
                + "'> The Reset Passoword Link</a>";

        sendEmail(email, "Reset Password Link", resetPasswordEmail);
    }

    public static void sendAccVerificationMail(String email, String vCode) {
        String verificationEmail = "<h1>Welcome to MY Mini App Project </h1>" +
                "<br><br><h2> Click over the email verification link</h2>"
                + "<br><br><a href='http://localhost:8080/gro/evf.do?email=" + email + "&vcode=" + vCode
                + "'>The Verification Link</a> ";

        sendEmail(email, "Email Verification Link", verificationEmail);

    }

}

class EmailAuthenticator extends Authenticator {
    public PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("pranjulkesharwani06@outlook.com", "Pranjul@17062000");
    }
}