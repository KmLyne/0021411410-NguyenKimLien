package com.kmlyne.PetCareServer.repository;

import com.kmlyne.PetCareServer.model.Products;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Products, Integer> {
}
