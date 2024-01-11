package utils;

import java.io.DataOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.io.IOException;

public class ThirdPartyServer {
    public static InputStream sendThirdPartyRequest(String requestURL) throws IOException {

        URL url = new URL(requestURL);

        HttpURLConnection con = (HttpURLConnection) url.openConnection();

        con.setRequestMethod("POST");
        con.setDoOutput(true);

        con.connect();

        DataOutputStream dos = new DataOutputStream(con.getOutputStream());

        dos.close();

        InputStream is = null;

        int responseCode = con.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            is = con.getInputStream();
        }
        return is;
    }
}