package EmpBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class BeanDemo {

int eid;
public int getEid() {
	return eid;
}


public void setEid(int eid) {
	this.eid = eid;
}


public String getEname() {
	return ename;
}


public void setEname(String ename) {
	this.ename = ename;
}


public String getEaddress() {
	return eaddress;
}


public void setEaddress(String eaddress) {
	this.eaddress = eaddress;
}


String ename;
String eaddress;


public void store()
{
	try {
		
		Class.forName("oracle.jdbc.driv	er.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
		String vsql="insert into emp1 values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(vsql);
		ps.setInt(1, this.eid);
		ps.setString(2, this.ename);
		ps.setString(3, this.eaddress);
		ps.execute();
		System.out.println("done");
	} catch (Exception e) {
		System.out.println("exception" + e);
	}
	
	
	}
	
}
