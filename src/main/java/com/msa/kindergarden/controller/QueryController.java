package com.msa.kindergarden.controller;

import com.msa.kindergarden.domain.Query;
import com.msa.kindergarden.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/queries")
public class QueryController {

    private final QueryService queryService;

    @Autowired
    public QueryController(QueryService queryService) {
        this.queryService = queryService;
    }

    @GetMapping("")
    public String getAllQueries(@RequestParam(defaultValue = "0") int page,
                                @RequestParam(defaultValue = "5") int size,
                                @RequestParam(defaultValue = "id") String sortBy,
                                Model model) {
        Page<Query> pageResult = queryService.getAllQueries(page, size, sortBy);
        model.addAttribute("queries", pageResult.getContent());
        model.addAttribute("page", pageResult.getNumber());
        model.addAttribute("totalPages", pageResult.getTotalPages());
        model.addAttribute("size", pageResult.getSize());
        model.addAttribute("sortBy", sortBy);

        return "pages/query";
    }

    @GetMapping("/{id}")
    public String getQueryById(@PathVariable Long id, Model model) {
        Query query = queryService.getQueryById(id);
        model.addAttribute("query", query);
        return "pages/query_detail";
    }

    @GetMapping("/create")
    public String showCreateQueryForm(Model model) {
        model.addAttribute("query", new Query());
        return "pages/query_form";
    }

    @PostMapping("/create")
    public String createQuery(@ModelAttribute Query query) {
        queryService.createQuery(query);
        return "redirect:/queries";
    }

    @GetMapping("/{id}/update")
    public String showUpdateQueryForm(@PathVariable Long id, Model model) {
        Query query = queryService.getQueryById(id);
        model.addAttribute("query", query);
        return "pages/query_form";
    }

    @PostMapping("/{id}/update")
    public String updateQuery(@PathVariable Long id, @ModelAttribute Query query) {
        queryService.updateQuery(id, query);
        return "redirect:/queries";
    }

    @GetMapping("/{id}/delete")
    public String deleteQuery(@PathVariable Long id) {
        queryService.deleteQuery(id);
        return "redirect:/queries";
    }
}
