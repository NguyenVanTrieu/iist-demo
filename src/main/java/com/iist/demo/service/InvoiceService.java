package com.iist.demo.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iist.demo.model.Invoice;
import com.iist.demo.model.InvoiceDetail;
import com.iist.demo.model.response.ListPagedResponse;
import com.iist.demo.model.view.InvoiceView;
import com.iist.demo.repository.InvoiceDetailRepository;
import com.iist.demo.repository.InvoiceRepository;

@Service
public class InvoiceService extends BaseService{

	@Autowired
	private InvoiceRepository invoiceRepository;
	
	@Autowired
	private InvoiceDetailRepository detailRepository;
	
	public ListPagedResponse<Invoice> gets(int pageSize, int pageNumber, Date fromDate, Date toDate){
		
		List<Invoice> items = invoiceRepository.gets(pageSize, pageNumber, fromDate, toDate);
		Integer count = invoiceRepository.count(fromDate, toDate);
		
		ListPagedResponse<Invoice> result = new ListPagedResponse<Invoice>(items, pageSize, pageNumber, count);
		
		return result;
	}
	
	public Integer create(InvoiceView invoice) {
		invoice.setRegUser(getCurrentUser());
		invoice.setRegDttm(new Date());
		invoiceRepository.create(invoice);
		return 1;
	}
	
	public InvoiceView get(String invoiceId){
		
		InvoiceView invoice = invoiceRepository.get(invoiceId);
		
		List<InvoiceDetail> invoiceDetails = detailRepository.gets(invoiceId);
		invoice.setInvoiceDetails(invoiceDetails);
		
		return invoice;
	}
	
}
