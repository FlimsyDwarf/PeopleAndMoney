package ru.itmo.history.PeopleAndMoney.form.validator;

import io.micrometer.common.lang.NonNull;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.stereotype.Component;
import ru.itmo.history.PeopleAndMoney.domain.Period;
import ru.itmo.history.PeopleAndMoney.form.PeriodData;
import ru.itmo.history.PeopleAndMoney.service.PeriodService;

import java.util.List;

@Component
public class PeriodDataValidator implements Validator {

    private final PeriodService periodService;

    public PeriodDataValidator(PeriodService periodService) {
        this.periodService = periodService;
    }

    public boolean supports(@NonNull Class<?> clazz) {
        return PeriodData.class.equals(clazz);
    }

    @Override
    public void validate(@NonNull Object target, Errors errors) {
        if (!errors.hasErrors()) {
            PeriodData periodData = (PeriodData) target;
            int year = periodData.getYear();
            List<Period> periods = periodService.findAll();
            boolean usersPeriodIsValid = false;
            for (Period period : periods) {
                if (period.getStart() <= year && year <= period.getEnd()) {
                    usersPeriodIsValid = true;
                    break;
                }
            }
            if (!usersPeriodIsValid) {
                errors.rejectValue("age", "age.is-invalid", "Введите значение из диапазона 1921-1991");
            }
        }
    }
}
