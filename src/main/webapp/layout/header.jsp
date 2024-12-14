<%@page import="giohangModal.GioHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
    <div class="container">
        <!-- Logo -->
        <a class="navbar-brand fw-bold text-primary" href="HomeController">📚 Bán Sách Online</a>

        <!-- Toggler button for small screens -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar content -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <!-- Center navigation links -->
            <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active fw-semibold" href="HomeController">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="OrderedController">Xác nhận mua hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="OrderedController">Lịch sử mua hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold position-relative" href="CartController">
                        Giỏ hàng
                        <span class="badge bg-secondary position-absolute top-0 start-100 translate-middle">${sessionScope.GioHang.getDs().size()}</span>
                    </a>
                </li>
            </ul>

            <!-- Right-side user options -->
            <ul class="navbar-nav">
                <c:if test="${sessionScope.user == null}">
                    <li class="nav-item">
                        <a class="nav-link text-primary fw-bold" href="Login.jsp">
                            <i class="bi bi-box-arrow-in-right"></i> Login
                        </a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user != null}">
                    <li class="nav-item">
                        <a class="nav-link text-success fw-bold" href="#">
                            <i class="bi bi-person-circle"></i> Xin chào: ${sessionScope.user.getHoTen()}
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-danger fw-bold" href="LogoutController?username=${sessionScope.user.getHoTen()}">
                            <i class="bi bi-box-arrow-right"></i> Logout
                        </a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
   