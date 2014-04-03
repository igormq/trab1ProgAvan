<%@page import="java.util.TreeMap"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="template/header.jsp" %>

<% 
    boolean adicionado = false;
    Map<String, String> listaVistoria
            = (TreeMap<String, String>) request.getSession().getAttribute("listaVistoria");

    if (listaVistoria == null) {
        listaVistoria = new TreeMap<String, String>();
    }

    String nome = request.getParameter("nome");
    String conclusao = request.getParameter("conclusao");

    if (nome != null) {
        listaVistoria.put(nome, conclusao);
        adicionado = true;
    }
    request.getSession().setAttribute("listaVistoria", listaVistoria);
%>
<div id='content'>
    <form id="id_form_listagem" method="POST" action="./listagem.jsp">
        <input type="hidden" name="id_linha"/>
        <div class='return'>
            <a href="./index.jsp">
                <span class='glyphicon glyphicon-chevron-left'></span>
            </a>
        </div>
        <%
            boolean remove = false;
            if (listaVistoria.size() != 0) {

                String chave = request.getParameter("id_linha");
                if (chave != null) {
                    listaVistoria.remove(chave);
                    remove = true;
                }
            }
        %>
        <% if(remove) { %>
            <div class="alert alert-success alert-dismissable" >
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Sucesso!</strong> Vistoria removida com sucesso.
            </div>
        <% } %>
        <% if(adicionado) { %>        
            <div class="alert alert-success alert-dismissable" >
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <strong>Sucesso!</strong> Vistoria adicionada com sucesso.
            </div>
        <% } %>
        <%
            if (listaVistoria.size() != 0) {
        %>
        <table class='table table-hover'>
            <thead>
                <td>
                    Número da apólice
                </td>
                <td>
                    Conclusão da vistoria
                </td>
            </thead>
            <tbody>
                <% for (Map.Entry<String, String> vistoria : listaVistoria.entrySet()) {%>
                <tr>
                    <td>
                        <%= vistoria.getKey()%>
                    </td>
                    <td>
                        <%= vistoria.getValue()%>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <button type="button" class="close" aria-hidden="true" onclick="javascript:submitForm('id_form_listagem', '<%= vistoria.getKey()%>');">&times;</button>
                    </td>
                </tr>
                <% }%>
            </tbody>
        </table>
        <%
        } else {
        %>

        <div class="alert alert-info"><strong>Notificação!</strong> Agenda vazia.</div>

        <%
            }
        %>
    </form>

</div>
<%@include file="template/footer.jsp" %>
