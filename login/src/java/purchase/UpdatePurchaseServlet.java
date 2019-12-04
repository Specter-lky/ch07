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
@WebServlet(name = "UpdatePurchaseServlet")
public class UpdatePurchaseServlet extends HttpServlet {
    public void wrong(){
        String msg="信息不能为空！";
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
        String orderid=request.getParameter("orderid");
        String supplier=request.getParameter("supplier");
        String phone=request.getParameter("phone");
        String pername=request.getParameter("pername");
        String proname=request.getParameter("proname");
        String amount=request.getParameter("amount");
        String price=request.getParameter("price");
        if(orderid.length()==0||supplier.length()==0||phone.length()==0||pername.length()==0||proname.length()==0||amount.length()==0||price.length()==0){
            wrong();
            response.sendRedirect("http://localhost:8080/login/firstpage/update.jsp");
        }
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
            Integer id = Integer.parseInt(orderid);
            Integer amounts = Integer.parseInt(amount);
            Integer prices = Integer.parseInt(price);
            String sql1="select * from purchase where id="+id+" and name='"+userName+"'";
            rs=stmt.executeQuery(sql1);
            if(rs.next()){
                String sql2="update purchase set supplier='"+supplier+"',phone='"+phone+"',pername='"+pername+"',proname='"+proname+"',amount="+amounts+",price="+prices+" where id="+id+" and name='"+userName+"'";
                stmt.executeUpdate(sql2);
                String sql3="select * from purchase where name='"+userName+"'";
                rs=stmt.executeQuery(sql3);
                ArrayList datelist=new ArrayList();
                while(rs.next()){
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