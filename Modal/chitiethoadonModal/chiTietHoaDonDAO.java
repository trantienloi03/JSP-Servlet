package chitiethoadonModal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import giohangModal.Hang;
import ketnoiModal.KetNoi;
import userModal.User;


public class chiTietHoaDonDAO {
	private User user =  new User();
	private Hang hang = new Hang();
	public int insert(String masach, long slmua, long mahoadon ) throws ClassNotFoundException, SQLException {
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql ="insert into ChiTietHoaDon(MaSach,SoLuongMua,MaHoaDon,DaMua)\r\n"
				+ "	values(?,?,?,0)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masach);
		cmd.setLong(2, slmua);
		cmd.setLong(3, mahoadon);
		int kq = cmd.executeUpdate();
		return kq;
	}
	public void getDetail(int maHD) throws SQLException, ClassNotFoundException {
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql ="SELECT TOP (1000) [hoten]\r\n"
				+ "      ,[diachi]            \r\n"
				+ "      ,[sodt]              \r\n"
				+ "      ,[NgayMua]           \r\n"
				+ "      ,[tensach]           \r\n"
				+ "      ,[SoLuongMua]        \r\n"
				+ "      ,[gia]               \r\n"
				+ "      ,[MaHoaDon]          \r\n"
				+ "      ,[makh]              \r\n"
				+ "      ,[MaSach]            \r\n"
				+ "      ,[ThanhTien]         \r\n"
				+ "  FROM [QuanLySach].[dbo].[DetailOrder]\r\n"
				+ "  where maHoaDon = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setInt(1, maHD);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			
		}
	}


}
