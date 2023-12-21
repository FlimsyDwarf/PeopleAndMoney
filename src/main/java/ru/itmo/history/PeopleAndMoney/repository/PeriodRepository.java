package ru.itmo.history.PeopleAndMoney.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.itmo.history.PeopleAndMoney.domain.Period;

import java.util.List;

public interface PeriodRepository extends JpaRepository<Period, Long> {

    List<Period> findAllByOrderByStart();

    Period findByStart(int start);

    Period findById(long id);

    @Query(value = "SELECT * FROM period WHERE year BETWEEN start AND end", nativeQuery = true)
    Period findByYear(int year);
}
