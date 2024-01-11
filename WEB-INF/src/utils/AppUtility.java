package utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

import javax.json.Json;

public class AppUtility {
    public static int generateOTP() {
        return new Random().nextInt(8889) + 1111;
    }

    public static boolean checkGoogleRecaptchaResponse(String recaptchaURL, String secretKey, String responseToken)
            throws IOException {
        String url = recaptchaURL + "?secret=" + secretKey + "&response=" + responseToken;

        InputStream is = ThirdPartyServer.sendThirdPartyRequest(url);

        return Json.createReader(is).readObject().getBoolean("success");
    }
}
