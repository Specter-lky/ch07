/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fileManager;

import loginRegister.LoginBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@MultipartConfig
public class FileDownServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        response.setContentType(getServletContext().getMimeType(name));
        response.setHeader("Content-Disposition", "attachment;filename="+name);
        //想要保存的目标文件的目录下
        String path=request.getSession().getServletContext().getRealPath("/download/"+name);
        File files = new File(path);
        if (files.exists()){
            InputStream input = new FileInputStream(path);
            OutputStream output = response.getOutputStream();
            int len=0;
            byte[] buff=new byte[1024*8];
            while ((len = input.read(buff)) > -1) {
                output.write(buff, 0, len);
            }
            input.close();
            output.close();
            response.setCharacterEncoding("utf-8");
            response.getWriter().print("upload success!!");
            input.close();
            output.close();
            response.sendRedirect("http://localhost:8080/login/LookFileServlet");
        }
        else{
            System.out.println("文件不存在");
            response.sendRedirect("http://localhost:8080/login/fileManager/fileDown.jsp");
        }

    }

}