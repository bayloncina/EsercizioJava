package com.example.booking_sft;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/") // Questa annotazione mappa tutte le richieste che iniziano con "/"
public class BookingController {

	// Dipendenza dal servizio BookingService per gestire la logica delle
	// prenotazioni
	private final BookingService bookingService;

	// Costruttore per iniettare il servizio BookingService
	public BookingController(BookingService bookingService) {
		this.bookingService = bookingService;
	}

	// Metodo che gestisce la richiesta GET per la home page
	@GetMapping("/")
	public String index() {
		return "index"; // Rende la vista "index.jsp"
	}

	// Metodo per visualizzare tutte le prenotazioni
	@GetMapping("/bookings")
	public String getAllBookings(Model model) {
		// Recuperiamo tutte le prenotazioni tramite il servizio
		List<Booking> bookings = bookingService.getAllBookings();
		// Aggiungiamo le prenotazioni al modello per passarle alla vista
		model.addAttribute("bookings", bookings);
		return "booking"; // Rende la vista "booking.jsp"
	}

	// Metodo che visualizza il form per aggiungere una nuova prenotazione
	@GetMapping("/addBookingForm")
	public String addBookingForm() {
		return "addBookingForm"; // Rende la vista del form per aggiungere una prenotazione
	}

	// Metodo per gestire l'invio del modulo e aggiungere una nuova prenotazione
	@PostMapping("/addBooking")
	public String addBooking(@RequestParam("nomeCliente") String nomeCliente,
			@RequestParam("emailCliente") String emailCliente, @RequestParam("dataEvento") String dataEvento,
			@RequestParam("nomeEvento") String nomeEvento, @RequestParam("numeroPrenotati") int numeroPrenotati,
			Model model) {

		// Creiamo un oggetto Booking con i dati inviati nel modulo
		Booking booking = new Booking();
		booking.setNomeCliente(nomeCliente);
		booking.setEmailCliente(emailCliente);
		booking.setDataEvento(LocalDate.parse(dataEvento)); // Convertiamo la data in un oggetto LocalDate
		booking.setNomeEvento(nomeEvento);
		booking.setNumeroPrenotati(numeroPrenotati);

		// Aggiungiamo la prenotazione tramite il servizio
		bookingService.addBooking(booking);

		// Redirigiamo alla lista delle prenotazioni
		return "redirect:/bookings";
	}

	// Metodo per visualizzare il form di modifica di una prenotazione
	@GetMapping("/editBookingForm")
	public String showEditBookingForm(@RequestParam("id") Long id, Model model) {
		Booking booking = bookingService.getBookingById(id);
		if (booking == null) {
			throw new IllegalArgumentException("Prenotazione non trovata con ID: " + id);
		}
		model.addAttribute("booking", booking);
		return "editBookingForm";
	}

	// Metodo per aggiornare una prenotazione esistente
	@PutMapping("/updateBooking/{id}")
	public String updateBooking(@PathVariable("id") Long id, @RequestParam("nomeCliente") String nomeCliente,
			@RequestParam("emailCliente") String emailCliente, @RequestParam("dataEvento") String dataEvento,
			@RequestParam("nomeEvento") String nomeEvento, @RequestParam("numeroPrenotati") int numeroPrenotati) {
		// Recupera la prenotazione da aggiornare
		Booking booking = bookingService.getBookingById(id);

		// Aggiorna i dettagli
		booking.setNomeCliente(nomeCliente);
		booking.setEmailCliente(emailCliente);
		booking.setDataEvento(LocalDate.parse(dataEvento));
		booking.setNomeEvento(nomeEvento);
		booking.setNumeroPrenotati(numeroPrenotati);

		// Salva le modifiche
		bookingService.updateBooking(booking);

		return "redirect:/index"; // Redirige alla lista delle prenotazioni
	}

	@PostMapping("/editBookingForm")
	public String handleEditBookingForm(@ModelAttribute("booking") Booking booking) {
		bookingService.updateBooking(booking);
		return "redirect:/aggiornamentoRiuscito"; // Reindirizza a una pagina o lista.
	}

	@GetMapping("/aggiornamentoRiuscito")
	
	public String showAggiornamentoRiuscito() {
		return "aggiornamentoRiuscito"; // Rende la vista "aggiornamentoRiuscito.jsp"
	}

	// Metodo per eliminare una prenotazione
	@PostMapping("/deleteBooking")
	public String deleteBooking(@RequestParam("id") Long id, Model model) {
		// Eliminiamo la prenotazione dal servizio
		bookingService.deleteBooking(id);
		// Aggiungiamo un messaggio di successo al modello
		model.addAttribute("message", "Prenotazione eliminata con successo.");
		// Redirigiamo alla lista delle prenotazioni
		return "redirect:/bookings";
	}
}
