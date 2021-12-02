package ru.azor.repository;

import org.springframework.stereotype.Component;
import ru.azor.entity.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Component
public class ProductRepository {
    List<Product> products = new ArrayList<>();

    public Product save(Product product) {
        product.setId(products.size() + 1);
        products.add(product);
        return Product.builder()
                .id(product.getId())
                .title(product.getTitle())
                .cost(product.getCost())
                .build();
    }

    public Optional<Product> findById(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return Optional.of(product);
            }
        }
        return Optional.empty();
    }

    public Iterable<Product> findAll() {
        return new ArrayList<>(products);
    }

    public void deleteById(int id) {
        products.removeIf(product -> product.getId() == id);
    }
}