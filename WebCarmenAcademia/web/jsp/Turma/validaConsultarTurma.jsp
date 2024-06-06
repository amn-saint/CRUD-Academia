<%-- 
    Document   : validaConsultarTurma
    Created on : 23 de mai. de 2024, 13:57:40
    Author     : Lexy
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Turma"%>
<%@page import="carmenacademia.controller.ControllerTurma"%>

<%
    String Horario = request.getParameter("horario");
    Turma sis = new Turma(Horario);
    ControllerTurma siscont = new ControllerTurma();
    List<Turma> ListaTurma = siscont.listar(sis);
    String url = "PBUSCA=" + sis.getHorario() + "&horario=";
    String url2 = "PBUSCA=" + sis.getIdTurma() + "&IdTurma=";
%>


<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <title>LISTA TURMAS</title>
        <!-- Include Materialize CSS and JS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="center-align">Lista de Turmas</h1>
            <table class="striped responsive-table">
                <thead>
                    <tr>
                        <th data-field="IdTurma">Código da Turma</th>
                        <th data-field="IdInstrutor">Instrutor</th>
                        <th data-field="horario">Horario</th>
                        <th data-field="dataInicio">Data Inicio</th>
                        <th data-field="dataFim">Data Fim</th>
                        <th data-field="atividade">Atividade</th>
                        <th data-field="Excluir">Excluir</th>
                        <th data-field="Alterar">Alterar</th>
                    </tr>
                </thead>
                <% if (!(ListaTurma.isEmpty())) { %>    
                    <tbody>
                        <% for (Turma sisSaida : ListaTurma) { %>
                            <tr>>
                                <td><%=sisSaida.getIdTurma()%></td>
                                <td><%=sisSaida.getIdInstrutor()%></td>
                                <td><%=sisSaida.getHorario()%></td> 
                                <td><%=sisSaida.getDataInicio()%></td>
                                <td><%=sisSaida.getDataFim()%></td>
                                <td><%=sisSaida.getAtividade()%></td>
                                <td><a href="excluirTurma.jsp?<%=url2 + sisSaida.getIdTurma()%>" class="btn red">Excluir</a></td>
                                <td><a href="alterarTurma.jsp?<%=url2 + sisSaida.getIdTurma()%>" class="btn blue">Alterar</a></td>
                            </tr>
                        <% } %>
                    </tbody>
                <% } %>
            </table>    

            <div class="row">
                <div class="col s12">
                     <a href="javascript:history.go(-1);" class="btn waves-effect waves-light">Voltar</a>
                    <a href="/WebCarmenAcademia/jsp/Menu/menu.jsp" class="btn waves-effect waves-light right red">Sair</a>
                </div>
            </div>
        </div>
    </body>
</html>
