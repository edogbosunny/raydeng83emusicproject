package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

/**
 * Created by CRYSTALDAVE on 6/27/2017.
 */
public interface ProductDao {
    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct (Product product);

   // List<Product> getProductList();
}
