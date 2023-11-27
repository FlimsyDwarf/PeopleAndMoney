package ru.itmo.history.PeopleAndMoney.model.domain;

public class Price {
	private long id;
//	TODO: ManyToOne
//	private Product product;

	//TODO: ManyToOne
	private Period period;

	private double price;

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
}
