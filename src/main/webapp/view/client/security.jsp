<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  
  <section id="aa-catg-head-banner">
   <img src="${pageContext.request.contextPath}/view/client/assets/images/home-decor.jpg" alt="banner sản phẩm">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Chính sách bảo mật</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
          <li style="color:#fff">Chính sách</li>         
        </ol>
      </div>
     </div>
   </div>
  </section>
  <section id="aa-product-category">
    <div class="container">
        <div class="row">
            <div>
                <h1 style="text-align: center; color: red;">Chính Sách Bảo Mật</h1>
                <strong>Cảm ơn quý khách đã truy cập vào website HomeSpace</strong><br><br>
                <p>Chúng tôi tôn trọng và cam kết bảo mật thông tin cá nhân của bạn. Xin vui lòng đọc chính sách dưới đây để hiểu rõ cam kết của chúng tôi trong việc bảo vệ quyền lợi của người truy cập.</p>
                <p>Chính sách này giải thích cách chúng tôi thu thập, sử dụng và tiết lộ thông tin cá nhân của bạn, cũng như các biện pháp bảo mật mà chúng tôi áp dụng.</p>
                <strong>1. Thu thập thông tin cá nhân</strong>
                <p>
                    Chúng tôi thu thập thông tin khi bạn đặt hàng trên website, bao gồm tên, địa chỉ, email, số điện thoại và các chi tiết thanh toán. Thông tin này được sử dụng để xử lý đơn hàng, cung cấp dịch vụ và quản lý tài khoản của bạn.
                </p>
                <strong>2. Sử dụng Cookie</strong>
                <p>
                    Cookie là các tệp văn bản nhỏ được lưu trên máy tính của bạn khi truy cập trang web. Chúng tôi sử dụng cookie để nhận dạng và lưu thông tin của bạn nhằm cải thiện trải nghiệm người dùng. Bạn có thể tắt cookie trong trình duyệt, nhưng điều này có thể hạn chế một số tính năng của website.
                </p>
                <strong>3. Bảo mật</strong>
                <p>
                    Chúng tôi áp dụng các biện pháp kỹ thuật và bảo mật để ngăn chặn truy cập trái phép và bảo vệ thông tin cá nhân của bạn. Mọi thông tin thanh toán trực tuyến được mã hóa để đảm bảo an toàn.
                </p>
                <p>
                    Nếu có bất kỳ thắc mắc nào về chính sách bảo mật, vui lòng liên hệ với chúng tôi. Cảm ơn quý khách đã tin tưởng và sử dụng dịch vụ của HomeSpace.
                </p>
            </div>
        </div>
    </div>
</section>
  
    
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
      