<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css">
<title>Aggiungi Prenotazione</title>
</head>
<body>
	<h2>Aggiungi una Nuova Prenotazione</h2>
	<form action="<%= request.getContextPath() + "/addBooking" %>"
		method="post">
		<div>
			<label for="nomeCliente">Nome e Cognome:</label> <input type="text"
				id="nomeCliente" name="nomeCliente" required />
		</div>
		<div>
			<label for="emailCliente">Email Cliente:</label> <input type="email"
				id="emailCliente" name="emailCliente" required />
		</div>
		<div>
			<label for="dataEvento">Data Evento:</label> <input type="date"
				id="dataEvento" name="dataEvento" required />
		</div>
		<div>
			<label for="nomeEvento">Nome Evento:</label> <input type="text"
				id="nomeEvento" name="nomeEvento" required />
		</div>
		<div>
			<label for="numeroPrenotati">Numero Prenotati:</label> <input
				type="number" id="numeroPrenotati" name="numeroPrenotati" required />
		</div>
		<div>
			<input type="submit" value="Aggiungi Prenotazione" />
		</div>
	</form>
	<a href="<%= request.getContextPath() + "/bookings" %>">Torna alla
		lista prenotazioni</a>
</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
</html>
