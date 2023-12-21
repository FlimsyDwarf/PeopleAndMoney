package ru.itmo.history.PeopleAndMoney.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itmo.history.PeopleAndMoney.domain.Period;
import ru.itmo.history.PeopleAndMoney.domain.Price;
import java.util.List;

public interface PriceRepository extends JpaRepository<Price, Long> {

    List<Price> findAllByPeriod(Period period);

    List<Price> findAllByPeriodId(long id);

}
