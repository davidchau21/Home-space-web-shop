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
        <h2>Giới thiệu</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>      
          <li style="color:#fff">Giới thiệu</li>   
        </ol>
      </div>
     </div>
   </div>
  </section>
  <section id="aa-product-category">
    <div class="container">
        <div class="row">
            <div>
                <h1 style="text-align: center; color: red;">HomeSpace</h1>
                <p>Chào mừng bạn đến với <strong>HomeSpace</strong> - địa chỉ tin cậy của mọi gia đình Việt Nam khi mua sắm thiết bị gia đình chất lượng cao. Chúng tôi tự hào mang đến cho bạn các sản phẩm gia dụng từ những thương hiệu uy tín hàng đầu, đảm bảo đáp ứng nhu cầu sử dụng hàng ngày của gia đình bạn.</p>
                <img src="${url}/images/home-application.jpeg" alt="Thiết bị gia đình" width="1160px"/> <br/> <br>
                <p>Với sứ mệnh "Nâng tầm cuộc sống gia đình Việt", <strong>HomeSpace</strong> cam kết cung cấp những sản phẩm gia dụng tốt nhất, từ các thiết bị nhà bếp hiện đại, các sản phẩm chăm sóc gia đình, đến những tiện ích công nghệ tiên tiến nhất.</p>
                <p>Chúng tôi đảm bảo rằng mọi sản phẩm tại <strong>HomeSpace</strong> đều được chọn lọc kỹ càng, có nguồn gốc xuất xứ rõ ràng và tuân thủ nghiêm ngặt các tiêu chuẩn chất lượng quốc tế. Bạn có thể hoàn toàn yên tâm về chất lượng và độ bền của các sản phẩm khi mua sắm tại đây.</p>
                <img src="${url}/images/home-kitchen.png" alt="Thiết bị nhà bếp" width="1160px" height="600px"/> <br/> <br>
                <strong>Dưới đây là một số mặt hàng nổi bật hiện có tại <strong>HomeSpace</strong>:</strong><br/>
                <p><strong>Thiết bị nhà bếp:</strong> Các sản phẩm như máy pha cà phê, máy xay sinh tố, lò vi sóng, và nồi chiên không dầu từ các thương hiệu hàng đầu, giúp bạn nấu nướng dễ dàng và nhanh chóng.</p>
                <p><strong>Thiết bị chăm sóc gia đình:</strong> Các sản phẩm như máy hút bụi, máy lọc không khí, và máy giặt đảm bảo mang lại không gian sống sạch sẽ, trong lành cho gia đình bạn.</p>
                <p><strong>Thiết bị điện gia dụng:</strong> Các sản phẩm như quạt điện, điều hòa, và máy sưởi giúp điều chỉnh nhiệt độ trong nhà, mang lại cảm giác thoải mái trong mọi mùa.</p>
                <p><strong>Sản phẩm công nghệ:</strong> Các thiết bị thông minh như robot hút bụi, camera an ninh, và hệ thống điều khiển nhà thông minh giúp cuộc sống gia đình bạn trở nên tiện nghi và hiện đại hơn.</p>
                <br />
            </div>
        </div>
    </div>
</section>
  
    
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
      