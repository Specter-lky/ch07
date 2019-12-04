package StaffManager;

import loginRegister.LoginBean;
import lookMessage.LookMessageBean;

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

@WebServlet(name = "EditMessageServlet")
public class EditMessageServlet extends HttpServlet {
    public void wrong1() {
        String msg = "请输入要修改的人的姓名！";
        int type = JOptionPane.YES_NO_CANCEL_OPTION;
        String title = "信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }

    public void wrong2() {
        String msg = "该员工不存在！";
        int type = JOptionPane.YES_NO_CANCEL_OPTION;
        String title = "信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
        String sex=new String(request.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8");
        String edu=new String(request.getParameter("edu").getBytes("ISO-8859-1"),"UTF-8");
        String work=new String(request.getParameter("work").getBytes("ISO-8859-1"),"UTF-8");
        String phone=new String(request.getParameter("phone").getBytes("ISO-8859-1"),"UTF-8");
        String email=new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8");
        if(userName.length()==0||phone.length()==0||email.length()==0){
            wrong1();
            response.sendRedirect("http://localhost:8080/login/Staff/EditMessage.jsp");
        }else{
            try{
                Connection con=null;
                Statement stmt=null;
                Class.forName("org.h2.Driver");
                String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
                con=DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
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
                String sql="Update user set sex='"+sex+"',edu='"+edu+"',work='"+work+"',phone='"+phone+"',email='"+email+"' where sname='"+userName+"' and name='"+userNames+"'";
                stmt.executeUpdate(sql);
                stmt.close();
                con.close();
                response.sendRedirect("http://localhost:8080/login/Staff/staff.jsp");
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }
}
