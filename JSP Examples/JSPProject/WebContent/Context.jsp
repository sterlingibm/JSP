<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

String veid=application.getInitParameter("eid");
String vename=application.getInitParameter("ename");
String veaddress=application.getInitParameter("eaddress");

out.println("Eid: "+veid+"<br>");
out.println("Ename: "+vename+"<br>");
out.println("Eaddress: "+veaddress+"<br>");
    %>