package DepartmentManager;
import loginRegister.LoginBean;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@WebServlet(name = "AddServlet")
public class AddServlet extends HttpServlet {
    public void wrong1() {
        String msg = "请输入要添加的人的姓名！";
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
    public void wrong3() {
        String msg = "该员工已加入此部门！";
        int type = JOptionPane.YES_NO_CANCEL_OPTION;
        String title = "信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong4() {
        String msg = "该员工已加入别的部门！";
        int type = JOptionPane.YES_NO_CANCEL_OPTION;
        String title = "信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void right(){
        String msg="添加成功！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
        String bumen=(String) request.getSession().getAttribute("bumen");
        String wz=(String) request.getSession().getAttribute("wz");
        if(userName==null){
            wrong1();
            response.sendRedirect("http://localhost:8080/login/department/"+wz+".jsp");
        }
        else{
            try{
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
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
                String sql1="select work from user where sname='"+userName+"' and name='"+userNames+"'";
                rs=stmt.executeQuery(sql1);
                if(!rs.next()){
                    wrong2();
                    response.sendRedirect("http://localhost:8080/login/department/"+wz+".jsp");
                }
                else if(rs.getString("work").equals(bumen)){
                    wrong3();
                    response.sendRedirect("http://localhost:8080/login/department/"+wz+".jsp");
                }
                else if(!rs.getString("work").equals("无")){
                    wrong4();
                    response.sendRedirect("http://localhost:8080/login/department/"+wz+".jsp");
                }
                else {
                    String sql2 = "update user set work='"+bumen+"' where sname='" + userName + "' and name='"+userNames+"'";
                    stmt.executeUpdate(sql2);
                    right();
                }
                stmt.close();
                con.close();
                response.sendRedirect("http://localhost:8080/login/department/"+wz+".jsp");
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }
}
