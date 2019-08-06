    <%@ page import="java.sql.*"%>  
      
    <%  
    String s=request.getParameter("val");  
    if(s==null || s.trim().equals("")){  
    out.print("Please enter id");  
    }else{  
    int eid=Integer.parseInt(s);  
    out.print(eid+"  ");  
    try{  
    Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");  
    PreparedStatement ps=con.prepareStatement("select * from emp1 where eid=?");  
    ps.setInt(1,eid);  
    ResultSet rs=ps.executeQuery();  
    while(rs.next()){  
    out.print(rs.getString(2)+" "+rs.getString(3));  
    }  
    con.close();  
    }catch(Exception e){e.printStackTrace();}  
    }  
    %>  