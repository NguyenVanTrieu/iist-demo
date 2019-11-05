package com.iist.demo.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.iist.demo.model.Product;

@Repository
public class ProductRepository {

	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;
	
	public List<Product> gets(String search, int pageSize, int pageNumber) {
		String sql = "SELECT * FROM tbl_products WHERE 1";

		Map<String, Object> argMap = new HashMap<String, Object>();
		
		if (!StringUtils.isEmpty(search)) {
			sql += " AND product_name like :search";
			argMap.put("search", search + "%");
		}
		
		sql += " ORDER BY product_name" ;
		
		sql += " limit " + pageSize + " offset " + pageSize * pageNumber;

		return this.jdbcTemplate.query(sql, argMap, new BeanPropertyRowMapper<Product>(Product.class));
	}
	
	public Integer count(String search, int pageSize,
			int pageNumber) {
		String sql = "SELECT count(id) FROM tbl_products WHERE 1=1";

		Map<String, Object> argMap = new HashMap<String, Object>();
		if (!StringUtils.isEmpty(search)) {
			sql += " AND product_name like :search";
			argMap.put("search", search + "%");
		}
		
		return this.jdbcTemplate.queryForObject(sql, argMap, Integer.class);
		
	}
	
}
