package EmpBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.*;

public class CustTag2 extends BodyTagSupport{

	public int doEndTag() throws JspException
	{
		JspWriter js=pageContext.getOut();
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			String sql="select * from emp1";			
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			js.println("<html>");
			js.println("<body>");
			js.println("<table border=\"10\">");
			
			while(rs.next())
			{
				js.println("<tr>");
				js.println("<td>");
				js.println(rs.getInt(1));
				js.println("</td>");
				js.println("<td>");
				js.println(rs.getString(2));
				js.println("</td>");
				js.println("<td>");
				js.println(rs.getString(3));
				js.println("</td>");
				js.println("</tr>");
				
			}
			js.println("</table>");
			js.println("</body>");
			js.println("</html>");
			
			
		}
		
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_BODY;
		
		
	}
	
	
}
