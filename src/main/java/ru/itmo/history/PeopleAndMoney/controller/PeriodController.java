package ru.itmo.history.PeopleAndMoney.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ru.itmo.history.PeopleAndMoney.domain.Job;
import ru.itmo.history.PeopleAndMoney.domain.Period;
import ru.itmo.history.PeopleAndMoney.domain.Salary;
import ru.itmo.history.PeopleAndMoney.service.JobService;
import ru.itmo.history.PeopleAndMoney.service.PeriodService;
import ru.itmo.history.PeopleAndMoney.service.SalaryService;

import java.util.List;

@RestController
@RequestMapping("/api")
public class PeriodController {
    private final PeriodService periodService;
    private final SalaryService salaryService;
    private final JobService jobService;

    public PeriodController(PeriodService periodService, SalaryService salaryService, JobService jobService) {
        this.periodService = periodService;
        this.salaryService = salaryService;
        this.jobService = jobService;
    }
    @GetMapping("period")
    public Period getPeriod(@RequestParam int year) {
        return periodService.findByYear(year);
    }

    @GetMapping("periodById")
    public Period getPeriodById(@RequestParam long id) {
        return periodService.findById(id);
    }

    @GetMapping("salaries")
    public List<Salary> getSalaries(@Valid @RequestParam Period period) {
        return salaryService.findAllByPeriod(period);
    }

    @GetMapping("jobs")
    public List<Job> getJobs() {
        List<Job> tmp = jobService.findAll();
        return jobService.findAll();
    }
}
