package com.example.booking_sft;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.*;


/**
 * The persistent class for the booking database table.
 * 
 */
@Entity
@NamedQuery(name="Booking.findAll", query="SELECT b FROM Booking b")
public class Booking implements Serializable {
	private static final long serialVersionUID = 1L;
	@GeneratedValue (strategy = GenerationType.IDENTITY )
	@Id
	private Long id;

	@Temporal(TemporalType.DATE)
	@Column(name="data_evento")
	private LocalDate dataEvento;

	@Column(name="email_cliente")
	private String emailCliente;

	@Column(name="nome_cliente")
	private String nomeCliente;

	@Column(name="nome_evento")
	private String nomeEvento;

	@Column(name="numero_prenotati")
	private Integer numeroPrenotati;

	public Booking() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LocalDate getDataEvento() {
		return this.dataEvento;
	}

	public void setDataEvento(LocalDate localDate) {
		this.dataEvento = localDate;
	}

	public String getEmailCliente() {
		return this.emailCliente;
	}

	public void setEmailCliente(String emailCliente) {
		this.emailCliente = emailCliente;
	}

	public String getNomeCliente() {
		return this.nomeCliente;
	}

	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}

	public String getNomeEvento() {
		return this.nomeEvento;
	}

	public void setNomeEvento(String nomeEvento) {
		this.nomeEvento = nomeEvento;
	}

	public Integer getNumeroPrenotati() {
		return this.numeroPrenotati;
	}

	public void setNumeroPrenotati(Integer numeroPrenotati) {
		this.numeroPrenotati = numeroPrenotati;
	}

	@Override
	public String toString() {
		return "Booking [id=" + id + ", dataEvento=" + dataEvento + ", emailCliente=" + emailCliente + ", nomeCliente="
				+ nomeCliente + ", nomeEvento=" + nomeEvento + ", numeroPrenotati=" + numeroPrenotati + "]";
	}
	
	

}