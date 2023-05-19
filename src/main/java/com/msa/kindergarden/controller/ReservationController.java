package com.msa.kindergarden.controller;

import com.msa.kindergarden.domain.Reservation;
import com.msa.kindergarden.service.ReservationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
    private final ReservationService reservationService;

    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @GetMapping
    public String listReservations(Model model) {
        List<Reservation> reservations = reservationService.getReservations();
        model.addAttribute("reservations", reservations);
        return "pages/reservation";
    }

    @GetMapping("/create")
    public String showCreateReservationForm(Model model) {
        model.addAttribute("reservation", new Reservation());
        return "pages/reservation_form";
    }

    @PostMapping("/create")
    public String createReservation(@ModelAttribute Reservation reservation) {
//        if (reservation.getCurriculum().equals("아침반")) {
//            reservation.setCurriculum("아침반");
//        } else if (setting.equals("b")) {
//            reservation.setCurriculum("점심반");
//        } else if (setting.equals("c")) {
//            reservation.setCurriculum("저녁반");
//        }
        reservationService.createReservation(reservation);
        return "redirect:/reservation";
    }
}
