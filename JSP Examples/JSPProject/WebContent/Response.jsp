<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
response.setContentType("text/xml");
out.println("<student>");
out.println("<sno>101</sno>");
out.println("<sname>rashmi</sname>");
out.println("<saddress>jaipur</saddress>");
out.println("</student>");

%>