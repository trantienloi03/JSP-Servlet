<%@page import="sachModal.Sach"%>
<%@page import="theloaiModal.Loai"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website Bán Sách</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
     <style>
		 
		.card img {
		  max-width: 100%;
		  height: 250px; /* Đặt chiều cao cố định */
		  object-fit: cover; /* Giữ tỷ lệ ảnh, cắt bớt phần thừa */
		}
		.card p, h5 {
		  max-width: 100%;
		  height: 50px; /* Đặt chiều cao cố định */
		  
		}
        .navbar {
            background-color: #0056b3; /* Màu nền giống trang chủ */
            color: white;
        }
        footer {
            background-color: #0056b3; /* Màu nền giống trang chủ */
            color: white;
        }
    </style>
</head>
<body>
    <!-- Thanh Navigation -->
    <jsp:include page="layout/header.jsp"></jsp:include>

    <!-- Body -->
    <div class="container mt-4">
        <div class="row">
            <!-- Cột trái: Danh mục sách -->
            <div class="col-md-3">
			    <div class="card shadow-sm">
			        <!-- Tiêu đề -->
			        <div class="card-header bg-primary text-white text-center">
			            <h5 class="card-title mb-0">📚 Danh mục sách</h5>
			        </div>
			
			        <!-- Danh sách -->
			        <div class="list-group list-group-flush">
			            <c:forEach var="item" items="${lstTheLoai}">
			                <a href="HomeController?maTheLoai=${item.getMaLoai()}" 
			                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">
			                    <span>${item.getTenLoai()}</span>
			                    <i class="bi bi-chevron-right text-primary"></i>
			                </a>
			            </c:forEach>
			        </div>
			    </div>
			</div>


            <!-- Cột phải: Sản phẩm -->
       <div class="col-md-9">
		    <div class="card shadow-sm">
		        <!-- Tiêu đề -->
		        <div class="card-header bg-primary text-white">
		            <h4 class="mb-0">📚 Tất cả sách</h4>
		        </div>
		
		        <!-- Nội dung -->
		        <div class="card-body">
		            <!-- Form tìm kiếm -->
		            <form class="mb-4" method="GET" action="HomeController">
		                <div class="input-group">
		                    <input type="text" class="form-control" name="key" placeholder="Nhập tên sách cần tìm..." aria-label="Tìm kiếm tên sách" value="${param.key}">
		                    <button class="btn btn-primary" type="submit">
		                        <i class="bi bi-search"></i> Tìm kiếm
		                    </button>
		                </div>
		            </form>
		
		            <!-- Danh sách sản phẩm -->
		            <div class="row">
		                <c:if test="${lstSach.size() > 0}">
		                    <c:forEach var="s" items="${lstSach}">
		                        <div class="col-md-4 mb-4">
		                            <div class="card h-100">
		                                <img src="${s.getAnh()}" class="card-img-top" alt="${s.getTenSach()}">
		                                <div class="card-body d-flex flex-column">
		                                    <h5 class="card-title">${s.getTenSach()}</h5>
		                                    <p class="card-text">Tác giả: ${s.getTacGia()}</p>
		                                    <p class="card-text fw-bold text-danger">Giá: ${s.getGiaBan()}đ</p>
		                                    <a href="AddToCartController?tensach=${s.getTenSach()}&masach=${s.getMaSach()}&giaban=${s.getGiaBan()}" class="btn btn-primary mt-auto">
		                                        <i class="bi bi-cart-plus"></i> Thêm vào giỏ
		                                    </a>
		                                </div>
		                            </div>
		                        </div>
		                    </c:forEach>
		                </c:if>
		                <c:if test="${lstSach.size() == 0}">
		                    <p class="text-center text-muted">Không có dữ liệu</p>
		                </c:if>
		            </div>
		
		            <!-- Phân trang -->
		            <nav aria-label="Page navigation">
		                <ul class="pagination justify-content-center">
		                    <%
		                        int maxPage = (int) request.getAttribute("Page");
		                        String maTheLoai = (String) request.getParameter("maTheLoai") == null ? "" : (String) request.getParameter("maTheLoai");
		                        String tenSach = (String) request.getParameter("key") == null ? "" : (String) request.getParameter("key");
		                        int index = (int) request.getAttribute("index");
		
		                        for (int i = 1; i <= maxPage; i++) {
		                            if (index == i) {
		                    %>
		                                <li class="page-item active"><a class="page-link" href="#"><%= i %></a></li>
		                            <% } else { %>
		                                <li class="page-item"><a class="page-link" href="HomeController?index=<%= i %>&maTheLoai=<%= maTheLoai %>&key=<%= tenSach %>"><%= i %></a></li>
		                    <%      }
		                        }
		                    %>
		                </ul>
		            </nav>
		        </div>
		    </div>
</div>

        </div>
    </div>

    <!-- Footer -->
    <jsp:include page="layout/footer.jsp"></jsp:include>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
