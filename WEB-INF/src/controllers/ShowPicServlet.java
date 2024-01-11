package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import models.User;

@WebServlet("/show_pic.do")
public class ShowPicServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        String picPath = "static/images/user.png";
        String userPic = user.getMyPic();

        System.out.println("+++++++++++++++++++++++++++++++++++++" + userPic);
        if (userPic != null) {
            picPath = "/WEB-INF/uploads/" + userPic;
        }

        InputStream is = getServletContext().getResourceAsStream(picPath);

        OutputStream os = response.getOutputStream();

        byte[] arr = new byte[256];

        int count = 0;

        while ((count = is.read(arr)) != -1) {
            os.write(arr);
        }

        os.flush();
        os.close();
    }
}
