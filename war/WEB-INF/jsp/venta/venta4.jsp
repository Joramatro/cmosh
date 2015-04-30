<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-46821516-1', 'comprarmovileshoy.com');
	  ga('require', 'displayfeatures');
	  ga('send', 'pageview');
	  
</script>
</head>
<body onload="window.location.href = '${publicacion.script41}'">
<noscript>
Por favor, haz click <a href="${publicacion.script41}">aquí</a> para acceder a la página de compra del producto.
</noscript>
<c:if test="${not empty publicacion.script42}">
<img src="${publicacion.script42}" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />
</c:if>
</body>
</html>