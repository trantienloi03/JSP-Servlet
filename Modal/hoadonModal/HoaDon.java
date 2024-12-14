package hoadonModal;

import java.util.Date;

public class HoaDon {
	private int maHoaDon;
	private String tenKhachHang;
	private Date ngayMua;
	private int soLuongMua;
	private Long thanhTien;
	private String tenDN;
	
	
	public HoaDon() {
		super();
	}
	public HoaDon(int maHoaDon, String tenKhachHang, Date ngayMua, int soLuongMua, Long thanhTien, String tenDN) {
		super();
		this.maHoaDon = maHoaDon;
		this.tenKhachHang = tenKhachHang;
		this.ngayMua = ngayMua;
		this.soLuongMua = soLuongMua;
		this.thanhTien = thanhTien;
		this.tenDN = tenDN;
	}


	public int getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	public Date getNgayMua() {
		return ngayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.ngayMua = ngayMua;
	}
	public int getSoLuongMua() {
		return soLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		this.soLuongMua = soLuongMua;
	}
	public Long getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(Long thanhTien) {
		this.thanhTien = thanhTien;
	}
	public String getTenDN() {
		return tenDN;
	}
	public void setTenDN(String tenDN) {
		this.tenDN = tenDN;
	}


	@Override
	public String toString() {
		return "HoaDon [maHoaDon=" + maHoaDon + ", tenKhachHang=" + tenKhachHang + ", ngayMua=" + ngayMua
				+ ", soLuongMua=" + soLuongMua + ", thanhTien=" + thanhTien + ", tenDN=" + tenDN + "]";
	}
	
	
	

}
