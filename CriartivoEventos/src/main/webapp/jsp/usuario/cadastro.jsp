<%-- 
    Document   : login
    Created on : Aug 19, 2012, 7:05:12 PM
    Author     : brunovalentim
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<form:form  action="adicionar" method="post"  commandName="usuario">
    <form:errors path="*" cssClass="color: red" />
    Entre!
    <div>
        <form:label path="nome">Nome:</form:label>
        <form:input path="nome" max="100"/>
        <form:errors path="nome" cssClass="color: red"  />    
    </div>
    <div>
        <form:label path="email">E-mail:</form:label>
        <form:input path="email" max="20" />
        <form:errors path="email" cssClass="color: red"/>    
    </div>
    <div>
        <form:label path="senha" >Senha:</form:label>
        <form:input path="senha" max="10"/>
        <form:errors path="senha" cssClass="color: red"/>  
    </div>    
    <div>
        <input type="submit" value="Adicionar"/>
    </div>

</form:form>
