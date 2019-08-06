<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="varone" class="EmpBean.BeanDemo"/>


<jsp:setProperty property="eid" name="varone" value='<%=Integer.parseInt(request.getParameter("eid")) %>'/>
<jsp:setProperty property="ename" name="varone" value='<%=request.getParameter("ename") %>'/>
<jsp:setProperty property="eaddress" name="varone" value='<%=request.getParameter("eaddress") %>'/>
<pre>insert new record using JSP action tags</pre>
<pre>check database</pre>
<% 
varone.store();

%>

<!-- presentation layer -->

Eid:: <jsp:getProperty property="eid" name="varone" /><br>
Ename:: <jsp:getProperty property="ename" name="varone" /><br>
Eaddress:: <jsp:getProperty property="eaddress" name="varone" /><br>

