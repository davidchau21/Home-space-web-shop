<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
<!-- Custom CSS for header background -->
<style>
    #aa-header .aa-header-top {
    	background-color: #ff8616f5;
        color: white; /* Màu chữ */
        padding: 10px 0; /* Padding trên và dưới */
    }
    #aa-header .aa-header-top a {
        color: white; /* Màu chữ cho các liên kết */
    }
    #aa-header .aa-header-top a:hover {
        color: #ffeb3b; /* Màu chữ khi hover */
    }
    #aa-header .aa-header-top .dropdown-menu {
        background-color: #4CAF50; /* Màu nền cho menu dropdown */
    }
    #aa-header .aa-header-top .aa-head-top-nav-right .hidden-xs a {
        color: white; /* Màu chữ cho liên kết Đăng ký, Đăng nhập */
    }
    #aa-header .aa-header-top .aa-head-top-nav-right .hidden-xs a:hover {
        color: #ffeb3b; /* Màu chữ khi hover cho liên kết Đăng ký, Đăng nhập */
    }
    #aa-header .aa-header-top .aa-header-top-right .aa-head-top-nav-right li a {
    color: white;	
    }
    
</style>
<!-- start header top  -->
<div class="aa-header-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-header-top-area">
                    <!-- start header top left -->
                    <div class="aa-header-top-left">
                        <div class="cellphone hidden-xs">
                            <p><span class="fas fa-home"></span>Hotline: 19001234</p>
                        </div>
                        <!-- start language -->
                        <div class="aa-language">
                            <div class="dropdown">
                                <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <img src="${url}/img/flag/vietnam.png" alt="Vietnamese flag">Việt Nam
                                </a>
                            </div>
                        </div>
                        <!-- / language -->
                    </div>
                    <!-- / header top left -->
                    <div class="aa-header-top-right">
                        <ul class="aa-head-top-nav-right">
                            <c:if test="${sessionScope.username != null}">
                                <li>
                                    <a><strong>Chào</strong> ${sessionScope.username}</a>
                                </li>
                                <li class="hidden-xs"><a href="${pageContext.request.contextPath}/view/client/logout">Đăng xuất</a></li>
                            </c:if>
                            <c:if test="${sessionScope.username == null}">
                                <li class="hidden-xs"><a href="${pageContext.request.contextPath}/view/client/register">Đăng ký</a></li>
                                <li><a href="${pageContext.request.contextPath}/view/client/login">Đăng nhập</a></li>
                            </c:if>
                        </ul>
                    </div>
                    <!-- / header top right -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- / header top  -->
