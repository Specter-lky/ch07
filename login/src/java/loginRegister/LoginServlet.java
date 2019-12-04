/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package loginRegister;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Administrator
 */
public class LoginServlet extends HttpServlet {
    public void wrong1(){//对话框提示信息
        String msg="用户名不能为空！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong2(){
        String msg="用户密码不能为空，登录失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong3(){
        String msg="该用户尚未注册，登录失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong4(){
        String msg="用户密码不正确，登录失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String userName=new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
        String password=new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
        if(userName.equals("")){
            wrong1();
            response.sendRedirect("http://localhost:8080/login/login.jsp");
        }else if(password.equals("")){
            wrong2();
            response.sendRedirect("http://localhost:8080/login/login.jsp");
        }else{
            try{
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null,rc=null;
                Class.forName("org.h2.Driver");
                String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
                con=DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
                /*stmt.executeUpdate(
                        "CREATE TABLE IF NOT EXISTS `user` (" +
                                "  `name` varchar(100) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  `name` varchar(100) NOT NULL," +
                                "  PRIMARY KEY (`name`)" +
                                ");"
                );
                stmt.executeUpdate(
                        "CREATE TABLE IF NOT EXISTS `purchase` (" +
                                "  `id` int(11) unsigned NOT NULL," +
                                "  `name` varchar(100) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  PRIMARY KEY (`id`)," +
                                " FOREIGN KEY ('name') REFERENCES 'user'('name')" +
                                ");"
                );
                stmt.executeUpdate(
                        "CREATE TABLE IF NOT EXISTS `sale` (" +
                                "  `id` int(11) unsigned NOT NULL," +
                                "  `name` varchar(100) NOT NULL," +
                                "  `sex` varchar(11) NOT NULL," +
                                "  PRIMARY KEY (`id`)," +
                                " FOREIGN KEY ('name') REFERENCES 'user'('name')" +
                                ");"
                );*/
                String sql2="select * from manage where name='"+userName+"'and pass='"+password+"'";
                rs=stmt.executeQuery(sql2);
                int N=0;
                int P=0;
                while(rs.next()){
                    if(userName.equals(rs.getString("name"))){
                        N=111111;
                        if(password.equals(rs.getString("pass"))){
                            P=111111;
                            LoginBean nn=new LoginBean();//实例化保存个人信息的JavaBean
                            nn.setUserName(userName);//保存用户名
                            nn.setPassword(password);//保存密码
                            HttpSession session=request.getSession();//获取session对象
                            ArrayList login=new ArrayList();//实例化列表对象
                            login.add(nn);//把个人信息保存到列表中
                            session.setAttribute("login", login);//把列表保存到session对象中，以便在别的页面中获取个人信息
                            response.sendRedirect("http://localhost:8080/login/firstpage/first.jsp");
                        }else{

                        }
                    }else{
                        N++;
                    }
                }
                if(N<111111){
                    int n=0;
                    int p=0;
                    String sql="select * from user where sname='"+userName+"'";
                    rs=stmt.executeQuery(sql);
                    while(rs.next()){
                        if(userName.equals(rs.getString("sname"))){
                            n=111111;
                            if(password.equals(rs.getString("pass"))){
                                p=111111;
                                LoginBean nn=new LoginBean();//实例化保存个人信息的JavaBean
                                nn.setUserName(userName);//保存用户名
                                nn.setPassword(password);//保存密码
                                HttpSession session=request.getSession();//获取session对象
                                ArrayList login=new ArrayList();//实例化列表对象
                                login.add(nn);//把个人信息保存到列表中
                                session.setAttribute("login", login);//把列表保存到session对象中，以便在别的页面中获取个人信息
                                response.sendRedirect("http://localhost:8080/login/main/main.jsp");
                            }else{

                            }
                        }else{
                            n++;
                        }
                    }
                    if(n<111111){
                        wrong3();
                        response.sendRedirect("http://localhost:8080/login/login.jsp");
                    }else if(p<111111){
                        wrong4();
                        response.sendRedirect("http://localhost:8080/login/login.jsp");
                    }
                }
                else if(P<111111){
                    wrong4();
                    response.sendRedirect("http://localhost:8080/login/login.jsp");
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
