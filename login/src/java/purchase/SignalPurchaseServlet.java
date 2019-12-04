package purchase;

import loginRegister.LoginBean;

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

@WebServlet(name = "SignalPurchaseServlet")
public class SignalPurchaseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            String proname=request.getParameter("proname");
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
            con=DriverManager.getConnection(url,"root","root");
            stmt=con.createStatement();
            String userName="";
            HttpSession session=request.getSession();
            ArrayList login=(ArrayList)session.getAttribute("login");
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=UTF-8");
            if(login==null||login.size()==0){
                response.sendRedirect("http://localhost:8080/login/login.jsp");
            }else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userName=nn.getUserName();
                }
            }
            if(proname.equals("其他")){
                String sql1 = "select * from purchase where name='" + userName + "' " +
                        "and proname not in('塑料','橡胶','油漆','涂料','陶瓷')";
                rs = stmt.executeQuery(sql1);
                ArrayList datelist = null;
                datelist = new ArrayList();
                session.setAttribute("datelist", datelist);
                while (rs.next()) {
                    GetBean dd = new GetBean();
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
                response.sendRedirect("http://localhost:8080/login/firstpage/second.jsp");
            }
            else {
                String sql = "select * from purchase where name='" + userName + "' and proname='" + proname + "'";
                rs = stmt.executeQuery(sql);
                ArrayList datelist = null;
                datelist = new ArrayList();
                session.setAttribute("datelist", datelist);
                while (rs.next()) {
                    GetBean dd = new GetBean();
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
                response.sendRedirect("http://localhost:8080/login/firstpage/second.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}
