package controllers;

import java.io.IOException;
// import java.utils.List;
import java.io.File;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;

import models.User;

@WebServlet("/upload_pic.do")
public class PicUploadServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        if (user != null) {
            if (ServletFileUpload.isMultipartContent(request)) {
                try {
                    FileItem fileItem = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request).get(0);

                    String uploadLocation = getServletContext().getRealPath("/WEB-INF/uploads/" + user.getEmail());

                    String fileName = fileItem.getName();

                    File file = new File(uploadLocation, fileName);

                    try {
                        fileItem.write(file);

                        user.savePic(fileName);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                } catch (FileUploadException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
