package lichsuModal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ketnoiModal.KetNoi;

public class LichSuDAO {
	public List<LichSu> get(String khachhang) throws ClassNotFoundException, SQLException{
		List<LichSu> lst = new ArrayList<LichSu>();
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql = "SELECT TOP (1000) [NgayMua]\r\n"
				+ "      ,[SoLuongMua]\r\n"
				+ "      ,[ThanhTien]\r\n"
				+ "      ,[damua]\r\n"
				+ "      ,[tendn]\r\n"
				+ "  FROM [QuanLySach].[dbo].[LichSuMuaHang2]\r\n"
				+ "  where tendn = ? ";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, khachhang);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			Date ngayMua = rs.getDate(1);
			long soLuongMua = rs.getLong(2);
			long thanhtien = rs.getLong(3);
			int damua = rs.getInt(4);
			String tendn = rs.getString(5);
			lst.add(new LichSu( ngayMua,soLuongMua, thanhtien, damua, tendn));
		}
		return lst;
	}
}
