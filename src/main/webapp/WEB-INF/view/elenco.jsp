<%@page import="java.util.List"%>
<%@page import="com.generation.agenzia.entities.Viaggio"%>
<%@ include file="header.jsp"%>

    <!-- ciclare una lista di libri e mostrare una tabella html, ogni titolo porter� al dettaglio.jsp del libro -->

 
    <h1>Elenco Libri</h1>

    <table id="elenco">
        <tr>
            <th>Destinazione</th>
            <th>Durata</th>
            <th>Prezzo</th>
        </tr>

        <% for(Viaggio v : (List<Viaggio>) request.getAttribute("viaggi")) {%>
        <tr>
            <td><a href="/mvc/viaggi/<%= v.getId() %>"><%= v.getDestinazione() %></a></td>
            <td><%= v.getDurata() %></td><td><%= v.getPrezzo() %></td>
        </tr>
        <%} %>

    </table>

<%@ include file="footer.jsp"%>