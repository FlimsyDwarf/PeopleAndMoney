package ru.itmo.history.PeopleAndMoney.service;


import org.springframework.stereotype.Service;
import ru.itmo.history.PeopleAndMoney.domain.Period;
import ru.itmo.history.PeopleAndMoney.domain.Price;
import ru.itmo.history.PeopleAndMoney.repository.PriceRepository;

import java.util.List;

@Service
public class PriceService {
    private final PriceRepository priceRepository;

    public PriceService(PriceRepository priceRepository) {
        this.priceRepository = priceRepository;
    }

    public List<Price> findPricesByPeriod(Period period) {
        return priceRepository.findAllByPeriod(period);
    }
}
