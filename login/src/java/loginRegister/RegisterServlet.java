/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package loginRegister;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Administrator
 */
public class RegisterServlet extends HttpServlet {
    public void wrong1(){
        String msg="不允许有空，注册失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong2(){
        String msg="两次密码不同，注册失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong3(){
        String msg="用户名已存在，注册失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void right(){
        String msg="注册信息合格，注册成功！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
        String password1=new String(request.getParameter("password1").getBytes("ISO-8859-1"),"UTF-8");
        String password2=new String(request.getParameter("password2").getBytes("ISO-8859-1"),"UTF-8");
        String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
        String sex=new String(request.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8");
        String birth=new String(request.getParameter("date").getBytes("ISO-8859-1"),"UTF-8");
        String edu=new String(request.getParameter("edu").getBytes("ISO-8859-1"),"UTF-8");
        String work=new String(request.getParameter("work").getBytes("ISO-8859-1"),"UTF-8");
        String phone=new String(request.getParameter("phone").getBytes("ISO-8859-1"),"UTF-8");
        String place=new String(request.getParameter("place").getBytes("ISO-8859-1"),"UTF-8");
        String email=new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8");
        if(userName.length()==0||password1.length()==0||password2.length()==0||name.length()==0||phone.length()==0||email.length()==0){
            wrong1();
            response.sendRedirect("http://localhost:8080/login/register/register.jsp");
        }else if(!(password1.equals(password2))){
            wrong2();
            response.sendRedirect("http://localhost:8080/login/register/register.jsp");
        }else{
            try{
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("org.h2.Driver");
                String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
                con=DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
                String sql1="select * from manage where name='"+userName+"'";
                rs=stmt.executeQuery(sql1);
                if(rs.next()){
                    wrong3();
                    response.sendRedirect("http://localhost:8080/login/register/register.jsp");
                }else{
                    //String sql2="insert into user"+"(userName,password,name,sex,birth,nation,edu,work,phone,place,email)"+"values("+"'"+userName+"'"+","+"'"+password1+"'"+","+"'"+name+"'"+","+"'"+sex+"'"+","+"'"+birth+"'"+","+"'"+nation+"'"+","+"'"+edu+"'"+","+"'"+work+"'"+","+"'"+phone+"'"+","+"'"+place+"'"+","+"'"+email+"'"+")";
                    String sql2="insert into manage"+"(name,pass)"+"values("+"'"+userName+"'"+","+"'"+password1+"'"+")";
                    stmt.executeUpdate(sql2);
                }
                rs.close();
                stmt.close();
                con.close();
                right();
                response.sendRedirect("http://localhost:8080/login/login.jsp");
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
