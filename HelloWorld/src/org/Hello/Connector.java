package org.Hello;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
	private static Connection con=null;
	   public static Connection getConnection(){
	      try{
	         if( con == null ){
	            String driver="com.mysql.jdbc.Driver"; //el driver varia segun la DB que usemos
	            String url="jdbc:mysql://sql8.freesqldatabase.com/sql8192452?autoReconnect=true";
	            String pwd="Xbt8DsMEP6";
	            String usr="sql8192452";
	            Class.forName(driver);
	            con = DriverManager.getConnection(url,usr,pwd);
	         }
	     }
	     catch(ClassNotFoundException | SQLException ex){
	        ex.printStackTrace();
	     }
	     return con;
	   }
}
