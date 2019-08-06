<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<body>
<table>
<select name="txt"> 
<% 
try
{

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
	String sql="select eid from emp1";
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		%>
		
		<option><%=rs.getInt(1)%>></option>
	<%
	}

	
}catch(Exception e)
{
	e.printStackTrace();
	
}

%>

</select>
</table>
</body>
</html>