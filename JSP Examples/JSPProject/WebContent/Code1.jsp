<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<table border="">
<tr>
<td>Eid</td>
<td>Ename</td>
<td>Eaddress</td>
</tr>
<tr>
<%

try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
	String sql="insert into emp1 values (?,?,?)";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
	%>
	<tr>
	<td><%=rs.getInt(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	</tr>
	<%
	
	}
	
	con.close();
	
}
catch(Exception e)
{
	System.out.println(e);}
%>
</tr>
</table>
</body>
</html>