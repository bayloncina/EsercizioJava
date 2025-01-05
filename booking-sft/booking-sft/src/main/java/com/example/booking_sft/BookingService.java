package com.example.booking_sft;

import java.util.List;

import org.springframework.stereotype.Service;

@Service

public class BookingService {
    private final  BookingRepository repoBooking;

    public BookingService(BookingRepository repoBooking) {
        this.repoBooking = repoBooking;
    }

    public Booking addBooking(Booking booking) {
        return repoBooking.save(booking);
    }
    public Booking getBookingById(Long idBooking) {
        return repoBooking.findById(idBooking)
                          .orElseThrow(() -> new RuntimeException("Prenotazione non trovata"));
    }
    public List<Booking> getAllBookings(){
        return repoBooking.findAll();
    }
    public void updateBooking(Booking booking) {
        // Usa il repository per aggiornare la prenotazione nel database
    	repoBooking.save(booking);
    }
    
    public void deleteBooking(Long id) {
        repoBooking.deleteById(id);
    }
    
}
