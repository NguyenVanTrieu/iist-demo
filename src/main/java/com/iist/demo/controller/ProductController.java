package com.iist.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.iist.demo.model.Product;

@RestController
@RequestMapping(value="${request.mapping}")
public class ProductController {

	@GetMapping(value = "/products/{productId}")
	public ResponseEntity<Product> get(@PathVariable String productId){
		
		Product p = new Product();
		
		return new ResponseEntity<>(p, HttpStatus.OK);
	}
}
