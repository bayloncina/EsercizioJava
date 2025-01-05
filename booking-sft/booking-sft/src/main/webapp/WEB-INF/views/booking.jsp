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
	<h2>Lista delle Prenotazioni</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Data Evento</th>
			<th>Azioni</th>
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
					method="post">
					<input type="hidden" name="id" value="<%=booking.getId()%>" /> <input
						type="submit" value="Elimina" />
				</form>
			</td>
			<td>
				<form action="<%=request.getContextPath()%>/editBookingForm"
					method="get">
					<input type="hidden" name="id" value="<%=booking.getId()%>" />
					<button type="submit">Modifica</button>
				</form>

			</td>

		</tr>
		<%
		}
		} else {
		%>
		<tr>
			<td colspan="4">Nessuna prenotazione disponibile.</td>
		</tr>
		<%
		}
		%>
	</table>
	<a href="<%=request.getContextPath() + "/"%>">Torna alla home</a>
</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
</html>
