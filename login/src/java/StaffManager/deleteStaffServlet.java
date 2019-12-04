package StaffManager;

import javax.servlet.ServletException;
import loginRegister.LoginBean;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@WebServlet(name = "deleteStaffServlet")
public class deleteStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
        try{
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
            con=DriverManager.getConnection(url,"root","root");
            stmt = con.createStatement();
            String userNames="";
            HttpSession session=request.getSession();
            ArrayList login=(ArrayList)session.getAttribute("login");
            if(login==null||login.size()==0){
                response.sendRedirect("http://localhost:8080/login/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userNames=nn.getUserName();
                }
            }
            String sql1="delete from date where sname='"+userName+"'";
            stmt.executeUpdate(sql1);
            String sql2="delete from file where sname='"+userName+"'";
            stmt.executeUpdate(sql2);
            String sql3="delete from friend where sname='"+userName+"'";
            stmt.executeUpdate(sql3);
            String sql="delete from user where sname='"+userName+"' and name='"+userNames+"'";
            stmt.executeUpdate(sql);
            stmt.close();
            con.close();
            response.sendRedirect("http://localhost:8080/login/Staff/staff.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
