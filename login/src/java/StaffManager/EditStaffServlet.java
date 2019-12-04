package StaffManager;

import lookMessage.LookMessageBean;
import loginRegister.LoginBean;
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

@WebServlet(name = "EditStaffServlet")
public class EditStaffServlet extends HttpServlet {
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
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userNames = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
        if (userNames.length() == 0) {
            wrong1();
            response.sendRedirect("http://localhost:8080/login/Staff/CheckStaff.jsp");
        } else {
            try {
                Connection con = null;
                Statement stmt = null;
                ResultSet rs = null;
                Class.forName("org.h2.Driver");
                String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
                con=DriverManager.getConnection(url,"root","root");
                stmt = con.createStatement();
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
                String sql1 = "select * from user where sname='" + userNames + "' and name='"+userName+"'";
                rs = stmt.executeQuery(sql1);
                rs.last();
                int k = rs.getRow();
                if (k < 1) {
                    wrong2();
                    response.sendRedirect("http://localhost:8080/login/Staff/EditMessage.jsp");
                } else {
                    LookMessageBean mm = new LookMessageBean();
                    rs = stmt.executeQuery(sql1);
                    while (rs.next()) {
                        mm.setUserName(rs.getString("sname"));
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
                    session.setAttribute("message", mm);
                }
                rs.close();
                stmt.close();
                con.close();
                response.sendRedirect("http://localhost:8080/login/Staff/Edit.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
