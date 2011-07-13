package news;

import java.sql.*;

public class conn {
	String sDBDriver = "org.gjt.mm.mysql.Driver";	 
	String sConnStr = "jdbc:mysql://localhost/zhazh";
	Connection connect = null;
	ResultSet rs = null;

	public conn() {
		try {
			Class.forName(sDBDriver); 
		}
		catch(java.lang.ClassNotFoundException e) {
			System.err.println( e.getMessage());
		}
	}
	
	public ResultSet executeQuery(String sql) {
		try {
			connect = DriverManager.getConnection(sConnStr,"root","111111"); 
			Statement stmt = connect.createStatement();
			rs = stmt.executeQuery(sql);	
		} 
		catch(SQLException ex) { 
			System.err.println(ex.getMessage());
		}
		return rs;
	}
	
	public int executeUpdate(String sql) {
		int result = 0;
		try {
			connect = DriverManager.getConnection(sConnStr,"root","111111"); 
			Statement stmt = connect.createStatement();
			result = stmt.executeUpdate(sql);		
		} 
		catch(SQLException ex) { 
			System.err.println(ex.getMessage());
		}
		return result;
	}
	
	public void close(){
		if(connect!=null){
			try{
				connect.close();			
				connect = null;	
			}catch(SQLException ex) { 
				System.err.println(ex.getMessage());
			}
		}	
	}
}
