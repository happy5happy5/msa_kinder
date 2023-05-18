package com.msa.kindergarden.repository;

import com.msa.kindergarden.domain.Query;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QueryRepository extends JpaRepository<Query, Long> {
}
