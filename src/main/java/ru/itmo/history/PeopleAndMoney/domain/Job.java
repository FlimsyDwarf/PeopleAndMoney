package ru.itmo.history.PeopleAndMoney.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
	@JsonIgnore
	@OneToMany(mappedBy = "job", cascade = CascadeType.ALL)
	private List<Salary> salaries;

}
