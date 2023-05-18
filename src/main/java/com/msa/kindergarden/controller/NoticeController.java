package com.msa.kindergarden.controller;

import com.msa.kindergarden.domain.Notice;
import com.msa.kindergarden.service.NoticeService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/notice")
@AllArgsConstructor
public class NoticeController {

    private NoticeService noticeService;

    @GetMapping("/create")
    public String createNoticeForm(Model model){
//        System.out.println("[Notice create]만들기 시작");
        model.addAttribute("notice", new Notice());
        return "pages/notice_form";
    }

    @PostMapping("/create")
    public String createNotice(@ModelAttribute Notice notice){
        noticeService.createNotice(notice);
        return "redirect:/notice";
    }

    @GetMapping("/delete")
    public String deleteNoticeForm(Model model){
        List<Notice> notices = noticeService.getAllNotices();
        model.addAttribute("notices", notices);
        return "pages/notice_delete";
    }

    @GetMapping("/detail")
    public String getNoticeById(@RequestParam("id") Long noticeId, Model model){
        Notice notice = noticeService.getNoticeById(noticeId);
        model.addAttribute("notice", notice);
        return "pages/notice_detail";
    }

    @GetMapping
    public String getAllNotices(@RequestParam(defaultValue = "0") int page,
                                @RequestParam(defaultValue = "10") int size,
                                @RequestParam(defaultValue = "createdAt") String sortBy,
                                Model model){
        List<Notice> notices = noticeService.getAllNotices(page, size, sortBy);
        model.addAttribute("notices", notices);
        model.addAttribute("totalPages", (int) Math.ceil((double)noticeService.countNotices() / size));
        return "pages/notice";
    }

    // Build Update Notice REST API
    @PostMapping("{id}")
    // <http://localhost:9090/notice/{id}>
    public ResponseEntity<Notice> updateNotice(@PathVariable("id") Long noticeId,
                                               @RequestBody Notice notice){
        notice.setId(noticeId);
        Notice updatedNotice = noticeService.updateNotice(notice);
        return new ResponseEntity<>(updatedNotice, HttpStatus.OK);
    }

    // Build Delete Notice REST API
    @PostMapping("/delete/{id}")
    public String deleteNotice(@PathVariable Long id){
        noticeService.deleteNotice(id);
        return "redirect:/notice";
    }

}