<%@ include file="header.jsp"%>

<a href="/mvc/viaggi/">Elenco</a>

<h1>Dettaglio viaggio</h1>

<div id="dettagli">

	<h2>Destinazione : ${viaggio.destinazione}</h2>
	<p>Descrizione: ${viaggio.descrizione}</p>
	<p>Durata: ${viaggio.durata}</p>
	<p>Prezzo: ${viaggio.prezzo} a persona</p>

</div>

<input type="button" class="btn btn-outline-dark" value="Procedi al pagamento" onclick="location.href='${viaggio.id}/pagamento'">



<!-- ------------------------------ slider --------------------------------------- -->


<div class="row">
    <div class="col align-self-center w-100 d-none d-md-block"></div>

    <div id="carouselExampleFade" class="col-9 align-self-center carousel carousel-dark slide carousel-fade"
        data-bs-ride="carousel">
        <div id="divImg" class="carousel-inner">
            <div class="carousel-item active">
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
            </div>
        </div>
        <button id="nextBtn" class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="col align-self-center w-100 d-none d-md-block"></div>

</div>




<!-- ------------------------------ slider --------------------------------------- -->





<script>
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
</script>



<%@ include file="footer.jsp"%>