package ru.itmo.history.PeopleAndMoney.model.domain;

import java.util.List;

public class Job {
	private long id;
	private String name;

	//TODO: @OneToMany
	private List<Salary> salaryList;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Salary> getSalaryList() {
		return salaryList;
	}

	public void setSalaryList(List<Salary> salaryList) {
		this.salaryList = salaryList;
	}
}
