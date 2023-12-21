package ru.itmo.history.PeopleAndMoney.domain;

import jakarta.persistence.*;
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
	@JoinColumn(name = "period_id", nullable = false)
	private Period period;

	private double price;
}
