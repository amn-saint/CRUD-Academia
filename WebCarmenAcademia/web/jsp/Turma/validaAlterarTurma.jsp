<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Turma"%>
<%@page import="carmenacademia.controller.ControllerTurma"%>

<%
    String cod = request.getParameter("CODIGODATURMA");
    int codigoDaTurma = Integer.parseInt(cod);
    String instrutor = request.getParameter("INSTRUTOR");
    String dataInicio = request.getParameter("DATADEINICIO");
    String dataFim = request.getParameter("DATADAFINALIZACAO");
    String atividade = request.getParameter("ATIVIDADE");
   

    Turma sis = new Turma(codigoDaTurma,instrutor ,dataInicio, dataFim, atividade);
    ControllerTurma siscont = new ControllerTurma();
    siscont.alterar(sis);
    String pbusca = request.getParameter("PBUSCA");
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarTurma.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>