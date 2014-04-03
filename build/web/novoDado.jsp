<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="template/header.jsp" %>

<div id="content"> 
    <form method="POST" action="./listagem.jsp" role='form'>
    <div>
        <a href="./index.jsp">
            <span class='glyphicon glyphicon-chevron-left'></span>
        </a>
    </div>
        <div class='form-group'>
            <label for="nome">Número da Apólice</label>
            <input type="text" class="form-control" id="nome" placeholder="Número da apólice" name="nome">
        </div>

        <div class='form-group' class="form-horizontal">
            <label for="conclusao">Número da Apólice</label>
            <select class="form-control" name="conclusao">
                <option value="Aprovada">Aprovada</option>
                <option value="Negada">Negada</option>
            </select>
        </div>


        <input type="submit" value="ENVIAR" class='btn btn-primary'/>
    </form>
</div>
<%@include file="template/footer.jsp" %>
