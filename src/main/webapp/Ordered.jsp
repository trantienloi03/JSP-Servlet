<%@page import="lichsuModal.LichSu"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch Sử Mua Hàng</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
	    footer {
	            background-color: #0056b3; /* Màu nền giống trang chủ */
	            color: white;
	            text-align: center;
	            padding: 10px 0;
	        }
       </style>
</head>
<body>
    <!-- NavBar -->
 <jsp:include page="layout/header.jsp"></jsp:include>

    <!-- Content -->
    <div class="container my-5">
        <h2 class="text-center mb-4">Lịch Sử Mua Hàng</h2>
        <table class="table table-bordered table-hover">
            <thead class="table-primary">
                <tr>
                    <th>#</th>
                    <th>Ngày mua</th>
                    <th>Số Lượng Mua</th>
                    <th>Thành tiền</th>
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
            <%
            	List<LichSu> lstLichSu = (List<LichSu>)request.getAttribute("lstLichSu");
            	int n = lstLichSu.size();
            	if(n>0){
            		for(int i = 0; i<n;i++){  
            			LichSu ls = lstLichSu.get(i);
            %>
                <tr>
                    <td><%=i %></td>
                    <td><%=ls.getNgayMua() %></td>
                    <td><%=ls.getSoLuongMua() %></td>
                    <td><%=ls.getThanhTien()%> VND</td>
                    <%
                    if(ls.getDamua() ==1){
                    %>
                    	<td>Đã mua</td>
					<%
                    }else{
                    %>
                    	<td>Chờ xác nhận</td>
                    <%} %>
                </tr>
   			<%
   				}}
            	else{
   			%>
   			<tr>
   				<td colspan="7" class="text-center">Không có lịch sử đơn hàng</td>
   			</tr>
   			<%} %>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
     <jsp:include page="layout/footer.jsp"></jsp:include>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
