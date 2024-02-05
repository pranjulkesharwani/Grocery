package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.io.File;

import models.User;
import models.Product;
import models.Unit;
import models.Category;
import models.Manufacturer;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.FileItem;

@WebServlet("/addproduct.do")
public class AddProductServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        Manufacturer manufacturer = (Manufacturer) session.getAttribute("manufacturer");
        // String manufacturer = request.getParameter("user");
        System.out.print(manufacturer + "++++++++++++++++++++++manufacturer+++++++++++++++");
        Integer manufacturerId = manufacturer.getManufacturerId();
        System.out.print(manufacturerId + "+++++++++++++++++++++++++manufacturerId++++++++++++");

        String name = request.getParameter("name");
        Integer price = Integer.parseInt(request.getParameter("price"));
        Integer quantity = Integer.parseInt(request.getParameter("quantity"));
        Integer unitId = Integer.parseInt(request.getParameter("unitId"));
        Integer categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String description = request.getParameter("description");

        // String forwardPage = "manufacturer_login.jsp";
        System.out.println(user + "++++++user+++++++++++++++++++++++++++++++++++");
        System.out.println(manufacturer + "++++++manufacturer+++++++++++++++++++++++++++++++++++");

        if (user != null) {
            // public Product(Manufacturer manufacturer, String name, Integer price, Unit
            // unit,
            // Integer quantity, Category category, String description)
            Product product = new Product(new Manufacturer(manufacturerId), name, price, new Unit(unitId), quantity,
                    new Category(categoryId), description);
            System.out.println(product + "+++++++++++++++++++++++++++++++++++++");
            boolean flag = product.saveProduct();

            System.out.println(flag + "+++++++++++++++++++++++++++++++++++++");
        }

        request.getRequestDispatcher("addproduct.jsp").forward(request, response);
    }
}
