package com.msa.kindergarden.service.impl;

import com.msa.kindergarden.domain.Query;
import com.msa.kindergarden.repository.QueryRepository;
import com.msa.kindergarden.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class QueryServiceImpl implements QueryService {

    private final QueryRepository queryRepository;

    @Autowired
    public QueryServiceImpl(QueryRepository queryRepository) {
        this.queryRepository = queryRepository;
    }

    @Override
    public Page<Query> getAllQueries(int page, int size, String sortBy) {
        Pageable pageable = PageRequest.of(page, size, Sort.by(sortBy));
        return queryRepository.findAll(pageable);
    }

    @Override
    public Query createQuery(Query query) {
        return queryRepository.save(query);
    }

    @Override
    public Query updateQuery(Long queryId, Query query) {
        Query existingQuery = queryRepository.findById(queryId)
                .orElse(null);
        if (existingQuery == null) {
            // throw new ResourceNotFoundException("Query", "id", queryId);
            return null;
        }
        existingQuery.setTitle(query.getTitle());
        existingQuery.setContent(query.getContent());
        existingQuery.setUser(query.getUser());
        return queryRepository.save(existingQuery);
    }

    @Override
    public void deleteQuery(Long queryId) {
        Query query = queryRepository.findById(queryId)
                .orElse(null);
        if (query != null) {
            queryRepository.delete(query);
        }
    }
}

