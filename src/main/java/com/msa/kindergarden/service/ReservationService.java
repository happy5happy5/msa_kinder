package com.msa.kindergarden.service;

import com.msa.kindergarden.domain.Reservation;

import java.util.List;

public interface ReservationService {
    void createReservation(Reservation reservation);

    List<Reservation> getReservations();


}
