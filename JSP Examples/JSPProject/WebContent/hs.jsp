<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String veid=request.getParameter("eid");
String vename=request.getParameter("ename");
String veaddress=request.getParameter("eaddress");
session.setAttribute("seid", veid);
session.setAttribute("sename", vename);
session.setAttribute("seaddress", veaddress);
%>
<jsp:forward page="/view.jsp"></jsp:forward>