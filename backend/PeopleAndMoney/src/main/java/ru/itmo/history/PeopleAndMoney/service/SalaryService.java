package ru.itmo.history.PeopleAndMoney.service;

import org.springframework.stereotype.Service;
import ru.itmo.history.PeopleAndMoney.domain.Period;
import ru.itmo.history.PeopleAndMoney.domain.Salary;
import ru.itmo.history.PeopleAndMoney.repository.SalaryRepository;

import java.util.List;

@Service
public class SalaryService {
    private final SalaryRepository salaryRepository;

    public SalaryService(SalaryRepository salaryRepository) {
        this.salaryRepository = salaryRepository;
    }

    public List<Salary> findAllByPeriod(Period period) {
        return salaryRepository.findAllByPeriod(period);
    }

    public List<Salary> findAllByPeriodId(long id) {
        return salaryRepository.findAllByPeriodId(id);
    }
}
