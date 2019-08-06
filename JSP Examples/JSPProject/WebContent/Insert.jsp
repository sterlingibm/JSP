<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<% 

int veid=Integer.parseInt(request.getParameter("eid"));
String vename=request.getParameter("ename");
String veaddress=request.getParameter("eaddress");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
	String sql="insert into emp1 values (?,?)";
	PreparedStatement st=con.prepareStatement(sql);
	st.setInt(1, veid);
	st.setString(2, vename);
	st.setString(3, veaddress);

	int n=st.executeUpdate();
	if(n>0)
	{
		%>
		<<script type="text/javascript">

		alert("Done");
		</script>
<%	}
	else
	{
	%>
<<script type="text/javascript">

		alert("Not Done");
		</script>
		<% 
		}
	con.close();
}
catch(Exception e)
{
	%>
	<<script type="text/javascript">

		alert("Not Done");
		</script>
	
	<% }
%>
