package com.msa.kindergarden.service.impl;

import com.msa.kindergarden.domain.Reservation;
import com.msa.kindergarden.repository.ReservationRepository;
import com.msa.kindergarden.service.ReservationService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationServiceImpl implements ReservationService {

    private final ReservationRepository reservationRepository;

    public ReservationServiceImpl(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    @Override
    public void createReservation(Reservation reservation) {
         reservationRepository.save(reservation);
    }

    @Override
    public List<Reservation> getReservations() {
        return null;
    }
}
