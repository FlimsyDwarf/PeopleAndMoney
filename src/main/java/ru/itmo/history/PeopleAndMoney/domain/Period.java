package ru.itmo.history.PeopleAndMoney.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Entity
@Data
public class Period {
	@Id
	@GeneratedValue
	private long id;
	@NotNull
	@NotEmpty
	private String name;
	//private String leader;
	@NotEmpty
	@NotBlank
	private String description;
	@NotNull
	private int start;
	@NotNull
	private int end;
	/**
	 *	старые_деньги * коэф = новые_деньги
	 */
	@NotNull
	private double coef;

}
