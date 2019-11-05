package com.iist.demo.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.iist.demo.model.Invoice;
import com.iist.demo.model.response.ListPagedResponse;
import com.iist.demo.model.view.InvoiceView;
import com.iist.demo.service.InvoiceService;

@RestController
@RequestMapping(value="${request.mapping}" + "/invoices")
public class InvoiceController {

	@Autowired
	private InvoiceService invoiceService;
	
	@GetMapping(value = "/{invoiceId}")
	public ResponseEntity<InvoiceView> get(@PathVariable String invoiceId){
		
		InvoiceView invoice = invoiceService.get(invoiceId);
		
		return new ResponseEntity<InvoiceView>(invoice, HttpStatus.OK);
	}
	
	@GetMapping
	public ResponseEntity<ListPagedResponse<Invoice>> gets(
			@RequestParam( required = false, defaultValue = "20") int pageSize,
			@RequestParam( required = false, defaultValue = "0") int pageNumber,
			@RequestParam( required = false) Date fromDate,
			@RequestParam( required = false) Date toDate){
		
		ListPagedResponse<Invoice> result = invoiceService.gets(pageSize, pageNumber, fromDate, toDate);
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
	
	@PostMapping
	public ResponseEntity<Integer> create(@RequestBody InvoiceView invoice){
		
		Integer result = invoiceService.create(invoice);
		
		return new ResponseEntity<Integer>(result, HttpStatus.OK);
	}
	
}
