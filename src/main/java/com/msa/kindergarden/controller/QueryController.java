package com.msa.kindergarden.controller;

import com.msa.kindergarden.domain.Query;
import com.msa.kindergarden.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

    @PostMapping("/")
    public ResponseEntity<Query> createQuery(@RequestBody Query query) {
        Query createdQuery = queryService.createQuery(query);
        return new ResponseEntity<>(createdQuery, HttpStatus.CREATED);
    }

    @PutMapping("/{queryId}")
    public ResponseEntity<Query> updateQuery(@PathVariable Long queryId, @RequestBody Query query) {
        Query updatedQuery = queryService.updateQuery(queryId, query);
        return new ResponseEntity<>(updatedQuery, HttpStatus.OK);
    }

    @DeleteMapping("/{queryId}")
    public ResponseEntity<Void> deleteQuery(@PathVariable Long queryId) {
        queryService.deleteQuery(queryId);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}

