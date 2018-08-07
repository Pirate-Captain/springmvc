/**
 * zhuyouliang
 * Created on 2017-12-08
 */

import org.apache.commons.lang.StringUtils;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/**
 * @author zhuyl<a href="mailto:zhuyouliangcn@gmail.com">zhu youliang</a>
 * @version $Id$
 */
public class MovieServlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        movieService(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        movieService(req, resp);
    }

    private void movieService(HttpServletRequest request, HttpServletResponse response) throws IOException {
        StringBuilder movieBuilder = new StringBuilder();
        String path = this.getServletContext().getRealPath("/") + "movie";
        File rootFile = new File(path);
        File[] movieFile = rootFile.listFiles();
        if (null != movieFile && movieFile.length > 0) {
            movieBuilder.append("<table>");
            for (File movie : movieFile) {
                movieBuilder.append("<tr><td><a href='" + request.getContextPath() + "/movie/" + movie.getName() + "'>" + movie.getName() + "</a></td></tr>");
            }
            movieBuilder.append("</table>");
        }
        String responseHtml = movieBuilder.toString();
        if ( "".equals(responseHtml) || 0 == responseHtml.length() ) {
            responseHtml = "没有电影";
        }
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        OutputStream outputStream = response.getOutputStream();
        outputStream.write(responseHtml.getBytes("UTF-8"));
    }
}
