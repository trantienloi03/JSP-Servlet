<%@page import="sachModal.Sach"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Order - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="../layout/headerAdminDB.jsp"/>
        <div id="layoutSidenav">
        <jsp:include page="../layout/sidebarAdminDB.jsp"/>
            <div id="layoutSidenav_content">
              <main>
			   <div class="container-fluid px-4">
			      <!-- Tiêu đề và breadcrumb -->
			      <h1 class="mt-4">Quản lý hoá đơn</h1>
			      <ol class="breadcrumb mb-4">
			         <li class="breadcrumb-item"><a href="DashBoardController">Dashboard</a></li>
			         <li class="breadcrumb-item active">Order</li>
			      </ol>
			
			      <!-- Card hiển thị danh sách thể loại -->
			      <div class="card shadow mb-4">
			         <div class="card-header d-flex justify-content-between align-items-center">
			            <h3 class="card-title mb-0">Danh sách cần xác nhận</h3>
			            <a href="CategoryController?action=create" class="btn btn-primary">
			               <i class="fas fa-plus"></i> Thêm mới
			            </a>
			         </div>
			         <div class="card-body">
			            <!-- Bảng danh sách thể loại -->
			            <div class="table-responsive">
			               <table class="table table-bordered table-hover">
			                  <thead class="table-primary text-center">
			                     <tr>
			                        <th scope="col">Mã hóa đơn</th>
			                        <th scope="col">Tên khách hàng</th>
			                        <th scope="col">Ngày mua</th>
			                        <th scope="col">Số lượng mua</th>
			                        <th scope="col">Thành tiền</th>
			                        <th scope="col">Tên tài khoản</th>
			                        <th scope="col" style="width: 20%;">Hành động</th>
			                     </tr>
			                  </thead>
			                  <tbody>
			                     <!-- Kiểm tra và hiển thị dữ liệu -->
			                     <c:if test="${lstHoaDon.size() > 0}">
			                        <c:forEach var="hd" items="${lstHoaDon}">
			                           <tr>
			                              <td>${hd.getMaHoaDon()}</td>
			                              <td>${hd.getTenKhachHang()}</td>
			                              <td>${hd.getNgayMua()}</td>
			                              <td>${hd.getSoLuongMua()}</td>
			                              <td>${hd.getThanhTien()}</td>
			                              <td>${hd.getTenDN()}</td>
			                              <td class="text-center">
			                                 <a class="btn btn-success btn-sm" href="OrderController?mahoadon=${hd.getMaHoaDon()}&action=accept" title="Xem chi tiết">
			                                    <i class="fas fa-eye"></i> Xác nhận
			                                 </a>
			                                 <a class="btn btn-info btn-sm" href="OrderController?mahoadon=${hd.getMaHoaDon()}&action=reject" title="Từ chối">
			                                    <i class="fas fa-edit"></i> Từ chối
			                                 </a>
			                                 <a class="btn btn-danger btn-sm" href="OrderController?mahoadon=${hd.getMaHoaDon()}&action=delete" title="Xóa" onclick="return confirm('Bạn có chắc chắn muốn xóa thể loại này?')">
			                                    <i class="fas fa-trash-alt"></i> Xóa
			                                 </a>
			                              </td>
			                           </tr>
			                        </c:forEach>
			                     </c:if>
			                     <c:if test="${lstHoaDon.size() == 0}">
			                        <tr>
			                           <td colspan="3" class="text-center">Không có dữ liệu</td>
			                        </tr>
			                     </c:if>
			                  </tbody>
			               </table>
			            </div>
			         </div>
			      </div>
			
			   </div>
			</main>
              
               <jsp:include page="../layout/footerAdminDB.jsp" />
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="js/chart-area-demo.js"></script>
        <script src="js/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
