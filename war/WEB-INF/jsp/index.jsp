<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">

<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>
	
	<!-- start: Slider -->
	<div class="slider-wrapper">

		<div id="da-slider" class="da-slider">
			<c:forEach var="publicacion" items="${publicacionesPortada}" varStatus="status" end="4">
				<div class="da-slide">
					<h2 class="titPortada"><a title="${publicacion.titulo}" href="/${publicacion.url}" onClick="ga('send', 'event', 'Leer', 'Home ${publicacion.url}', 'Titulo Portada');">${publicacion.tituloPortada}</a></h2>
					<p class="descPortada">${publicacion.descPortada}</p>
					<c:choose>
					<c:when test="${publicacion.disponible eq 'S' }">
						<a title="${publicacion.titulo}" onClick="ga('send', 'event', 'Venta', 'Home ${publicacion.url}', 'Boton Comprar Hoy');" href="/venta/principal/${publicacion.url}" class="da-link">COMPRAR HOY</a>
					</c:when>
					<c:otherwise>
						<a title="${publicacion.titulo}" href="/${publicacion.url}" class="da-link">LEER MÁS</a>
					</c:otherwise>
					</c:choose>
					<div class="da-img">						
						<a title="${publicacion.titulo}" href="/${publicacion.url}">							
						<c:if test="${!empty publicacion.lImages}">
							<img src="${publicacion.lImages[3]}" style="width: 345px;height:360px;" alt="${publicacion.titulo}" />
						</c:if>
						</a>
					</div>
				</div>							
			</c:forEach>			
			<nav class="da-arrows">
				<span class="da-arrows-prev"></span>
				<span class="da-arrows-next"></span>
			</nav>
		</div>
		
	</div>
	<!-- end: Slider -->
			
	<!--start: Wrapper-->
	<div id="wrapper">
				
		<!--start: Container -->
    	<div class="container">
      		<!-- start: Hero Unit - Main hero unit for a primary marketing message or call to action -->
      		<div class="hero-unit">
				<h3>
					Los móviles libres y baratos se han convertido hoy en día en el complemento ideal para acompañarnos a todas partes y mantenernos en contacto con nuestros seres queridos: Comprar un móvil te permitirá además estar conectado a Internet y la red consiguiendo una experiencia de usuario única gracias al constante desarrollo tecnológico de los smartphones.<br>
					Aquí te ayudaremos a comprar el móvil o smartphone libre y online que más se ajuste a tus necesidades, al precio más barato y pudiendo comparar los móviles más actuales del mercado.<br>
					Te mostramos los mejores análisis de móviles libres, Android, iOS de Apple, Windows Phone y comparativas junto a las mejores marcas como Samsung, Sony, Motorola, Nokia, HTC, LG, así como los nuevos móviles chinos cada vez más populares de marcas como Huawei, Xiaomi o Jiayu, para que puedas responder con la mejor información a la pregunta de qué móvil comprar.
				</h3>
        		<p><br><a class="btn btn-primary btn-large" title="Blog" href="/blog">ver Blog</a> &nbsp;&nbsp;<a title="Moviles" class="btn btn-primary btn-large" href="/moviles">ver Móviles</a></p>
      		</div>
			<!-- end: Hero Unit -->
			<div id="googleRecIndex1" class="iframe_wrap">			
				<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- index1r -->
				<ins class="adsbygoogle"
				     style="display:block"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="2638269742"
				     data-ad-format="auto"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>      		
			<hr>
			<!-- start: Row -->
			<div class="row">
				
				<!-- start: Icon Boxes -->
				<div class="icons-box-vert-container">

					<!-- start: Icon Box Start -->
					<div class="span4">
						<div class="icons-box-vert">
							<i class="ico-ok ico-white circle-color-full"></i>
							<div class="icons-box-vert-info">
								<h3>Múltiples vías de comunicación</h3>
								<p>La posibilidad de comunicarse a través de voz, texto vía SMS o correo electrónico e Internet permite como nunca antes la interacción entre humanos por muy lejos que estén.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box-->

					<!-- start: Icon Box Start -->
					<div class="span4">
						<div class="icons-box-vert">
							<i class="ico-ok ico-white circle-color-full"></i>
							<div class="icons-box-vert-info">
								<h3>Aplicaciones empresariales</h3>
								<p>Gracias al impresionante avance tecnológico experimentado en los últimos años y aplicado a la telefonía móvil, los smartphones se han convertido en una herramienta fantástica para cualquier negocio o empresa que necesite estar siempre online.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box -->

					<!-- start: Icon Box Start -->
					<div class="span4">
						<div class="icons-box-vert">
							<i class="ico-ok ico-white circle-color-full"></i>
							<div class="icons-box-vert-info">
								<h3>Precios económicos</h3>
								<p>El constante desarrollo de sistemas operativos móviles como Android, iOS, Windows Phone o BlackBerry OS y al ecosistema de aplicaciones creadas en torno a ellos, los móviles libres ofrecen un sinfín de posibilidades a un precio mucho más barato que años atrás.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box -->

				</div>
				<!-- end: Icon Boxes -->
				<div class="clear"></div>
			</div>
			<!-- end: Row -->
		
		<hr>			
			<%@ include file="/WEB-INF/jsp/includes/masleidos.jsp"%>
						
		<hr>	
		<div class="title"><h3>Últimas Publicaciones</h3></div>			
			<!-- start: Portfolio -->
		<div class="container">
			<div id="portfolio-wrapper" class="row">
				<% pageContext.setAttribute("newLineChar", "\n"); %>
				<c:forEach var="publicacion" items="${publicacionesEbooks}" varStatus="status" end="8">				
				<div class="span4 portfolio-item">
					<div class="picture"><a href="/${publicacion.url}" title="${publicacion.titulo}">
					
					<c:if test="${!empty publicacion.lImages }">
					<img pagespeed_no_defer="" src="${publicacion.lImages[0]}" alt="${publicacion.titulo}"/>
					</c:if>
					
					<div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a title="${publicacion.titulo}" href="/${publicacion.url}">${publicacion.titulo}</a></h5>
							<c:if test="${publicacion.sumaPuntos gt 0 }">
							<div class="rateit" data-rateit-value="${publicacion.sumaPuntos div publicacion.votantes}" data-rateit-ispreset="true" data-rateit-readonly="true" title="<fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${publicacion.sumaPuntos div publicacion.votantes}" /> / 5"></div>
							</c:if>
							<p>
								${fn:replace(publicacion.resumen, newLineChar, "<p/><p>")}
							</p>
						</div>
						<div class="post-meta"><span><i class="mini-ico-calendar"></i><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="date" dateStyle="long" value="${publicacion.fechaCreacion}"/></span><%-- <span style=""><i class="mini-ico-user"></i>  <a href="/${publicacion.url}">Jorge Amat</a></span>--%> <span><i class="mini-ico-comment"></i><a href="/${publicacion.url}/#comments">${fn:length(publicacion.lComentarios)} comments</a></span></div>
					</div>	
				</div>
				</c:forEach>
				<c:forEach var="publicacion" items="${publicacionesBlog}" varStatus="status" end="8">				
				<div class="span4 portfolio-item">
					<div class="picture"><a href="/${publicacion.url}" title="${publicacion.titulo}">
					
					<c:if test="${!empty publicacion.lImages }">
					<img pagespeed_no_defer="" src="${publicacion.lImages[0]}" alt="${publicacion.titulo}"/>
					</c:if>
					
					<div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a title="${publicacion.titulo}" href="/${publicacion.url}">${publicacion.titulo}</a></h5>
							<c:if test="${publicacion.sumaPuntos gt 0 }">
							<div class="rateit" data-rateit-value="${publicacion.sumaPuntos div publicacion.votantes}" data-rateit-ispreset="true" data-rateit-readonly="true" title="<fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${publicacion.sumaPuntos div publicacion.votantes}" /> / 5"></div>
							</c:if>
							<p>
								${fn:replace(publicacion.resumen, newLineChar, "<p/><p>")}
							</p>
						</div>
						<div class="post-meta"><span><i class="mini-ico-calendar"></i><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="date" dateStyle="long" value="${publicacion.fechaCreacion}"/></span><%-- <span style=""><i class="mini-ico-user"></i>  <a href="/${publicacion.url}">Jorge Amat</a></span>--%> <span><i class="mini-ico-comment"></i><a href="/${publicacion.url}/#comments">${fn:length(publicacion.lComentarios)} comments</a></span></div>
					</div>	
				</div>
				</c:forEach>				
			</div>
			<!-- end: Portfolio -->
		</div>     	
		<hr>			
						
			<%@ include file="/WEB-INF/jsp/includes/carrusel.jsp"%>
			
		</div>
		<!--end: Container-->
	
	</div>
	<!-- end: Wrapper  -->			

<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>
<script>
	
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		$(".titPortada").css({
			   'font-size' : '38px',
			   'white-space' : 'normal'
			});
		$(".descPortada").css({
			   'font-size' : '14px',
			   'margin-top' : '29px'
		});
	}
	
</script>

</body>
</html>