<%@page import="java.util.TreeMap"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map" %>
<%@page import="java.io.PrintWriter"%>

<%@include file="template/header.jsp" %>

<div class="text-center" id='content'>
    <ul class="nav nav-pills nav-stacked">
        <li>
            <a href="./novoDado.jsp" >
                <span class='glyphicon glyphicon-plus'></span>
                Entrar com novos dados
            </a>
        </li>
        <li>
            <a href="./listagem.jsp">
                <span class='glyphicon glyphicon-list-alt'></span>
                Listar todas as vistorias
            </a>
        </li>
        
    </ul>
</div>
<%@include file="template/footer.jsp" %>