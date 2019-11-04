package com.iist.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="${request.mapping}" + "/invoices")
public class InvoiceController {

}
