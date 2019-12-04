import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.EmptyStackException;

/**
 * @author 黎志雄
 * 创建于2019-2-18
 *
 * Jakarta EE 课程
 */
@WebServlet(urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException {


     try{
         // 告诉浏览器，响应数据的数据格式与字符编码。否则会乱码。
        response.setContentType("text/html;charset=UTF-8");
        request.getSession().invalidate();
        response.getWriter().print("<script>alert(' 退出成功'); window.location='login.jsp' </script>");
        }catch(NumberFormatException | IndexOutOfBoundsException e1) {
        System.out.println("数字格式异常或者数组越界异常");

         }catch(ArithmeticException e2) {
        System.out.println("算术异常");
        }catch(EmptyStackException e3) {
         System.out.println("空指针异常");
        }catch(Exception e4) {
         System.out.println("异常");
         }
    }
}