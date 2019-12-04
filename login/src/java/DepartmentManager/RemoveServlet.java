package DepartmentManager;

import loginRegister.LoginBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@WebServlet(name = "RemoveServlet")
public class RemoveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName=request.getParameter("userName");
        String wz=(String) request.getSession().getAttribute("wz");
        try{
            Connection con=null;
            Statement stmt=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
            con=DriverManager.getConnection(url,"root","root");
            stmt=con.createStatement();
            String userNames="";
            ArrayList login=(ArrayList)request.getSession().getAttribute("login");
            if(login==null||login.size()==0){
                response.sendRedirect("http://localhost:8080/login/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userNames=nn.getUserName();
                }
            }
            String sql="update user set work='无' where sname='"+userName+"' and name='"+userNames+"'";
            stmt.executeUpdate(sql);
            stmt.close();
            con.close();
            response.sendRedirect("http://localhost:8080/login/department/"+wz+".jsp");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
