package vn.hoidanit.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.hoidanit.laptopshop.domain.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    // Đặt tên jv_product để phân biệt với các module khác. VD User = hoidanit,
    // product=jv_product
    // Product save(Product jv_product);

    // List<Product> findAll();

    // Product findById(long id);

    // void deleteById(long id);

}
