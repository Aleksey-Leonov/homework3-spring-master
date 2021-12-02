package ru.azor.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.azor.entity.Product;
import ru.azor.repository.ProductRepository;

@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public Product save(Product product) {
        return productRepository.save(product);
    }

    public Product findById(int id) {
        return productRepository.findById(id).orElse(new Product());
    }

    public Iterable<Product> findAll() {
        return productRepository.findAll();
    }

    public void deleteById(int id) {
        productRepository.deleteById(id);
    }
}