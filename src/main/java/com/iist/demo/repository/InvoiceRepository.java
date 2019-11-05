package com.iist.demo.repository;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.iist.demo.model.Invoice;

public class InvoiceRepository {

	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;
	
	private static final String SQL_QUERY_CREATE = "INSERT INTO tbl_invoices (id, amount, status, reg_user, reg_dttm)"
			+ " VALUES(:id, :amount, :status, :regUser, :regDttm)";
	
	public int create(Invoice invoice) {
		return jdbcTemplate.update(SQL_QUERY_CREATE, new BeanPropertySqlParameterSource(invoice));
	}
	
	public List<Invoice> gets(int pageSize,
			int pageNumber, Date fromDate, Date toDate) {
		String sql = "SELECT * FROM tbl_invoices"
				+ " WHERE 1";

		Map<String, Object> argMap = new HashMap<String, Object>();
		
		if (fromDate != null) {
			sql += " AND reg_dttm >= :fromDate ";
			argMap.put("fromDate", fromDate);
		}
		
		if (toDate != null) {
			sql += " AND reg_dttm <= :toDate ";
			argMap.put("toDate", toDate);
		}
		
		sql += " ORDER BY reg_dttm desc" ;
		
		sql += " limit " + pageSize + " offset " + pageSize * pageNumber;

		return this.jdbcTemplate.query(sql, argMap, new BeanPropertyRowMapper<Invoice>(Invoice.class));
	}
	
	public Integer count(Date fromDate, Date toDate) {
		String sql = "SELECT count(id) FROM tbl_invoices"
				+ " WHERE 1";

		Map<String, Object> argMap = new HashMap<String, Object>();
		
		if (fromDate != null) {
			sql += " AND reg_dttm >= :fromDate ";
			argMap.put("fromDate", fromDate);
		}
		
		if (toDate != null) {
			sql += " AND reg_dttm <= :toDate ";
			argMap.put("toDate", toDate);
		}
		
		return this.jdbcTemplate.queryForObject(sql, argMap, new BeanPropertyRowMapper<Integer>(Integer.class));
	}
	
	public Invoice get(String id) {
		
		String sql = "SELECT * FROM tbl_invoices WHERE id=:id";
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		
		try {
			return this.jdbcTemplate.queryForObject(sql, paramMap, new BeanPropertyRowMapper<Invoice>(Invoice.class));
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

}
