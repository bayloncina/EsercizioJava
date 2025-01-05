<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modifica Prenotazione</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css">
</head>
<div class="d-flex justify-content-center d-flex align-items-center">
<form action="${pageContext.request.contextPath}/editBookingForm"
	method="post">
	<input type="hidden" name="id" value="${booking.id}" /> <label
		for="nomeCliente">Nome Cliente:</label> <input type="text"
		name="nomeCliente" value="${booking.nomeCliente}" /> <label
		for="emailCliente">Email Cliente:</label> <input type="email"
		name="emailCliente" value="${booking.emailCliente}" /> <label
		for="dataEvento">Data Evento:</label> <input type="date"
		name="dataEvento" value="${booking.dataEvento}" /> <label
		for="nomeEvento">Nome Evento:</label> <input type="text"
		name="nomeEvento" value="${booking.nomeEvento}" /> <label
		for="numeroPrenotati">Numero Prenotati:</label> <input type="number"
		name="numeroPrenotati" value="${booking.numeroPrenotati}" />

	<button type="submit">Aggiorna Prenotazione</button>
</form>

<a href="<%=request.getContextPath() + "/"%>">Torna alla home</a>
</div>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
