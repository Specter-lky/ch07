/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lookMessage;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import loginRegister.LoginBean;

/**
 *
 * @author Administrator
 */
public class UpdatePasswordServlet extends HttpServlet {
    public void wrong1(){
        String msg="不允许有空，修改失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong2(){
        String msg="两次密码不同，修改失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong3(){
        String msg="原先密码错误，修改失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void right(){
        String msg="填写信息合格，修改成功！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String password1=new String(request.getParameter("password1").getBytes("ISO-8859-1"),"UTF-8");
        String password2=new String(request.getParameter("password2").getBytes("ISO-8859-1"),"UTF-8");
        String password=new String(request.getParameter("pass").getBytes("ISO-8859-1"),"UTF-8");
        if(password1.length()==0||password2.length()==0||password.length()==0){
            wrong1();
            response.sendRedirect("http://localhost:8080/login/lookMessage/updatePassword.jsp");
        }else if(!(password1.equals(password2))){
            wrong2();
            response.sendRedirect("http://localhost:8080/login/lookMessage/updatePassword.jsp");
        }else{
            try{
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("org.h2.Driver");
                String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
                con=DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
                String userName="";
                String check="";
                HttpSession session=request.getSession();
                ArrayList login=(ArrayList)session.getAttribute("login");
               if(login==null||login.size()==0){
                    response.sendRedirect("http://localhost:8080/login/login.jsp");
               }else{
                    for(int i=login.size()-1;i>=0;i--){
                         LoginBean nn=(LoginBean)login.get(i);
                         userName=nn.getUserName();
                    }
                }
               String sql="select * from user where sname='"+userName+"'";
               rs=stmt.executeQuery(sql);
               if(rs.next()){
                   check=rs.getString("pass");
                   if(!password.equals(check)){
                       wrong3();
                       response.sendRedirect("http://localhost:8080/login/lookMessage/updatePassword.jsp");
                   }
                   else{
                       String sql1="Update user set pass='"+password1+"' where sname='"+userName+"'";
                       stmt.executeUpdate(sql1);
                       String sql2="select * from user where sname='"+userName+"'";
                       rs=stmt.executeQuery(sql2);
                       LoginBean nn=new LoginBean();
                       nn.setPassword(password1);
                       ArrayList wordlist=null;
                       wordlist=new ArrayList();
                       wordlist.add(nn);
                       session.setAttribute("login", login);
                       rs.close();
                       stmt.close();
                       con.close();
                       right();
                       response.sendRedirect("http://localhost:8080/login/lookMessage/lookMessage.jsp");
                   }
               }
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

}
