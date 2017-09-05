<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
 <%@ page import ="javax.sql.*" %>
 <%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <meta charset="UTF-8">
  <title>P2P</title>
  <script type="text/javascript" src="js/UserLoginScript.js"></script>
  <script type="text/javascript" src="CryptoJS/components/enc-base64-min.js"></script>
<script type="text/javascript" src="CryptoJS/components/enc-utf16-min.js"></script>

<style type="text/css">
             .errorMessage { 
             color:red; 
             font-size: 15px;
  			text-align: center;
             }
</style>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans'> 

      <link rel="stylesheet" href="css/loginstyle.css">

  
</head>

<body onLoad="document.getElementById('userName').focus();">
  <div class="cont">
  <div class="logo">
  </div>
  <%-- <s:actionerror /> --%>
  <div id="err" align="center" style="color: red;"></div>
  
  <div class="demo">
    <div class="login">
    <p class="login__signup">&nbsp; <a>Login To SRMS</a></p>
     <s:actionerror /> 
    <s:form action="login" autocomplete="off"  id="loginform" method="post">
    <%
					 String csrfPreventionSalt = (String) session.getAttribute("csrfPrevention"); 
				%>
						<s:hidden name="csrfPreventionSalt" value="<c:out value='<%=csrfPreventionSalt%>'/>"/>
      <div class="login__form">
       
        <div class="login__row">
          <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
            <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
          </svg>
         
          <input type="text" name="userDomainId" id="userDomainId" class="login__input name" placeholder="Username"/>
        </div>
        <div class="login__row">
          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
          </svg>
          <input type="password" name="password" id="password" class="login__input pass" placeholder="Password"/>
        </div>
        <button type="submit"  onclick="loginCheck('loginform', 'userName', 'password')" class="login__submit" >Sign in</button>
         
        
      </div>
      </s:form>
    </div>
    
      
    </div>
  </div>


  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
