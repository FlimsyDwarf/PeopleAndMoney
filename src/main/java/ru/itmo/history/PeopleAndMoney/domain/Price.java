package ru.itmo.history.PeopleAndMoney.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Entity
@Data
public class Price {
	@Id
	@GeneratedValue
	private long id;
	@ManyToOne
	private Product product;

	//TODO: ManyToOne
	@NotNull
	@ManyToOne
	private Period period;

	private double price;
}
