<%-- 
    Document   : login
    Created on : Aug 19, 2012, 7:05:12 PM
    Author     : brunovalentim
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link type="text/css" href="../../css/style.css" rel="stylesheet" />
<link type="text/css" href="../../css/ui-darkness/jquery-ui-1.8.23.custom.css" rel="stylesheet" />
<script type="text/javascript" src="../../js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../js/jquery-ui-1.8.23.custom.min.js"></script>
<script type="text/javascript">
    $(function(){        
        $("a").button();
    });
</script> 
<form:form  action="adicionar" method="post"  commandName="usuario">    
    Entre!
    <div>
        <form:label path="nome">Nome:</form:label>
        <form:input path="nome" maxlength="100"/>
        <form:errors path="nome" cssClass="erro"  />    
    </div>
    <div>
        <form:label path="email">E-mail:</form:label>
        <form:input path="email" maxlength="20" />
        <form:errors path="email" cssClass="erro"/>    
    </div>
    <div>
        <form:label path="senha" >Senha:</form:label>
        <form:input path="senha" maxlength="10"/>
        <form:errors path="senha" cssClass="erro"/>  
    </div>    
    <div>
        <input type="submit" value="Adicionar"/>
    </div>

</form:form>
