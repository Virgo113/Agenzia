<%@ include file="header.jsp"%>

	<a href="/mvc/viaggi/">Elenco</a>

    <h1>Dettaglio viaggio</h1>

	<div id="dettagli">

		<h2>Destinazione : ${viaggi.destinazione}</h2>
		<p>Descrizione: ${viaggi.descrizione}</p>
		<p>durata: ${viaggi.durata}</p>
		<p>Prezzo: ${viaggi.prezzo}</p>






	</div>


<%@ include file="footer.jsp"%>