/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sale;

import loginRegister.LoginBean;
import sale.SaleBean;

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
@WebServlet(name="AddSaleServlet")
public class AddSaleServlet extends HttpServlet {
    public void wrong4(){
        String msg="无该员工，添加失败！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void right(){
        String msg="填写信息合格，添加成功！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    public void wrong(){
        String msg="信息不能为空！";
        int type=JOptionPane.YES_NO_CANCEL_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null, msg, title, type);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String sell_sname=request.getParameter("sell_sname");
        String sell_amount=request.getParameter("sell_amount");
        String sell_produce=request.getParameter("sell_produce");
        String sell_date=request.getParameter("year")+"-"+request.getParameter("mouth")+"-"+request.getParameter("day");
        String sell_profit=request.getParameter("sell_profit");
        String sell_mark=request.getParameter("sell_mark");
        if(sell_sname.length()==0||sell_amount.length()==0||sell_date.length()==0||sell_mark.length()==0||sell_profit.length()==0||sell_produce.length()==0){
            wrong();
            response.sendRedirect("http://localhost:8080/login/salepage/addsell.jsp");
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
            Integer amount = Integer.parseInt(sell_amount);
            Integer price = Integer.parseInt(sell_profit);
            String sql1="select * from user where sname='"+sell_sname+"'and name='"+userName+"'";
            rs=stmt.executeQuery(sql1);
            if(rs.next()){
                String sql2 = "insert into sell(sell_amount,sell_produce,sell_date,sell_profit,sell_mark,sell_name,sell_sname) " +
                        "values("+amount+",'"+sell_produce+"','"+sell_date+"'," +
                        " "+price+",'"+sell_mark+"','"+userName+"','"+sell_sname+"')";
                stmt.executeUpdate(sql2);
                String sql3 = "select * from sell where sell_name='" + userName + "'";
                rs = stmt.executeQuery(sql3);
                ArrayList datelists = null;
                datelists = new ArrayList();
                while (rs.next()) {
                    SaleBean dd = new SaleBean();
                    dd.setSell_id(String.valueOf(rs.getInt("sell_id")));
                    dd.setSell_amount(String.valueOf(rs.getInt("sell_amount")));
                    dd.setSell_produce(rs.getString("sell_produce"));
                    dd.setSell_date(rs.getString("sell_date"));
                    dd.setSell_mark(rs.getString("sell_mark"));
                    dd.setSell_profit(String.valueOf(rs.getInt("sell_profit")));
                    datelists.add(dd);
                    session.setAttribute("datelists", datelists);
                }
                rs.close();
                stmt.close();
                con.close();
                right();
                response.sendRedirect("http://localhost:8080/login/salepage/sale.jsp");
            }
            else {
                wrong4();
                response.sendRedirect("http://localhost:8080/login/salepage/addsell.jsp");
            }
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