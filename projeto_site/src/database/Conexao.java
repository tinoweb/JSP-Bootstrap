package database;
import java.sql.*;

public class Conexao {
	
		 
	    private String connectionString;
	    private String driverName = "com.mysql.jdbc.Driver"; //driver do MySQL
	    private String database;
	    private String user;
	    private String password;
	    private String host;
	    private Connection connection = null;
	 
	    //construtor
	    public Conexao(String host, String database, String user, String password) {
	 
	        this.host = host; //geralmente localhost
	        this.database = database; //nome do banco
	        this.user = user; //usuario do banco
	        this.password = password; //senha do usuario
	        //mysql usa a porta 3306
	        connectionString = "jdbc:mysql://" + host + ":3306/" + database; //string de conexao
	    }
	 
	    //conectar no banco
	    public Connection connect() throws SQLException {
	        try {
	            Class.forName(this.driverName);
	            //faz a conexao e retorna
	            this.connection = DriverManager.getConnection(connectionString, this.user, this.password);
	            return this.connection;
	        }
	        catch (ClassNotFoundException ex){
	            throw new SQLException(ex.getMessage());
	        }
	        catch (SQLException ex) {
	            throw new SQLException(ex.getMessage());
	        }
	    }
	 
	    //fecha conexao
	    public void close() throws SQLException{
	        try {
	            connection.close();
	        } catch (SQLException ex) {
	            throw new SQLException(ex.getMessage());
	        }
	    }
	 
	}//fim conexao
	

