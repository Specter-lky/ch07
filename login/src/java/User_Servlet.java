import loginRegister.LoginBean;
import user.Usering;
import user.HttpClient;
import user.PersonDTO;
import javax.json.bind.Jsonb;
import javax.json.bind.JsonbBuilder;
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

@WebServlet(name = "User_Servlet", urlPatterns = {"/dgut"})
public class User_Servlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession();
        response.getWriter().println("hello");
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        HttpClient http=new HttpClient();
        String strs=request.getParameter("token");
        PersonDTO p=new PersonDTO(strs,"javaee","b3b52e43ccfd","abx");
        Jsonb jsonb = JsonbBuilder.create();
        String st=jsonb.toJson(p);
        String s=http.postJson("https://cas.dgut.edu.cn/ssoapi/v2/checkToken",p);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().println(s);
        String json=http.postJson("https://cas.dgut.edu.cn/oauth/getUserInfo",s);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().println(json);
        Usering person=jsonb.fromJson(json, Usering.class);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        String name=person.getAname();
        try{
            Connection con=null;
            Statement stmt=null;
            ResultSet rs=null;
            Class.forName("org.h2.Driver");
            String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
            con= DriverManager.getConnection(url,"root","root");
            stmt=con.createStatement();
            String userName=null;
            ArrayList login=(ArrayList)session.getAttribute("login");
            if(login==null||login.size()==0){
                String sql="select * from user where place='"+name+"'";
                rs=stmt.executeQuery(sql);
                if(rs.next()){
                    LoginBean nn=new LoginBean();//实例化保存个人信息的JavaBean
                    nn.setUserName(rs.getString("sname"));//保存用户名
                    nn.setPassword(rs.getString("pass"));//保存密码
                    login=new ArrayList();//实例化列表对象
                    login.add(nn);//把个人信息保存到列表中
                    session.setAttribute("login", login);//把列表保存到session对象中，以便在别的页面中获取个人信息
                    response.sendRedirect("http://localhost:8080/login/main/main.jsp");
                }
                else{
                    response.sendRedirect("http://localhost:8080/login/login.jsp");
                }
            }
            else{
                for(int i=login.size()-1;i>=0;i--){
                    LoginBean nn=(LoginBean)login.get(i);
                    userName=nn.getUserName();
                }
                String sql1="select * from user where place='"+name+"'";
                rs=stmt.executeQuery(sql1);

                String bind=(String) request.getSession().getAttribute("bind");
                int type = JOptionPane.YES_NO_CANCEL_OPTION;
                String title = "信息提示";
                if(rs.next()){
                    bind="该账号已被绑定！";
                    JOptionPane.showMessageDialog(null, bind, title, type);
                    response.sendRedirect("https://cas.dgut.edu.cn/logout?callback=http://localhost:8080/login/main/bottom.jsp");
                }
                else {
                    bind="绑定成功！";
                    stmt.executeUpdate(
                            "update user set place='" + name + "' where sname='" + userName + "' "
                    );
                    JOptionPane.showMessageDialog(null, bind, title, type);
                }
                response.sendRedirect("http://localhost:8080/login/main/bottom.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
