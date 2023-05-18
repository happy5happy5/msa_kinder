package com.msa.kindergarden.service.impl;

import com.msa.kindergarden.domain.Notice;
import com.msa.kindergarden.repository.NoticeRepository;
import com.msa.kindergarden.service.NoticeService;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

    private NoticeRepository noticeRepository;

    @Override
    public void createNotice(Notice notice) {
        noticeRepository.save(notice);
    }

    @Override
    public void deleteNotice(Long noticeId) {
        noticeRepository.deleteById(noticeId);
    }

    @Override
    public List<Notice> getAllNotices() {
        return noticeRepository.findAll();
    }

    @Override
    public Notice getNoticeById(Long noticeId) {
        return noticeRepository.findById(noticeId).orElse(null);
    }

    @Override
    public Page<Notice> getAllNotices(int page, int size, String sortBy) {
        Pageable pageable = PageRequest.of(page, size, Sort.by(sortBy).descending());
        return noticeRepository.findAll(pageable);
    }

    @Override
    public long countNotices() {
        return noticeRepository.count();
    }

    @Override
    public Notice updateNotice(Notice notice) {
        return noticeRepository.save(notice);
    }
}
