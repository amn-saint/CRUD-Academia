<%-- 
    Document   : validaAlterarAluno
    Created on : 23 de mai. de 2024, 13:55:42
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Matricula"%>
<%@page import="carmenacademia.controller.ControllerMatricula"%>

<%
    String cod = request.getParameter("IDMATRICULA");
    int idMatricula = Integer.parseInt(cod);
    
    String cod1 = request.getParameter("IDTURMA");
    int idTurma = Integer.parseInt(cod1);
    
    String cod2 = request.getParameter("IDALUNO");
    int idAluno = Integer.parseInt(cod2);

    Matricula sis = new Matricula(idMatricula, idTurma, idAluno);
    ControllerMatricula siscont = new ControllerMatricula();
    siscont.alterar(sis);;
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "/WebCarmenAcademia/jsp/Menu/menu.jsp";
    response.sendRedirect(url);
%>
