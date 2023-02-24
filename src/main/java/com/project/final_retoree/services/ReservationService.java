package com.project.final_retoree.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.final_retoree.daos.ReservationDao;

@Service
public class ReservationService {
    @Autowired
    ReservationDao reservatioinDao;

    public Object getUserReservation(Object dataMap) {
        String sqlMapId = "Reservation.selectFromReservation";
        Object result = reservatioinDao.getUserReservation(sqlMapId, dataMap);
        return result;
    }

}