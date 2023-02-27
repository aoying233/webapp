import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.Map;
import java.sql.SQLException;

public class GoodsDao {
	public boolean addGoods(Goods goods) throws Exception {//增加
		Connection conn = DBUtil.connectDB();
		String sql = "INSERT INTO goods(name,price)"
				+ " VALUES(?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, goods.getName());
		pstmt.setString(2, goods.getPrice());
		pstmt.execute();
		return true;
	}
	public boolean searchGoods()throws Exception{
		boolean flag = false;
		try {
			Connection conn = DBUtil.connectDB();
			String sql = "select * from tb_info ";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()){
				flag = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	
	
}

