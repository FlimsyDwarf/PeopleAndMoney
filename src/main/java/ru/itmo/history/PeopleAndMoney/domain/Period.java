package ru.itmo.history.PeopleAndMoney.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.*;
import lombok.Data;

@Entity
@Data
public class Period {
	@Id
	@GeneratedValue
	private long id;

	@NotBlank
	private String name;

	@NotBlank
	private String description;

	@NotNull
	@Min(1921)
	@Max(1991)
	private int start;

	@NotNull
	@Min(1921)
	@Max(1991)
	private int end;
	/**
	 *	старые_деньги * коэф = новые_деньги
	 */
	@NotNull
	@Min(0)
	private double coef;

}
