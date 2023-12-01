package ru.itmo.history.PeopleAndMoney.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.itmo.history.PeopleAndMoney.domain.Period;

@Controller
public class IndexPage {

    @GetMapping({"", "/"})
    public String indexPage(Model model) {
        model.addAttribute("period", new Period());
        return "IndexPage";
    }

    @PostMapping({"", "/"})
    public String query(Model model) {
        return "IndexPage";
    }

}
