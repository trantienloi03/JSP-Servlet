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
        <title>Product - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="layout/headerAdminDB.jsp"/>
        <div id="layoutSidenav">
        <jsp:include page="layout/sidebarAdminDB.jsp"/>
            <div id="layoutSidenav_content">
       <main>
		   <div class="container-fluid px-4">
		      <!-- Header -->
		      <h1 class="mt-4">Quản lý sản phẩm</h1>
		      <ol class="breadcrumb mb-4">
		         <li class="breadcrumb-item"><a href="DashBoardController">Dashboard</a></li>
		         <li class="breadcrumb-item active">Product</li>
		      </ol>
		
		      <!-- Danh sách sản phẩm -->
		      <div class="card shadow mb-4">
		         <div class="card-header d-flex justify-content-between align-items-center">
		            <h3 class="card-title mb-0">Danh sách sách</h3>
		            <a href="ProductController?action=create" class="btn btn-primary">
		               <i class="fas fa-plus"></i> Thêm sách mới
		            </a>
		         </div>
		         <div class="card-body">
		            <!-- Bảng danh sách sản phẩm -->
		            <div class="table-responsive">
		               <table class="table table-bordered table-hover">
		                  <thead class="table-primary text-center">
		                     <tr>
		                        <th>Ảnh</th>
		                        <th>Tên sách</th>
		                        <th>Mã loại</th>
		                        <th>Số lượng</th>
		                        <th>Giá bán</th>
		                        <th>Tác giả</th>
		                        <th>Hành động</th>
		                     </tr>
		                  </thead>
		                  <tbody>
		                     <!-- Kiểm tra dữ liệu -->
		                     <c:if test="${lstSach.size() > 0}">
		                        <c:forEach var="s" items="${lstSach}">
		                           <tr>
		                              <td class="text-center">
		                                 <img src="${s.getAnh()}" alt="Ảnh sách" style="height: 100px; width: 100px;">
		                              </td>
		                              <td>${s.getTenSach()}</td>
		                              <td>${s.getMaLoai()}</td>
		                              <td>${s.getSoLuong()}</td>
		                              <td>${s.getGiaBan()}</td>
		                              <td>${s.getTacGia()}</td>
		                              <td class="text-center">
		                                 <a href="ProductController?masach=${s.getMaSach()}&action=detail" class="btn btn-success btn-sm" title="Xem chi tiết">
		                                    <i class="fas fa-eye"></i>
		                                 </a>
		                                 <a href="ProductController?masach=${s.getMaSach()}&action=edit" class="btn btn-info btn-sm" title="Chỉnh sửa">
		                                    <i class="fas fa-edit"></i>
		                                 </a>
		                                 <a href="ProductController?masach=${s.getMaSach()}&action=delete" class="btn btn-danger btn-sm" title="Xóa" onclick="return confirm('Bạn có chắc chắn muốn xóa sách này?')">
		                                    <i class="fas fa-trash-alt"></i>
		                                 </a>
		                              </td>
		                           </tr>
		                        </c:forEach>
		                     </c:if>
		                     <c:if test="${lstSach.size() == 0}">
		                        <tr>
		                           <td colspan="7" class="text-center">Không có dữ liệu</td>
		                        </tr>
		                     </c:if>
		                  </tbody>
		               </table>
		            </div>
		         </div>
		      </div>
		
		      <!-- Phân trang -->
		      <nav aria-label="Page navigation">
		         <ul class="pagination justify-content-center">
		            <c:forEach var="i" begin="1" end="${Page}">
		               <li class="page-item ${index == i ? 'active' : ''}">
		                  <a class="page-link" href="ShowProductController?index=${i}&maTheLoai=&key=">${i}</a>
		               </li>
		            </c:forEach>
		         </ul>
		      </nav>
		   </div>
		</main>
               <jsp:include page="layout/footerAdminDB.jsp" />
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
