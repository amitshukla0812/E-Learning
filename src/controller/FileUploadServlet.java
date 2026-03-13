package controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.sql.Connection;
import java.sql.PreparedStatement;
import conn.Conn;

@WebServlet("/FileUploadServlet")
@MultipartConfig
public class FileUploadServlet extends HttpServlet {
    public static final String UPLOAD_DIR = "images";

    public FileUploadServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String name = request.getParameter("name");
        String skills = request.getParameter("skills");
        String experince = request.getParameter("experince");

        Part part = request.getPart("file");
        String originalFileName = extractFileName(part);
        String contentType = part.getContentType();

        // Allow only image files
        if (!contentType.startsWith("image/")) {
            response.getWriter().println("Error: Only image files are allowed.");
            return;
        }

        // Generate unique file name
        String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
        String newFileName = System.currentTimeMillis() + fileExtension;

        // Build upload path
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        String fullSavePath = uploadPath + File.separator + newFileName;
        part.write(fullSavePath);

        String dbFilePath = UPLOAD_DIR + File.separator + newFileName;

        // Save metadata to DB
        try {
            Connection dbs = Conn.getCon();
            PreparedStatement pst = dbs.prepareStatement(
                    "INSERT INTO teacher(name, skills, experince, file) VALUES (?, ?, ?, ?)");

            pst.setString(1, name);
            pst.setString(2, skills);
            pst.setString(3, experince);
            pst.setString(4, dbFilePath);

            pst.executeUpdate();
            response.sendRedirect("TeacherView.jsp");
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String token : contentDisp.split(";")) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);
            }
        }
        return "";
    }
}
