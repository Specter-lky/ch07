/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resource;

import fileManager.LookDownBean;
import fileManager.LookFileBean;
import loginRegister.LoginBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@MultipartConfig
public class UpServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String mark=new String(request.getParameter("mark").getBytes("ISO-8859-1"),"UTF-8");
        Part part = request.getPart("file");
        String name = part.getSubmittedFileName();
        //想要保存的目标文件的目录下
        String tagDir=request.getSession().getServletContext().getRealPath("/download");
        System.out.println(tagDir);
        //避免文件名重复使用uuid来避免,产生一个随机的uuid字符
        String path=tagDir+"\\"+name;
        System.out.println(path);
        File files = new File(path);
        if (files.exists()){
            System.out.println("文件名重复了");
            response.sendRedirect("http://localhost:8080/login/document/fileup.jsp");
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
            try {
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("org.h2.Driver");
                String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
                con= DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
                HttpSession session=request.getSession();
                String sql2="insert into files"+"(name,size,filepath,mark)"+"values("+"'"+name+"'"+","+"'"+files.length()+"'"+","+"'"+path+"'"+","+"'"+mark+"'"+")";
                stmt.executeUpdate(sql2);
                String sql3="select * from files";
                rs=stmt.executeQuery(sql3);
                ArrayList friendslist=null;
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
            input.close();
            output.close();
        }

    }

}