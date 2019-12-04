import loginRegister.LoginBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@WebServlet(name = "UnboundServlet")
public class UnboundServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName=request.getParameter("userName");
        try{
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
            con= DriverManager.getConnection(url,"root","root");
            stmt=con.createStatement();
            stmt.executeUpdate(
                    "update user set place='未绑定' where sname='" + userName + "' "
            );
            HttpSession session=request.getSession();
            session.setAttribute("cz","绑定莞工账号");
            response.sendRedirect("https://cas.dgut.edu.cn/logout?callback=http://localhost:8080/login/main/bottom.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
