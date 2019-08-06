package EmpBean;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport
;
public class CustomTagDemo extends TagSupport {

	public int doStartTag() throws JspException
	{
		JspWriter out=pageContext.getOut();
		try {
			out.println("<html>");
			out.println("<body>");
			out.println("<pre>Hello Custom Tag</pre>");
			out.println("<table border=\"34\">");
			
			out.println("<tr><td>Sid<td>");
			out.println("<td><input type=\"text\" name=\"sid\">");
			out.println("</tr>");

			out.println("<tr><td>Sname<td>");
			out.println("<td><input type=\"text\" name=\"sname\">");
			out.println("</tr>");

			out.println("<tr><td>Saddress<td>");
			out.println("<td><input type=\"text\" name=\"saddress\">");
			out.println("</tr>");

			out.println("<tr><td>&nbsp;<td>");
			out.println("<td><input type=\"submit\" value=\"submit\">");
			out.println("</tr>");

			out.println("</table>");
			out.println("</body>");
			out.println("</html>");
			
				}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	
}
