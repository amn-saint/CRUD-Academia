<%-- 
    Document   : validaInserirAluno
    Created on : 23 de mai. de 2024, 13:25:51
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Aluno"%>
<%@page import="carmenacademia.controller.ControllerAluno"%>

<!DOCTYPE html>

<%
    String nome = request.getParameter("NOME");
    String dataDaMatricula = request.getParameter("DATADAMATRICULA");
    String dataDeNascimento = request.getParameter("DATADENASCIMENTO");
    String endereco = request.getParameter("ENDERECO");
    String telefone = request.getParameter("TELEFONE");
    String altura = request.getParameter("ALTURA");
    String peso = request.getParameter("PESO");

    Aluno sis = new Aluno(nome, dataDaMatricula, dataDeNascimento, endereco, telefone, altura, peso);
    ControllerAluno siscont = new ControllerAluno();
    siscont.inserir(sis);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirAluno.jsp";
    response.sendRedirect(url);
%>
