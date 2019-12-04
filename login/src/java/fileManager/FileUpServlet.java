/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fileManager;
import fileManager.LookFileBean;
import loginRegister.LoginBean;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@MultipartConfig
public class FileUpServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Part part = request.getPart("file");
        String name = part.getSubmittedFileName();
        //想要保存的目标文件的目录下
        String tagDir=request.getSession().getServletContext().getRealPath("/file");
        System.out.println(tagDir);
        //避免文件名重复使用uuid来避免,产生一个随机的uuid字符
        String path=tagDir+"\\"+name;
        System.out.println(path);
        File files = new File(path);
        if (files.exists()){
            System.out.println("文件已存在");
            response.sendRedirect("http://localhost:8080/login/fileManager/fileUp.jsp");
        }
        else{
            InputStream input=part.getInputStream();
            OutputStream output=new FileOutputStream(new File(tagDir,name));
            int len=0;
            byte[] buff=new byte[1024*8];
            while ((len = input.read(buff)) > -1) {
                output.write(buff, 0, len);
            }
            input.close();
            output.close();
            response.setCharacterEncoding("utf-8");
            response.getWriter().print("upload success!!");
            try {
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("org.h2.Driver");
                String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
                con= DriverManager.getConnection(url,"root","root");
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
                String sql2="insert into file"+"(sname,name,size,filepath)"+"values("+"'"+userName+"'"+","+"'"+name+"'"+","+"'"+files.length()+"'"+","+"'"+path+"'"+")";
                stmt.executeUpdate(sql2);
                String sql3="select * from file where sname='"+userName+"'";
                rs=stmt.executeQuery(sql3);
                ArrayList friendslist=null;
                friendslist=new ArrayList();
                while(rs.next()){
                    LookFileBean ff=new LookFileBean();
                    ff.setName(rs.getString("name"));
                    ff.setSize(rs.getString("size"));
                    ff.setFilepath(rs.getString("filepath"));
                    friendslist.add(ff);
                    session.setAttribute("fileslist", friendslist);
                }
                rs.close();
                stmt.close();
                con.close();
                response.sendRedirect("http://localhost:8080/login/fileManager/fileList.jsp");
            }catch(Exception e){
                e.printStackTrace();
            }
            input.close();
            output.close();
        }

    }

}