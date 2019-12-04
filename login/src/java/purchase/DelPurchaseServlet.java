package purchase;/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import loginRegister.LoginBean;
import purchase.GetBean;

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

/**
 *
 * @author Administrator
 */
@WebServlet(name = "DelPurchaseServlet")
public class DelPurchaseServlet extends HttpServlet {
    public void wrong1(){
        String msg="请把日期填写完整，删除失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong2(){
        String msg="请确认日期填写正确，删除失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong3(){
        String msg="该日程不存在，删除失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void right(){
        String msg="删除成功！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String orderid=new String(request.getParameter("orderid").getBytes("ISO-8859-1"),"UTF-8");
        Integer id = Integer.parseInt(orderid);
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
            response.setContentType("text/html;charset=UTF-8");
            if(login==null||login.size()==0){
                response.sendRedirect("http://localhost:8080/login/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userName=nn.getUserName();
                }
            }
            String sql1="select * from purchase where id="+id+" and name='"+userName+"'";
            rs=stmt.executeQuery(sql1);
            if(rs.next()){
                String sql2="delete from purchase where id="+id+" and name='"+userName+"'";
                stmt.executeUpdate(sql2);
                String sql3="select * from purchase where name='"+userName+"'";
                rs=stmt.executeQuery(sql3);
                if(rs.next()){
                    ArrayList datelist=null;
                    datelist=new ArrayList();
                    GetBean dd=new GetBean();
                    dd.setOrderid(String.valueOf(rs.getInt("id")));
                    dd.setSupplier(rs.getString("supplier"));
                    dd.setPhone(rs.getString("phone"));
                    dd.setPername(rs.getString("pername"));
                    dd.setProname(rs.getString("proname"));
                    dd.setAmount(String.valueOf(rs.getInt("amount")));
                    dd.setPrice(String.valueOf(rs.getInt("price")));
                    datelist.add(dd);
                    session.setAttribute("datelist", datelist);
                    while(rs.next()){
                        dd=new GetBean();
                        dd.setOrderid(String.valueOf(rs.getInt("id")));
                        dd.setSupplier(rs.getString("supplier"));
                        dd.setPhone(rs.getString("phone"));
                        dd.setPername(rs.getString("pername"));
                        dd.setProname(rs.getString("proname"));
                        dd.setAmount(String.valueOf(rs.getInt("amount")));
                        dd.setPrice(String.valueOf(rs.getInt("price")));
                        datelist.add(dd);
                        session.setAttribute("datelist", datelist);
                    }
                }
                else{
                    ArrayList datelist=null;
                    session.setAttribute("datelist", datelist);
                }
                rs.close();
                stmt.close();
                con.close();
                right();
                response.sendRedirect("http://localhost:8080/login/firstpage/second.jsp");
            }
            rs.close();
            stmt.close();
            con.close();
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