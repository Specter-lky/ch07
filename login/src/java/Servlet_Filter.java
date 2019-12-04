import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "Servlet_Filter",urlPatterns = {"/dgut"})
public class Servlet_Filter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req1=(HttpServletRequest)req;
        HttpServletResponse resp1=(HttpServletResponse)resp;
        String str=req1.getParameter("token");
        if(str==null){
            resp1.sendRedirect("https://cas.dgut.edu.cn?appid=javaee");
        }
        else chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
