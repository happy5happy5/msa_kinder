package com.msa.kindergarden.service;

import com.msa.kindergarden.domain.Notice;
import org.springframework.data.domain.Page;

import java.util.List;

public interface NoticeService {
    void createNotice(Notice notice);
    void deleteNotice(Long noticeId);
    List<Notice> getAllNotices();
    Notice getNoticeById(Long noticeId);
    Page<Notice> getAllNotices(int page, int size, String sortBy);
    long countNotices();
    Notice updateNotice(Notice notice);
}
