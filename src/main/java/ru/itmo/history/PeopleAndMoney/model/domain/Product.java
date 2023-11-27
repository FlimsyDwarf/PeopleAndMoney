package ru.itmo.history.PeopleAndMoney.model.domain;

import java.util.List;

public class Product {
	private long id;
	private String name;
	private List<Price> priceList;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Price> getPriceList() {
		return priceList;
	}

	public void setPriceList(List<Price> priceList) {
		this.priceList = priceList;
	}
}

