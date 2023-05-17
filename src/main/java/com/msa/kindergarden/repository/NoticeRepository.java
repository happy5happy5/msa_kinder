package com.msa.kindergarden.repository;


import com.msa.kindergarden.domain.Notice;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoticeRepository extends JpaRepository<Notice, Long> {
}
