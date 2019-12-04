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

/**
 *
 * @author Administrator
 */
public class LookMessageServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String userName=request.getParameter("userName");
        try{
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
            con=DriverManager.getConnection(url,"root","root");
            stmt=con.createStatement();
            String sql="select * from user where sname='"+userName+"'";
            rs=stmt.executeQuery(sql);
            LookMessageBean mm=new LookMessageBean();
            while(rs.next()){
                mm.setName(rs.getString("username"));
                mm.setSex(rs.getString("sex"));
                mm.setBirth(rs.getString("birth"));
                mm.setNation(rs.getString("nation"));
                mm.setEdu(rs.getString("edu"));
                mm.setWork(rs.getString("work"));
                mm.setPhone(rs.getString("phone"));
                mm.setPlace(rs.getString("place"));
                mm.setEmail(rs.getString("email"));
            }
            HttpSession session=request.getSession();
            ArrayList wordlist=wordlist=new ArrayList();
            wordlist.add(mm);
            session.setAttribute("wordlist", wordlist);
            if(mm.getPlace().equals("未绑定"))session.setAttribute("cz","绑定莞工账号");
            else session.setAttribute("cz","解除绑定");
            session.setAttribute("user",userName);
            rs.close();
            stmt.close();
            con.close();
            response.sendRedirect("http://localhost:8080/login/lookMessage/lookMessage.jsp");
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
