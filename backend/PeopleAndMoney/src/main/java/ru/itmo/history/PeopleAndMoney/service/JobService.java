package ru.itmo.history.PeopleAndMoney.service;

import org.springframework.stereotype.Service;
import ru.itmo.history.PeopleAndMoney.domain.Job;
import ru.itmo.history.PeopleAndMoney.repository.JobRepository;

import java.util.List;

@Service
public class JobService {

    private final JobRepository jobRepository;

    public JobService(JobRepository jobRepository) {
        this.jobRepository = jobRepository;
    }

    public List<Job> findAll() {
        return jobRepository.findAll();
    }
}
