<%@ page import="com.example.booking_sft.Booking"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Lista delle Prenotazioni</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css">
</head>
<body>
	<div class="d-flex justify-content-center">
		<h2>Lista delle Prenotazioni</h2>
	</div>

	<div class="d-flex justify-content-center">

		<table class="table table-striped ">
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>Data Evento</th>
				<th></th>
				<th></th>
			</tr>
			<%
			List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");
			if (bookings != null) {
				for (Booking booking : bookings) {
			%>
			<tr>
				<td><%=booking.getId()%></td>
				<td><%=booking.getNomeCliente()%></td>
				<td><%=booking.getDataEvento()%></td>
				<td>
					<!-- Form per eliminare una prenotazione -->
					<form action="<%=request.getContextPath() + "/deleteBooking"%>"
						method="post" class="d-inline">
						<input type="hidden" name="id" value="<%=booking.getId()%>" />
						<button type="submit" class="btn btn-secondary btn-sm">
							<i class="bi bi-trash"></i> Elimina
						</button>
					</form> <!-- Form per modificare una prenotazione -->
					<form action="<%=request.getContextPath() + "/editBookingForm"%>"
						method="get" class="d-inline">
						<input type="hidden" name="id" value="<%=booking.getId()%>" />
						<button type="submit" class="btn btn-warning btn-sm">
							<i class="bi bi-pencil"></i> Modifica
						</button>
					</form>
				</td>
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="5" class="text-center text-muted">Nessuna
					prenotazione disponibile.</td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a class="btn btn-primary" href="<%=request.getContextPath() + "/"%>"
			role="button">Torna alla home</a>
	</div>

</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
</html>
