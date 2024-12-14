package hoadonModal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import ketnoiModal.KetNoi;

public class hoaDonDAO {
	public int insert(long makh) throws ClassNotFoundException, SQLException {
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql ="insert into hoadon(makh,NgayMua,damua)\r\n"
				+ "	values(?,getdate(),0)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		int kq = cmd.executeUpdate();
		return kq;
	}
	public long getMaxHoaDonID() throws ClassNotFoundException, SQLException{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		String sql ="select max(MaHoaDon) as MaxHD from hoadon";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		long max = 0;
		if(rs.next())
			max = rs.getLong("MaxHD");
		rs.close();
		kn.cn.close();
		return max;
	}
	public ArrayList<HoaDon> lstHoaDon() throws Exception, SQLException{
		KetNoi kn = new KetNoi();
		kn.KetNoi();
		ArrayList<HoaDon> lst = new ArrayList<HoaDon>();
		String sql ="SELECT [MaHoaDon]\r\n"
				+ "      ,[hoten]\r\n"
				+ "      ,[NgayMua]\r\n"
				+ "      ,[SoLuongMua]\r\n"
				+ "      ,[ThanhTien]\r\n"
				+ "      ,[tendn]\r\n"
				+ "  FROM [QuanLySach].[dbo].[Order]";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		if(rs.next()) {
			int maHD = rs.getInt(1);
			String tenKH = rs.getString(2);
			Date ngayMua = rs.getDate(3);
			int soLuong = rs.getInt(4);
			Long thanhTien = rs.getLong(5);
			String tenDN = rs.getString(6);
			HoaDon hd = new HoaDon(maHD, tenKH, ngayMua, soLuong, thanhTien, tenDN);
			lst.add(hd);
		}
		rs.close();
		kn.cn.close();
		return lst;
	}
}
