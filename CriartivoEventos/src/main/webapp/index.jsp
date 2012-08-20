<%-- 
    Document   : index
    Created on : Aug 19, 2012, 5:18:41 PM
    Author     : brunovalentim
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>jQuery UI Example Page</title>
        <link type="text/css" href="css/style.css" rel="stylesheet" />
        <link type="text/css" href="css/ui-darkness/jquery-ui-1.8.23.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.23.custom.min.js"></script>
        <script type="text/javascript">
            $(function(){
                $("#accordion").accordion({ header: "h3" });
                $("input:submit").button();
            });
        </script>        
    </head>
    <body>   
        <jsp:include page="jsp/templates/header.jsp" />
        <a  href="usuario/cadastro">Cadastro</a>
        <jsp:include page="jsp/templates/footer.jsp" />
    </body>
</html>