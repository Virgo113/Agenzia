<%@page import="java.util.List"%>
<%@page import="com.generation.agenzia.entities.Viaggio"%>
<%@ include file="header.jsp"%>

    <!-- ciclare una lista di libri e mostrare una tabella html, ogni titolo porter� al dettaglio.jsp del libro -->

 
    <h1>Elenco Viaggi</h1>

    <table class="table table-dark table-striped" id="elenco">
        <tr>
            <th>Destinazione</th>
            <th>Durata (gg)</th>
            <th>Prezzo</th>
        </tr>

        <% for(Viaggio v : (List<Viaggio>) request.getAttribute("viaggi")) {%>
        <tr>
            <td><a href="/mvc/viaggi/<%= v.getId() %>"><%= v.getDestinazione() %></a></td>
            <td><%= v.getDurata() %></td><td><%= v.getPrezzo() %> a persona</td>
        </tr>
        <%} %>

    </table>

<%@ include file="footer.jsp"%>