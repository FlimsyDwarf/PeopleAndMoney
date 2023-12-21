package ru.itmo.history.PeopleAndMoney.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import lombok.Data;

@Entity
@Data
public class Salary {
	@Id
	@GeneratedValue
	private long id;

	@ManyToOne
	@JoinColumn(name = "period_id", nullable = false)
	private Period period;

	@ManyToOne
	@JoinColumn(name = "job_id", nullable = false)
	private Job job;

	@Min(0)
	private double salary;

}
