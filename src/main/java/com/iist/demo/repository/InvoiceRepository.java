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
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.iist.demo.model.Invoice;
import com.iist.demo.model.view.InvoiceView;

@Repository
public class InvoiceRepository {

	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;
	
	@Autowired
	private InvoiceDetailRepository detailRepository;
	
	private static final String SQL_QUERY_CREATE = "INSERT INTO tbl_invoices (id, amount, status, reg_user, reg_dttm)"
			+ " VALUES(:id, :amount, :status, :regUser, :regDttm)";
	
	@Transactional
	public int create(InvoiceView invoice) {
		
		detailRepository.createList(invoice.getInvoiceDetails());
		jdbcTemplate.update(SQL_QUERY_CREATE, new BeanPropertySqlParameterSource(invoice));
		return 1;
	}
	
	public List<Invoice> gets(int pageSize, int pageNumber, Date fromDate, Date toDate) {
		
		String sql = "SELECT * FROM tbl_invoices WHERE 1";

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
		
		String sql = "SELECT count(id) FROM tbl_invoices WHERE 1";

		Map<String, Object> argMap = new HashMap<String, Object>();
		
		if (fromDate != null) {
			sql += " AND reg_dttm >= :fromDate ";
			argMap.put("fromDate", fromDate);
		}
		
		if (toDate != null) {
			sql += " AND reg_dttm <= :toDate ";
			argMap.put("toDate", toDate);
		}
		
		return this.jdbcTemplate.queryForObject(sql, argMap, Integer.class);
		
	}
	
	public InvoiceView get(String id) {
		
		String sql = "SELECT * FROM tbl_invoices WHERE id=:id";
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		
		return this.jdbcTemplate.queryForObject(sql, paramMap, new BeanPropertyRowMapper<InvoiceView>(InvoiceView.class));
	}

}
