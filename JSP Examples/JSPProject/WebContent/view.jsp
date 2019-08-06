<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 

String str1=(String)session.getAttribute("seid");
String str2=(String)session.getAttribute("sename");
String str3=(String)session.getAttribute("seaddress");

out.println("Eid: "+str1+"<br>");
out.println("Ename: "+str2+"<br>");
out.println("Eaddress: "+str3+"<br>");

%>