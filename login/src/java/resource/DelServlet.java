/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

import fileManager.LookDownBean;
import fileManager.LookFileBean;
import loginRegister.LoginBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Administrator
 */
public class DelServlet extends HttpServlet {
    public void wrong1(){
        String msg="请输入要删除的人的姓名！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong2(){
        String msg="此联系人不存在！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void right(){
        String msg="此联系人已成功删除！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
        if(name.length()==0){
            wrong1();
            response.sendRedirect("http://localhost:8080/login/document/fileresource.jsp");
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
                String sql1="select * from files where name='"+name+"'";
                rs=stmt.executeQuery(sql1);
                if(rs.next()){
                    File files = new File(rs.getString("filepath"));
                    files.delete();
                    String sql2="delete from files where name='"+name+"'";
                    stmt.executeUpdate(sql2);
                    String sql3="select * from files";
                    rs=stmt.executeQuery(sql3);
                    if(rs.next()){
                        ArrayList friendslist=null;
                        friendslist=new ArrayList();
                        LookDownBean ff=new LookDownBean();
                        ff.setName(rs.getString("name"));
                        ff.setSize(rs.getString("size"));
                        ff.setMark(rs.getString("mark"));
                        friendslist.add(ff);
                        session.setAttribute("sdatelist", friendslist);
                        while(rs.next()){
                            ff=new LookDownBean();
                            ff.setName(rs.getString("name"));
                            ff.setSize(rs.getString("size"));
                            ff.setMark(rs.getString("mark"));
                            friendslist.add(ff);
                            session.setAttribute("sdatelist", friendslist);
                        }
                   }
                    else{
                        ArrayList friendslist=null;
                        session.setAttribute("sdatelist", friendslist);
                    }
                }
                else{
                    wrong2();
                    response.sendRedirect("http://localhost:8080/login/document/fileresource.jsp");
                }
                rs.close();
                stmt.close();
                con.close();
                response.sendRedirect("http://localhost:8080/login/FileServlet");
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