package ru.itmo.history.PeopleAndMoney.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itmo.history.PeopleAndMoney.domain.Period;
import ru.itmo.history.PeopleAndMoney.domain.Salary;

import java.util.List;

public interface SalaryRepository extends JpaRepository<Salary, Long> {

    List<Salary> findAllByPeriod(Period period);

    List<Salary> findAllByPeriodId(long id);
}
