package ru.itmo.history.PeopleAndMoney.service;

import org.springframework.stereotype.Service;
import ru.itmo.history.PeopleAndMoney.domain.Period;
import ru.itmo.history.PeopleAndMoney.repository.PeriodRepository;

import java.util.List;

@Service
public class PeriodService {
    private final PeriodRepository periodRepository;

    public PeriodService(PeriodRepository periodRepository) {
        this.periodRepository = periodRepository;
    }

    public List<Period> findAll() {
        return periodRepository.findAllByOrderByStart();
    }

    public Period findByYear(int year) {
        return periodRepository.findByYear(year);
    }

    public Period findById(long id) {
        return periodRepository.findById(id);
    }
}
