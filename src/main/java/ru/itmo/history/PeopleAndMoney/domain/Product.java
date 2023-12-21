package ru.itmo.history.PeopleAndMoney.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
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

	@JsonIgnore
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private List<Price> prices;
}

