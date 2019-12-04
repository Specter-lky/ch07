/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fileManager;

import fileManager.LookFileBean;
import loginRegister.LoginBean;

import javax.servlet.ServletException;
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

/**
 *
 * @author Administrator
 */
public class LookFileServlet extends HttpServlet {
    public void wrong1(){
        String msg="不允许有空，失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
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
                String sql1="select * from file where sname='"+userName+"'";
                rs=stmt.executeQuery(sql1);
                ArrayList friendslist=null;
                if((ArrayList)session.getAttribute("fileslist")==null){
                    friendslist=new ArrayList();
                    while(rs.next()){
                        LookFileBean ff=new LookFileBean();
                        ff.setName(rs.getString("name"));
                        ff.setSize(rs.getString("size"));
                        ff.setFilepath(rs.getString("filepath"));
                        friendslist.add(ff);
                        session.setAttribute("fileslist", friendslist);
                     }
                }
                rs.close();
                stmt.close();
                con.close();
                response.sendRedirect("http://localhost:8080/login/fileManager/fileList.jsp");
            }catch(Exception e){
                e.printStackTrace();
            }
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

}