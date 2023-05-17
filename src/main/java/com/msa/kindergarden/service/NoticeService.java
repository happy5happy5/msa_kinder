package com.msa.kindergarden.service;

import com.msa.kindergarden.domain.Notice;

import java.util.List;

public interface NoticeService {
    void createNotice(Notice notice);
    void deleteNotice(Long noticeId);
    List<Notice> getAllNotices();
    Notice getNoticeById(Long noticeId);
    List<Notice> getAllNotices(int page, int size, String sortBy);
    long countNotices();
    Notice updateNotice(Notice notice);
}
