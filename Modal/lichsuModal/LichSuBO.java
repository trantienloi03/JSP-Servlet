package lichsuModal;

import java.sql.SQLException;
import java.util.List;

public class LichSuBO {
	LichSuDAO lsDAO = new LichSuDAO();
	public List<LichSu> get(String tendn) throws Exception, SQLException{
		return lsDAO.get(tendn);
	}
}
