package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write(" <link rel=\"stylesheet\" href=\"\r\n");
      out.write(" css/search.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/navbar.css\">\r\n");
      out.write(" <link rel=\"stylesheet\" href=\"assets/css/search.css\">\r\n");
      out.write(" \r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets/css/toogle.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" <link rel=\"stylesheet\" href=\"assets/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"topnav\" id=\"myTopnav\">\r\n");
      out.write("  <a href=\"index.jsp\">Mainpage</a>\r\n");
      out.write("  <a href=\"signup.jsp\">Login/Signup</a>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  <a href=\"javascript:void(0);\" class=\"icon\" onclick=\"myFunction()\">\r\n");
      out.write("    <i class=\"fa fa-bars\">++</i>\r\n");
      out.write("  </a>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"bg-image img1\"></div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"bg-text\">\r\n");
      out.write("<h2><b>Search By:</b>\r\n");
      out.write("<br>\r\n");
      out.write("<h4> Blog Name || Categories</h4>\r\n");
      out.write("<br>\r\n");
      out.write("<form action=\"search.jsp\"  >\r\n");
      out.write("\r\n");
      out.write("<input type=\"text\" placeholder=\"Search\" name=\"msgindex\">\r\n");
      out.write("<input type=\"submit\" value=\"submit\">\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<script>\r\n");
      out.write("function myFunction() {\r\n");
      out.write("  var x = document.getElementById(\"myTopnav\");\r\n");
      out.write("  if (x.className === \"topnav\") {\r\n");
      out.write("    x.className += \" responsive\";\r\n");
      out.write("  } else {\r\n");
      out.write("    x.className = \"topnav\";\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("                                    \r\n");
      out.write(" ");


String msgindex=request.getParameter("msgindex");
//out.print(msgindex);
String privacy="public";
       Class.forName("com.mysql.jdbc.Driver");
             
             Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
             
 //            String query = "Select categories from content where categories='"+msgindex+"' and privary=public ";
  
              Statement st=con.createStatement();
  ResultSet rs=null;
  
   
rs=st.executeQuery("Select * from content where categories LIKE '%"+msgindex+"%' AND privacy='"+privacy+"' OR blogname LIKE '%"+msgindex+"%' AND privacy='"+privacy+"'");





          int i=1;
    while (rs.next()) {
          
           
        
  
      out.write("\r\n");
      out.write("       \r\n");
      out.write("        \r\n");
      out.write("<section class=\"content16 cid-siDU9c22MR\" id=\"content16-9\">\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write(" <div class=\"row justify-content-center\">\r\n");
      out.write("            <div class=\"col-12 col-md-12\">\r\n");
      out.write("                <div class=\"mbr-section-head align-center mb-4\">\r\n");
      out.write("                   \r\n");
      out.write("                    \r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"bootstrap-accordion_1\" class=\"panel-group accordionStyles accordion\" role=\"tablist\" aria-multiselectable=\"true\">\r\n");
      out.write("                    <div class=\"card mb-3\">\r\n");
      out.write("                        <div class=\"card-header\" role=\"tab\" id=\"headingOne\">\r\n");
      out.write("                            <a role=\"button\" class=\"panel-title collapsed\" data-toggle=\"collapse\" data-core=\"\" href=\"#collapse1_");
      out.print(i);
      out.write("\" aria-expanded=\"false\" aria-controls=\"collapse1\">\r\n");
      out.write("                                <h6 class=\"panel-title-edit mbr-fonts-style mb-0 display-7\"><strong>\r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                        ");
      out.print(rs.getString("blogname"));
      out.write("\r\n");
      out.write("                                                                               \r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                    </strong>\r\n");
      out.write("                                </h6>\r\n");
      out.write("                                <span class=\"sign mbr-iconfont mbri-arrow-down\"></span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div id=\"collapse1_");
      out.print(i);
      out.write("\" class=\"panel-collapse noScroll collapse\" role=\"tabpanel\" aria-labelledby=\"headingOne\" data-parent=\"#bootstrap-accordion_1\">\r\n");
      out.write("                            <div class=\"panel-body\">\r\n");
      out.write("                                <p>  ");
      out.print(rs.getString("blog"));
      out.write("</p>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <!-- You can use Open Graph tags to customize link previews.\r\n");
      out.write("Learn more: https://developers.facebook.com/docs/sharing/webmasters -->\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                                               </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("           \r\n");
      out.write("\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("     ");

    
i++;
}
   
     
     
      out.write("\r\n");
      out.write("          <section style=\"background-color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Helvetica Neue', Arial, sans-serif; color:#aaa; font-size:12px; padding: 0; align-items: center; display: flex;\"><a href=\"https://mobirise.site/n\" style=\"flex: 1 1; height: 3rem; padding-left: 1rem;\"></a><p style=\"flex: 0 0 auto; margin:0; padding-right:1rem;\"> <a href=\"https://mobirise.site/z\" style=\"color:#aaa;\"></a></p></section><script src=\"assets/web/assets/jquery/jquery.min.js\"></script>  <script src=\"assets/popper/popper.min.js\"></script>  <script src=\"assets/tether/tether.min.js\"></script>  <script src=\"assets/bootstrap/js/bootstrap.min.js\"></script>  <script src=\"assets/smoothscroll/smooth-scroll.js\"></script>  <script src=\"assets/parallax/jarallax.min.js\"></script>  <script src=\"assets/mbr-switch-arrow/mbr-switch-arrow.js\"></script>  <script src=\"assets/dropdown/js/nav-dropdown.js\"></script>  <script src=\"assets/dropdown/js/navbar-dropdown.js\"></script>  <script src=\"assets/touchswipe/jquery.touch-swipe.min.js\"></script>  <script src=\"assets/theme/js/script.js\"></script>  <script src=\"assets/formoid/formoid.min.js\"></script>  \r\n");
      out.write("                                                                                \r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
