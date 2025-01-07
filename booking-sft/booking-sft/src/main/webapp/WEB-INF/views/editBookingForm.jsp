<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modifica Prenotazione</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css">
</head>
<body>

<div><h2 class="text-center mb-4">Modifica Prenotazione</h2></div>
    <div class="container py-5">
        <form action="${pageContext.request.contextPath}/editBookingForm" method="post" class="card p-4 shadow">
            <input type="hidden" name="id" value="${booking.id}" />
            <div class="mb-3">
                <label for="nomeCliente" class="form-label">Nome Cliente:</label>
                <input type="text" name="nomeCliente" value="${booking.nomeCliente}" class="form-control" required />
            </div>
            <div class="mb-3">
                <label for="emailCliente" class="form-label">Email Cliente:</label>
                <input type="email" name="emailCliente" value="${booking.emailCliente}" class="form-control" required />
            </div>
            <div class="mb-3">
                <label for="dataEvento" class="form-label">Data Evento:</label>
                <input type="date" name="dataEvento" value="${booking.dataEvento}" class="form-control" required />
            </div>
            <div class="mb-3">
                <label for="nomeEvento" class="form-label">Nome Evento:</label>
                <input type="text" name="nomeEvento" value="${booking.nomeEvento}" class="form-control" required />
            </div>
            <div class="mb-3">
                <label for="numeroPrenotati" class="form-label">Numero Prenotati:</label>
                <input type="number" name="numeroPrenotati" value="${booking.numeroPrenotati}" class="form-control" required />
            </div>
            <button type="submit" class="btn btn-success btn-lg w-100">Aggiorna Prenotazione</button>
        </form>
        <div class="text-center mt-4">
            <a href="<%= request.getContextPath() + "/" %>" class="btn btn-secondary">Torna alla home</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
