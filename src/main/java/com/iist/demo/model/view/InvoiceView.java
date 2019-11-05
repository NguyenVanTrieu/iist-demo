package com.iist.demo.model.view;

import java.util.List;

import com.iist.demo.model.Invoice;
import com.iist.demo.model.InvoiceDetail;

public class InvoiceView extends Invoice{

	private List<InvoiceDetail> invoiceDetails;

	public List<InvoiceDetail> getInvoiceDetails() {
		return invoiceDetails;
	}

	public void setInvoiceDetails(List<InvoiceDetail> invoiceDetails) {
		this.invoiceDetails = invoiceDetails;
	}
	
}
