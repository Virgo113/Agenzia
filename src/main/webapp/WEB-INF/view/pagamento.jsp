<%@ include file="header.jsp"%>


<div id="dettagli">

    <h1>${viaggio.destinazione}</h1>
    <p>Descrizione: ${viaggio.descrizione}</p>
    <p>Durata: ${viaggio.durata} giorni</p>

</div>

<form action="" method="get">

    <form class="row g-3">
        <div class="row">
            <div class="col-md-6">
                <label for="nome" class="form-label">Nome:</label>
                <input type="text" class="form-control" id="nome">
            </div>
            <div class="col-md-6">
                <label for="cognome" class="form-label">Cognome:</label>
                <input type="text" class="form-control" id="cognome">
            </div>
        </div>

        <div class="col">
            <label for="inputEmail4" class="form-label">Email</label>
            <input type="email" class="form-control" id="inputEmail4">
        </div>

        <div class="row">
            <div class="col-md-2">
                <label for="inputState" class="form-label">TipoCarta</label>
                <select id="inputState" class="form-select">
                    <option selected>Choose...</option>
                    <option>MasterCard</option>
                    <option>Visa</option>
                </select>
            </div>
            <div class="col-md-5">
                <label for="inputAddress" class="form-label">Numero Carta</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="Numero Carta">
            </div>
            <div class="col-3">
                <label for="inputAddress2" class="form-label">scadenza</label>
                <input type="date" class="form-control" id="inputAddress2">
            </div>
            <div class="col-md-2">
                <label for="inputCity" class="form-label">CVV</label>
                <input type="text" class="form-control" id="inputCity">
            </div>
        </div>

        <div class="col-12">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck">
                <label class="form-check-label" for="gridCheck">
                    Accetto le condizioni....
                </label>
            </div>
        </div>
    </form>



    <row>
        <div class="col-2 col-lg-1">
            <label for="nPersone" class="form-label">Partecipanti</label>
            <input type="number" class="form-control" id="nPersone">
        </div>

        <div class="col-4">
            <label for="totaleCosto" class="form-label">Totale costo</label>
            <input type="text" class="form-control" id="totale">
        </div>

    </row>


</form>




<script>

    function modifica() {
        document.getElementById('nPersone').value = ElPersone;

        elTot = ${viaggio.prezzo}*ElPersone;
        
        document.getElementById('totale').value = elTot;
        
    }


</script>


<%@ include file="footer.jsp"%>