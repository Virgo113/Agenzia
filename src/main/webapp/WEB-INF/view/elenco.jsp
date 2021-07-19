<%@page import="java.util.List"%>
<%@page import="com.generation.agenzia.entities.Viaggio"%>
<%@ include file="header.jsp"%>

    <!-- ciclare una lista di libri e mostrare una tabella html, ogni titolo porter� al dettaglio.jsp del libro -->

 
    <h1>Elenco Viaggi</h1>

    <table class="table table-dark table-striped" id="elenco">
        <tr>
            <th style="text-align: center;" >Destinazione</th>
            <th style="text-align: center;" >Durata (gg)</th>
            <th style="text-align: center;" >Prezzo</th>
        </tr>

        <% for(Viaggio v : (List<Viaggio>) request.getAttribute("viaggi")) {%>
        <tr>
            <td style="text-align: center;" ><em><strong><a style="color:#96B3FB; text-decoration:none" href="/mvc/viaggi/<%= v.getId() %>"><%= v.getDestinazione() %></strong></em></a></td>
            <td style="text-align: center;" ><%= v.getDurata() %></td>
            <td style="text-align: center;" ><%= v.getPrezzo() %> a persona</td>
        </tr>
        <%} %>

    </table>

<%@ include file="footer.jsp"%>