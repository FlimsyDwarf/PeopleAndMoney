package ru.itmo.history.PeopleAndMoney.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itmo.history.PeopleAndMoney.domain.Job;

import java.util.List;

public interface JobRepository extends JpaRepository<Job, Long> {
}
