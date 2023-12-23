package ru.itmo.history.PeopleAndMoney.form;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.NonNull;

@Data
public class PeriodData {

    @NotNull
    @Min(1921)
    @Max(1991)
    private int year;

//    @NotNull
//    @Min(0)
//    @Max(Long.MAX_VALUE - 1)
//    private long sum;
}
