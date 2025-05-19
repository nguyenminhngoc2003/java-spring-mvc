<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Dashboard - SB Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">

                <!-- Inlcude Header -->
                <jsp:include page="../layout/header.jsp" />

                <div id="layoutSidenav">

                    <!-- Inlcude sidebar -->
                    <jsp:include page="../layout/sidebar.jsp" />

                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Dashboard</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Order</li>
                                </ol>
                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <div class="d-flex justify-content-between">
                                                <h3>Thông tin đơn hàng có id = ${id}</h3>
                                            </div>
                                            <hr>
                                            <div class="mt-5">
                                                <div class="row">
                                                    <div class="col-12 mx-auto">
                                                        <div class="d-flex justify-content-between">
                                                            <h3>Table Orders</h3>
                                                        </div>
                                                        <hr>
                                                        <table class="table table-bordered table-hover">
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col">Sản phẩm</th>
                                                                    <th scope="col">Tên</th>
                                                                    <th scope="col">Giá cả</th>
                                                                    <th scope="col">Số lượng</th>
                                                                    <th scope="col">Thành tiền</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <c:forEach var="orderDetail" items="${orderDetails}">
                                                                    <tr>
                                                                        <th class="scope">
                                                                            <div class="d-flex align-items-center">
                                                                                <img src="/images/product/${orderDetail.product.image}" alt="" class="img-fluid me-5 rounded-circle" style="width: 80px; height: 80px;">
                                                                            </div>
                                                                        </th>
                                                                        <td>
                                                                            <p class="mb-0 mt-4">
                                                                                <a href="/product/${orderDetail.product.id}" target="_blank">${orderDetail.product.name}</a>
                                                                            </p>
                                                                        </td>
                                                                        <td>
                                                                            <p class="mb-4 mt-4">
                                                                                <fmt:formatNumber type="number" value="${orderDetail.price}" /> đ
                                                                            </p>
                                                                        </td>
                                                                        <td>
                                                                            <p class="mb-4 mt-4">
                                                                                ${orderDetail.quantity}
                                                                            </p>
                                                                        </td>
                                                                        <td>
                                                                            <p class="mb-4 mt-4" data-cart-detail-id="${orderDetail.id}">
                                                                                <fmt:formatNumber type="number" value="${orderDetail.price * orderDetail.quantity}" /> đ
                                                                            </p>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="/admin/order" class="btn btn-success mt-3">Back</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
            </body>

            </html>