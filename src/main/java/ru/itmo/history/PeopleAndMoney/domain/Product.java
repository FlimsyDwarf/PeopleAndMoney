package ru.itmo.history.PeopleAndMoney.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;


import java.util.List;

@Entity
@Data
public class Product {
	@Id
	@GeneratedValue
	private long id;

	@NotNull
	@NotEmpty
	private String name;

	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private List<Price> prices;
}

