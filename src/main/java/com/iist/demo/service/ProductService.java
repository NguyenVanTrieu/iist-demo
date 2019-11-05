package com.iist.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iist.demo.model.Product;
import com.iist.demo.model.response.ListPagedResponse;
import com.iist.demo.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;
	
	public ListPagedResponse<Product> gets(String search, int pageSize, int pageNumber) {
		
		List<Product> items = productRepository.gets(search, pageSize, pageNumber);
		Integer count = productRepository.count(search, pageSize, pageNumber);
		
		ListPagedResponse<Product> result = new ListPagedResponse<Product>(items, pageSize, pageNumber, count);
		
		return result;
	}
}
