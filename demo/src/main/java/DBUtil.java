
import java.sql.Connection;
import java.sql.DriverManager;
 //连接数据库
public class DBUtil {
 
	private static final String URI = "jdbc:mysql://localhost:3306/ db_info?"
			+ "user=root&password=caoyuhan&useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
	
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	
	public static Connection connectDB() throws Exception {
		//1、加载数据库驱动
		Class.forName(DRIVER);
		//2、获取数据库连接
		Connection conn = DriverManager.getConnection(URI);
		
		return conn;
	}
	
}