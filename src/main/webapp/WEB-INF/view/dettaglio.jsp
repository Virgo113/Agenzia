<%@ include file="header.jsp"%>

	<a href="/mvc/viaggi/">Elenco</a>

    <h1>Dettaglio viaggio</h1>

	<div id="dettagli">

		<h2>Destinazione : ${viaggio.destinazione}</h2>
		<p>Descrizione: ${viaggio.descrizione}</p>
		<p>Durata: ${viaggio.durata}</p>
		<p>Prezzo: ${viaggio.prezzo} a persona</p>

	</div>

	<input type="button" class="btn btn-outline-dark" value="Procedi al pagamento" onclick="location.href='/api/viaggi'">


<%@ include file="footer.jsp"%>