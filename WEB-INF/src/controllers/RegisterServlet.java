package controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import java.util.regex.Pattern;
import java.util.regex.Matcher;

@WebServlet("/register.do")
public class RegisterServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String forwardURL = "register.jsp";
        boolean f2, f1;
        f2 = true;
        f1 = true;

        Pattern p2 = Pattern.compile("\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}");
        Matcher emlMatcher = p2.matcher(email);

        Pattern p1 = Pattern.compile("[A-Za-z0-9]{6,12}");
        Matcher pwdMatcher = p1.matcher(password);

        if (!pwdMatcher.matches()) {
            request.setAttribute("pwd_err", "Please Enter Valid Password");
            f1 = false;
        }

        if (!emlMatcher.matches()) {
            request.setAttribute("eml_err", "Please Enter Valid Email");
            f2 = false;
        }
        if (f2) {
            Map<String, String> map = new HashMap<>();
            map.put("name", name);
            map.put("email", email);
            map.put("password", password);

            session.setAttribute("map", map);
            forwardURL = "phonevalidate.jsp";
        } else {
            System.out.println(f2);
        }

        request.getRequestDispatcher(forwardURL).forward(request, response);
    }
}
