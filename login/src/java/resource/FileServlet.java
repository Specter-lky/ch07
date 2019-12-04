/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

import fileManager.LookDownBean;

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
public class FileServlet extends HttpServlet {
    public void wrong1(){
        String msg="不允许有空，注册失败！";
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
                String sql1="select * from files";
                rs=stmt.executeQuery(sql1);
                ArrayList friendslist=null;
                HttpSession session=request.getSession();
                session.setAttribute("sdatelist", friendslist);
                friendslist=new ArrayList();
            while(rs.next()){
                LookDownBean ff=new LookDownBean();
                ff.setName(rs.getString("name"));
                ff.setSize(rs.getString("size"));
                ff.setMark(rs.getString("mark"));
                friendslist.add(ff);
                session.setAttribute("sdatelist", friendslist);
            }
                rs.close();
                stmt.close();
                con.close();
                response.sendRedirect("http://localhost:8080/login/document/fileresource.jsp");
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