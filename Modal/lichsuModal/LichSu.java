package lichsuModal;

import java.util.Date;

public class LichSu {
	private Date ngayMua;
	private long soLuongMua;
	private long thanhTien;
	private int damua;
	private String tendn;
	public LichSu() {
		super();
	}
	public LichSu(Date ngayMua, long soLuongMua, long thanhTien, int damua, String tendn) {
		super();
		this.ngayMua = ngayMua;
		this.soLuongMua = soLuongMua;
		this.thanhTien = thanhTien;
		this.damua = damua;
		this.tendn = tendn;
	}
	public Date getNgayMua() {
		return ngayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.ngayMua = ngayMua;
	}
	public long getSoLuongMua() {
		return soLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		this.soLuongMua = soLuongMua;
	}
	public long getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(long thanhTien) {
		this.thanhTien = thanhTien;
	}
	
	public int getDamua() {
		return damua;
	}
	public void setDamua(int damua) {
		this.damua = damua;
	}
	public String getTendn() {
		return tendn;
	}
	public void setTendn(String tendn) {
		this.tendn = tendn;
	}
	@Override
	public String toString() {
		return "LichSu [ngayMua=" + ngayMua + ", soLuongMua=" + soLuongMua + ", thanhTien=" + thanhTien + ", damua="
				+ damua + ", tendn=" + tendn + "]";
	}

	
	
	
	
	
	
}
