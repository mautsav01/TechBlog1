package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SHARE_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Your Website Title</title>\n");
      out.write("<!-- You can use Open Graph tags to customize link previews.\n");
      out.write("Learn more: https://developers.facebook.com/docs/sharing/webmasters -->\n");
      out.write("<meta property=\"og:url\"           content=\"https://www.your-domain.com/your-page.html\" />\n");
      out.write("<meta property=\"og:type\"          content=\"website\" />\n");
      out.write("<meta property=\"og:title\"         content=\"Your Website Title\" />\n");
      out.write("<meta property=\"og:description\"   content=\"Your description\" />\n");
      out.write("<meta property=\"og:image\"         content=\"https://www.your-domain.com/path/image.jpg\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!-- Load Facebook SDK for JavaScript -->\n");
      out.write("<div id=\"fb-root\"></div>\n");
      out.write("<script>(function(d, s, id) {\n");
      out.write("var js, fjs = d.getElementsByTagName(s)[0];\n");
      out.write("if (d.getElementById(id)) return;\n");
      out.write("js = d.createElement(s); js.id = id;\n");
      out.write("js.src = \"https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0\";\n");
      out.write("fjs.parentNode.insertBefore(js, fjs);\n");
      out.write("}(document, 'script', 'facebook-jssdk'));</script>\n");
      out.write("\n");
      out.write("<!-- Your share button code -->\n");
      out.write("<div class=\"fb-share-button\" \n");
      out.write("data-href=\"http://localhost:8084/TechBlog1/\" \n");
      out.write("data-layout=\"button_count\"> \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
