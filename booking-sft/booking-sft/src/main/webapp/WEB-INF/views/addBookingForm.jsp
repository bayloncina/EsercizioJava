<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css">
<title>Aggiungi Prenotazione</title>
</head>
<body>

<div class="d-flex justify-content-center">
<h2>Aggiungi una Nuova Prenotazione</h2>
</div>
<div class="d-flex justify-content-center">
	
	<form action="<%= request.getContextPath() + "/addBooking" %>"
		method="post">
		<div class="mb-3">
			<label for="nomeCliente">Nome e Cognome:</label> <input type="text"
				id="nomeCliente" name="nomeCliente" required />
		</div>
		<div class="mb-3">
			<label for="emailCliente">Email Cliente:</label> <input type="email"
				id="emailCliente" name="emailCliente" required />
		</div>
		<div class="mb-3">
			<label for="dataEvento">Data Evento:</label> <input type="date"
				id="dataEvento" name="dataEvento" required />
		</div>
		<div class="mb-3">
			<label for="nomeEvento">Nome Evento:</label> <input type="text"
				id="nomeEvento" name="nomeEvento" required />
		</div>
		<div class="mb-3">
			<label for="numeroPrenotati">Numero Prenotati:</label> <input
				type="number" id="numeroPrenotati" name="numeroPrenotati" required />
		</div>
		<div class="mb-3">
			<input type="submit" value="Aggiungi Prenotazione" class="btn btn-success btn-lg mx-2" />
		</div>
	</form>
	</div>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a class="btn btn-primary" href="<%= request.getContextPath() + "/bookings" %>"
			role="button">Torna alla
		lista prenotazioni</a>
	</div>
	
</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
</html>
