package hoadonModal;

public class XacNhanHoaDon {
 private int maHoaDon;
 private int maChiTietHoaDon;
 private boolean damua;
 private String hoten;
 private int soLuongMua;
 private int gia;
 private String tenSach;
 private int thanhTien;
public int getMaHoaDon() {
	return maHoaDon;
}
public void setMaHoaDon(int maHoaDon) {
	this.maHoaDon = maHoaDon;
}
public int getMaChiTietHoaDon() {
	return maChiTietHoaDon;
}
public void setMaChiTietHoaDon(int maChiTietHoaDon) {
	this.maChiTietHoaDon = maChiTietHoaDon;
}
public boolean isDamua() {
	return damua;
}
public void setDamua(boolean damua) {
	this.damua = damua;
}
public String getHoten() {
	return hoten;
}
public void setHoten(String hoten) {
	this.hoten = hoten;
}
public int getSoLuongMua() {
	return soLuongMua;
}
public void setSoLuongMua(int soLuongMua) {
	this.soLuongMua = soLuongMua;
}
public int getGia() {
	return gia;
}
public void setGia(int gia) {
	this.gia = gia;
}
public String getTenSach() {
	return tenSach;
}
public void setTenSach(String tenSach) {
	this.tenSach = tenSach;
}
public int getThanhTien() {
	return thanhTien;
}
public void setThanhTien(int thanhTien) {
	this.thanhTien = thanhTien;
}
public XacNhanHoaDon(int maHoaDon, int maChiTietHoaDon, boolean damua, String hoten, int soLuongMua, int gia,
		String tenSach) {
	super();
	this.maHoaDon = maHoaDon;
	this.maChiTietHoaDon = maChiTietHoaDon;
	this.damua = damua;
	this.hoten = hoten;
	this.soLuongMua = soLuongMua;
	this.gia = gia;
	this.tenSach = tenSach;
	this.thanhTien = soLuongMua*gia;
}
@Override
public String toString() {
	return "XacNhanHoaDon [maHoaDon=" + maHoaDon + ", maChiTietHoaDon=" + maChiTietHoaDon + ", damua=" + damua
			+ ", hoten=" + hoten + ", soLuongMua=" + soLuongMua + ", gia=" + gia + ", tenSach=" + tenSach
			+ ", thanhTien=" + thanhTien + "]";
}

 
 
 
}
