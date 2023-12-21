package ru.itmo.history.PeopleAndMoney.domain;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
public class Job {
	@Id
	@GeneratedValue
	private long id;
	private String name;

	//TODO: @OneToMany
	@OneToMany(mappedBy = "job", cascade = CascadeType.ALL)
	private List<Salary> salaries;

}
