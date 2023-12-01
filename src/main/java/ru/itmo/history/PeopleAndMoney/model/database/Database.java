package ru.itmo.history.PeopleAndMoney.model.database;

import ru.itmo.history.PeopleAndMoney.domain.Job;
import ru.itmo.history.PeopleAndMoney.domain.Period;
import ru.itmo.history.PeopleAndMoney.domain.Product;

import java.util.List;

public class Database {
/**
	Это заглушка, потом добавим MariaDB... Возможно
 **/

List<Job> jobs;
List<Period>periods;
List<Product> products;

	void init() {
		createPeriod(1, "ледниковый", -1000000, -500000, 10000,
				"ну это было давно и холодно");
		createPeriod(2, "Сталин", 1924, 1953, 100,
				"...");
		createPeriod(2, "Путин", 2000, 5000, 0.1,
				"Ну ладно");

	}

	void createPeriod(long id, String name, int start, int end, double coef, String description) {
		Period period = new Period();
		period.setId(id);
		period.setName(name);
		period.setCoef(coef);
		period.setDescription(description);
		period.setStart(start);
		period.setEnd(end);
		periods.add(period);
	}

	void createProduct(){;}

//	void createPriceList(double... prices) {
//		for (double price : prices
//		List<Double> priceList = List.of(...prices);
//	}
}
