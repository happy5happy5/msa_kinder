package com.msa.kindergarden.repository;

import com.msa.kindergarden.domain.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository  extends JpaRepository<Reservation, String> {


}
