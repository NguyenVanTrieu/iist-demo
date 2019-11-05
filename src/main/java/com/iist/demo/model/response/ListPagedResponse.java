package com.iist.demo.model.response;

import java.util.List;

public class ListPagedResponse <T>{

	private List<T> items;
	private int pageSize;
	private int pageNumber;
	private Integer count;
	
	
	
	public ListPagedResponse(List<T> items, int pageSize, int pageNumber, Integer count) {
		super();
		this.items = items;
		this.pageSize = pageSize;
		this.pageNumber = pageNumber;
		this.count = count;
	}
	
	public List<T> getItems() {
		return items;
	}
	public void setItems(List<T> items) {
		this.items = items;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
}
