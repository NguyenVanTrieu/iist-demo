package com.iist.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.iist.demo.model.Product;
import com.iist.demo.model.response.ListPagedResponse;
import com.iist.demo.service.ProductService;

@RestController
@RequestMapping(value="${request.mapping}" + "/products")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@GetMapping
	public ResponseEntity<ListPagedResponse<Product>> gets(
			@RequestParam( required = false, defaultValue = "20") int pageSize,
			@RequestParam( required = false, defaultValue = "0") int pageNumber,
			@RequestParam( required = false) String search){
		
		ListPagedResponse<Product> result = productService.gets(search, pageSize, pageNumber);
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
	
}
