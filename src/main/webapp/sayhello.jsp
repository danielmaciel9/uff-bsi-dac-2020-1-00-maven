<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : viter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SayHello.jsp</title>
        
        <link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        
        <style>
        	body{
        		font-family: 'Roboto', sans-serif;
        	}
        	.form-group{
        		margin-bottom: 15px;
        	}
        	h2{
        		margin-bottom: 30px;
        		margin-top: 30px;
        	}
        	h3{
        		margin-top: 15px;
        		font-size: 24px;
    			font-weight: 700;
        	}
        </style>
    </head>
    <body>
    	<section>
    		<div class="container">
		        <jsp:useBean id="myBean" class="hello.MessageBean"/>
		        <h2>SayHello.jsp</h2>
		        <% String lang = request.getParameter("lang"); %>
		        <jsp:setProperty name="myBean" property="msg" value="<%=lang%>"/>
		        <h3>Seu nome é:</h3> 
		        <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("nome")%>!
		        <h3>Seu estado é:</h3> 
		        <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("estado")%>!
		        <h3>Seu email é:</h3> 
		        <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("email")%>!
	    	</div>
    	</section>
    </body>
</html>
