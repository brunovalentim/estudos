<%-- 
    Document   : login
    Created on : Aug 19, 2012, 7:05:12 PM
    Author     : brunovalentim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<form action="usuario/adicionar" method="post">
    Entre!:
    <br/>
    Nome:<input type="text" name="nome" />
    <form:errors path="usuario.nome"  cssStyle="color:red"/>
    E-mail:<input type="text" name="email" />
    <form:errors path="usuario.email"  cssStyle="color:red"/>
    <br/>
    Senha:<input type="text" name="senha"/>
    <form:errors path="usuario.senha" cssStyle="color:red"/>
    <br/>
    <input type="submit" value="Adicionar"/>
</form>
