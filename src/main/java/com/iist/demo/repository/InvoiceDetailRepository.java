package com.iist.demo.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

import com.iist.demo.model.InvoiceDetail;

public class InvoiceDetailRepository {

	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;
	
	private final String SQL_QUERY_CREATE = "INSERT INTO tbl_invoice_details (id, invoice_id, product_id, product_name, quantity, price, status, reg_user, reg_dttm)"
			+ " VALUES(:id, :invoiceId, :productId, :productName, :status, :regUser, :regDttm)";
	
	public int createList(List<InvoiceDetail> invoiceDetails) {
		
		if(invoiceDetails == null || invoiceDetails.isEmpty()) {
			return 0;
		}
		SqlParameterSource[] sqlParamsList = new SqlParameterSource[invoiceDetails.size()];
		for(int i = 0; i < sqlParamsList.length; i++) {
			sqlParamsList[i] = new BeanPropertySqlParameterSource(invoiceDetails.get(i));
		}
		
		return this.jdbcTemplate.batchUpdate(SQL_QUERY_CREATE, sqlParamsList) != null  ? sqlParamsList.length : 0;
	}
	
	public List<InvoiceDetail> gets(String invoiceId) {
		
		String sql = "select * from tbl_invoice_details where invoice_id =:invoiceId";
		
		Map<String, Object> argMap = new HashMap<String, Object>();
		argMap.put("invoiceId", invoiceId);
		
		return this.jdbcTemplate.query(sql, argMap, new BeanPropertyRowMapper<InvoiceDetail>(InvoiceDetail.class));
	}

}
