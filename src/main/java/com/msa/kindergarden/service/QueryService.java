package com.msa.kindergarden.service;

import com.msa.kindergarden.domain.Query;
import org.springframework.data.domain.Page;

public interface QueryService {
    Page<Query> getAllQueries(int page, int size, String sortBy);
    Query createQuery(Query query);
    Query updateQuery(Long queryId, Query query);
    void deleteQuery(Long queryId);
}
