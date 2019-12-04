package sale;

import loginRegister.LoginBean;
import sale.SaleBean;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@WebServlet(name="LookSaleServlet")
public class LookSaleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
            String sql="select * from sell where sell_name='"+userName+"'";
            rs=stmt.executeQuery(sql);
            ArrayList datelists=null;
            datelists=new ArrayList();
            session.setAttribute("datelists", datelists);
            while(rs.next()){
                SaleBean dd=new SaleBean();
                dd.setSell_id(String.valueOf(rs.getInt("sell_id")));
                dd.setSell_amount(String.valueOf(rs.getInt("sell_amount")));
                dd.setSell_produce(rs.getString("sell_produce"));
                dd.setSell_date(rs.getString("sell_date"));
                dd.setSell_profit(String.valueOf(rs.getInt("sell_profit")));
                dd.setSell_mark(rs.getString("sell_mark"));
                datelists.add(dd);
                session.setAttribute("datelists", datelists);
            }
            rs.close();
            stmt.close();
            con.close();
            response.sendRedirect("http://localhost:8080/login/salepage/sale.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}
