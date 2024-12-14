package chitiethoadonModal;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import giohangModal.Hang;
import userModal.User;



public class chiTietHoaDonBO {
	private User user =  new User();
	private Hang hang = new Hang();
	chiTietHoaDonDAO cthdDAO = new chiTietHoaDonDAO();
	
	
	public int insert(String masach, long slmua, long mahoadon ) throws ClassNotFoundException, SQLException {
		return cthdDAO.insert(masach, slmua, mahoadon);
	}
}
