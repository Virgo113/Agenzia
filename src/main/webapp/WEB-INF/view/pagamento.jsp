<%@ include file="header.jsp"%>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

<div id="dettagli">

    <h1>${viaggio.destinazione}</h1>
    <p>Descrizione: ${viaggio.descrizione}</p>
    <p>Durata: ${viaggio.durata} giorni</p>


</div>

<div class="container">
    <form class="row g-3 needs-validation" novalidate action="/mvc/viaggi/${viaggio.id}/conferma">

        <div class="row g-3">
            <div class="row">
                <div class="col-md-6">
                    <label for="nome" class="form-label text-muted fst-italic">Nome:</label>
                    <input type="text" class="form-control" id="validationCustom01" placeholder="Virgilio" required>
                </div>
                <div class="col-md-6">
                    <label for="cognome" class="form-label text-muted fst-italic">Cognome:</label>
                    <input type="text" class="form-control" id="cognome" placeholder="Collura" required>
                </div>
            </div>

            <div class="col">
                <label for="inputEmail4" class="form-label text-muted fst-italic">Email</label>
                <input type="email" class="form-control" id="inputEmail4" placeholder="virgilio.collura@virgilio.it" required>
                <div class="invalid-feedback">
                    Email non valida.
                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <label for="inputState" class="form-label text-muted fst-italic">TipoCarta</label>
                    <select id="inputState" class="form-select" required>
                        <option selected disabled value="">Choose...</option>
                        <option>MasterCard</option>
                        <option>Visa</option>
                    </select>
                    <div class="invalid-feedback">
                        Seleziona tipo di carta.
                    </div>
                </div>
                <div class="col-md-5">
                    <label for="inputAddress" class="form-label text-muted fst-italic">Numero Carta</label>
                    <input type="text" class="form-control" id="inputAddress" required>
                </div>
                <div class="col-md-3">
                    <label for="inputAddress2" class="form-label text-muted fst-italic">scadenza</label>
                    <input type="date" class="form-control" id="inputAddress2" required>
                </div>
                <div class="col-md-2">
                    <label for="inputCity" class="form-label text-muted fst-italic">CVV</label>
                    <input type="text" class="form-control" id="inputCity" required>
                </div>
            </div>

            <div class="col-12">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck" required>
                    <label class="form-check-label" for="gridCheck">
                        Accetto le condizioni....
                    </label>
                    <div class="invalid-feedback">
                        Non hai accettato le condizioni.
                    </div>
                </div>
            </div>
            <div class="col-6"> </div>
        </div>
    </form>
    <form action="/mvc/viaggi/${viaggio.id}/conferma" method="post" class="row g-3 needs-validation" novalidate>

        <div class="row justify-content-between" id="rowCost">
            <div class="col-2 col-lg-1">
                <label for="partecipanti" class="form-label text-muted fst-italic">Partecipanti</label>
                <input type="number" value="1" min="1" max="10" step="1" class="form-control" name="partecipanti"
                    id="partecipanti">


                <input type="hidden" name="viaggio_id" value="${viaggio.id}">
                <input type="hidden" name="utente_id" value="1">
                <input type="hidden" name="id" value="0">



            </div>
        </div>

        <button class="btn btn-primary" type="submit">Acquista</button>
        <input type="button" class="btn btn-secondary" value="Annulla" onclick="location.href='/mvc/viaggi/uscita'">
        
    </form>
    <div class="col-2">
        <label for="totaleCosto" class="form-label text-muted fst-italic">Totale costo</label>
        <p class="form-control pe-none" id="totale"></p>
    </div>

    <div class="col-6"> </div>




    <!-- <div class="col-2">
        <button class="btn btn-primary" type="submit">Acquista</button>
        <a href="/mvc/viaggi/${viaggio.id}/conferma" class="btn btn-primary" type="submit"> Acquista </a>
        <input type="button" class="btn btn-secondary" value="Annulla" onclick="location.href='/mvc/viaggi/uscita'">
    </div> -->

</div>


<!-- ------------------------------ slider --------------------------------------- -->


<div class="row">
    <div class="col align-self-center w-100 d-none d-md-block"></div>

    <div id="carouselExampleFade" class="col-9 align-self-center carousel carousel-dark slide carousel-fade"
        data-bs-ride="carousel">
        <div id="divImg" class="carousel-inner">
            <!-- <div class="carousel-item active">
                <img src="https://source.unsplash.com/1920x1080/?rome" class="d-block w-100 img-fluid" alt="...">
            </div>
            <div class="carousel-item">
                <img id="img1" src="https://source.unsplash.com/1920x1080/?milan" class="d-block w-100 img-fluid"
                    alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/1920x1080/?turin" class="d-block w-100 img-fluid" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/1920x1080/?italy" class="d-block w-100 img-fluid" alt="...">
            </div> -->
        </div>
        <!-- <button id="nextBtn" class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button> -->
    </div>

    <div class="col align-self-center w-100 d-none d-md-block"></div>

</div>




<!-- ------------------------------ slider --------------------------------------- -->

<script>
    let rowCost = document.getElementById('rowCost')
    let elTot = document.getElementById('totale');
    let elImg1 = document.getElementById("img1");

    elTot.innerHTML = '${viaggio.prezzo} Euro'


    function modifica() {
        let elPersone = document.getElementById('partecipanti').value;
        console.log(elPersone);
        let costo = "${viaggio.prezzo}";
        elTot.innerHTML = costo * elPersone + " Euro";

    }
    rowCost.addEventListener('change', modifica, false)

    // carosello --------------------------------------------------------------

    let paese = "${viaggio.destinazione}";

    var divImg = document.getElementById('divImg');

    var newDiv = document.createElement('div');
    newDiv.setAttribute('class', 'carousel-item active');
    divImg.appendChild(newDiv);

    let newImg = document.createElement('img');
    newDiv.appendChild(newImg)
    newImg.setAttribute('src', 'https://source.unsplash.com/1920x1080/?' + paese);
    newImg.setAttribute('class', 'd-block w-100 img-fluid');

    // carosello --------------------------------------------------------------

    // validazione ----------------------------------------------

    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>


<%@ include file="footer.jsp"%>