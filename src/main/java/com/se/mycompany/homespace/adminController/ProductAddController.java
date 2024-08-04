package com.se.mycompany.homespace.adminController;

import com.se.mycompany.homespace.model.Catalog;
import com.se.mycompany.homespace.model.Product;
import com.se.mycompany.homespace.service.CategoryService;
import com.se.mycompany.homespace.service.ProductService;
import com.se.mycompany.homespace.serviceImpl.CategoryServicesImpl;
import com.se.mycompany.homespace.serviceImpl.ProductServiceImpl;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/admin/product")
public class ProductAddController {

    private static final long serialVersionUID = 1L;

    @Autowired
    ProductService productService = new ProductServiceImpl();

    @Autowired
    CategoryService categoryService = new CategoryServicesImpl();
    
    private static final Logger logger = Logger.getLogger(ProductAddController.class.getName());
    
    private static final String UPLOAD_DIRECTORY = "E:\\HK_He\\WWW_JAVA\\Project\\SpringMVC_TAHHomeware\\BaoCao_SpringMVC_TAHHomeware\\src\\main\\webapp\\view\\client\\assets\\images\\products\\img-test";


    @GetMapping("/add")
    public String showFormAdd(Model theModel) {
        List<Catalog> cateList = categoryService.getAll();
        theModel.addAttribute("catelist", cateList);
        return "addproduct";
    }

    @PostMapping("/add")
    public String addProduct(HttpServletRequest req, HttpServletResponse resp, @RequestParam("product-image") MultipartFile productImage) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String product_cate = req.getParameter("product-cate");
        String product_name = req.getParameter("product-name");
        String product_price = req.getParameter("product-price");
        String product_status = req.getParameter("product-status");
        String product_desc = req.getParameter("product-desc");
        String product_content = req.getParameter("product-content");
        String product_discount = req.getParameter("product-discount");
//        String product_image = req.getParameter("product-image");
        String product_day = req.getParameter("product-day");
        
     // Ensure upload directory exists
        File uploadDir = new File(UPLOAD_DIRECTORY);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        String product_image = "";
        if (!productImage.isEmpty()) {
            String fileName = productImage.getOriginalFilename();
            product_image = fileName;
            File file = new File(UPLOAD_DIRECTORY + File.separator + fileName);
            productImage.transferTo(file);
            logger.log(Level.INFO, "File saved to: {0}", file.getAbsolutePath());
        }

        Product product = new Product();
        product.setCatalog_id(Integer.parseInt(product_cate));
        product.setName(product_name);
        product.setPrice(product_price);
        product.setStatus(Integer.parseInt(product_status));
        product.setDescription(product_desc);
        product.setContent(product_content);
        product.setDiscount(Integer.parseInt(product_discount));
        product.setImage_link(product_image);
        product.setCreated(Date.valueOf(product_day));
        System.err.println(product);
        productService.insert(product);
        return "redirect:/admin/product/list";

    }
}
