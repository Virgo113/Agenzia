<%@ include file="header.jsp"%>

<h2>Conferma Acquisto</h2>

<p>Confermiamo il suo acquisto</p>

<div id="dettagli">

	<h2>Destinazione : ${viaggio.destinazione}</h2>
	<p>Descrizione: ${viaggio.descrizione}</p>
	<p>Durata: ${viaggio.durata}</p>

</div>

<a href="/mvc/viaggi/" class="btn btn-info" type="submit">Torna all'Elenco</a>


<%@ include file="footer.jsp"%>