package utils;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
// import com.twilio.type.PhoneNumber;

public class SMSSender {
    // static final String ACCOUNT_STD = "";
    // static final String AUTH_TOKEN = "";

    final static String ACCOUNT_SID = "AC42d87b1e2f94273b297d41bc55ce3231";
    final static String AUTH_TOKEN = "9fb58354c8c845399f8dbfdda1cb0bec";

    public static void sendOTP(String phone, String otp) {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message message = Message.creator(new com.twilio.type.PhoneNumber("+91" + phone),
                new com.twilio.type.PhoneNumber("+12054306151"),
                "Welcome to My Website" + otp).create();

        System.out.println(message.getBody());
    }
}
