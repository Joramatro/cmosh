<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">

	<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>	
	<!-- start: Page Title -->
	<div id="page-title">

		<div id="page-title-inner">

			<!-- start: Container -->
			<div class="container">

				<h1 id="_name2" itemprop="name"><i class="ico-phone ico-white"></i>${publicacion.titulo}</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	
	<!--start: Wrapper -->
	<div itemscope itemtype="http://schema.org/Article" id="wrapper">
		<div style="display:none"><span itemprop="url">http://www.comprarmovileshoy.com/${publicacion.url}</span><span itemprop="publisher">Comprar Móviles Hoy</span></div>		
		<!--start: Container -->
    	<div class="container">
			<% 
				int port = request.getServerPort();
				StringBuilder result = new StringBuilder();
				result.append(request.getScheme())
				      .append("://")
				      .append(request.getServerName());
				
				if (port != 80) {
				  result.append(':')
				        .append(port);
				}
				
				pageContext.setAttribute("separador", "-");
			%>
    		<ul class="breadcrumbs"><li class="home" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a name="header.breadcrumb.1" href="<%=result.toString()%>" itemprop="url" title="Página principal" class="migapan"><span itemprop="title">Página principal</span></a></li>
				<li class="crumb0" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.2" href="<%=result.toString()%>/moviles" itemprop="url" title="Móviles" class="migapan"><span itemprop="title">Móviles</span></a></li>
				<li class="crumb1" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.3" href="<%=result.toString()%>/moviles?filtro=${fn:replace(publicacion.clase1, " ", separador)}" itemprop="url" title="${publicacion.clase1}" class="migapan"><span itemprop="title">${publicacion.clase1}</span></a></li>
				<c:if test="${not empty publicacion.clase2}">
					<li class="crumb2" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.4" href="<%=result.toString()%>/moviles?filtro=${fn:replace(publicacion.clase2, " ", separador)}" itemprop="url" title="${publicacion.clase2}" class="migapan"><span itemprop="title">${publicacion.clase2}</span></a></li>				
				</c:if>
				<c:if test="${not empty publicacion.clase7}">
					<li class="crumb3" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.5" href="<%=result.toString()%>/moviles?filtro=${fn:replace(publicacion.clase7, " ", separador)}" itemprop="url" title="${publicacion.clase7}" class="migapan"><span itemprop="title">${publicacion.clase7}</span></a></li>				
				</c:if>
				<c:if test="${not empty publicacion.clase10}">
					<li class="crumb4" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.6" href="<%=result.toString()%>/moviles?filtro=${fn:replace(publicacion.clase10, " ", separador)}" itemprop="url" title="${publicacion.clase10}" class="migapan"><span itemprop="title">${publicacion.clase10}</span></a></li>				
				</c:if>
				<c:if test="${not empty publicacion.clase11}">
					<li class="crumb5" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.7" href="<%=result.toString()%>/moviles?filtro=${fn:replace(publicacion.clase11, " ", separador)}" itemprop="url" title="${publicacion.clase11}" class="migapan"><span itemprop="title">${publicacion.clase11}</span></a></li>				
				</c:if>
				<c:if test="${not empty publicacion.clase12}">
					<li class="crumb6" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.8" href="<%=result.toString()%>/moviles?filtro=${fn:replace(publicacion.clase12, " ", separador)}" itemprop="url" title="${publicacion.clase12}" class="migapan"><span itemprop="title">${publicacion.clase12}</span></a></li>				
				</c:if>
				<c:if test="${not empty publicacion.clase3}">
					<li class="crumbPrecio" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.precio" href="<%=result.toString()%>/moviles?filtroPrecio=${fn:replace(publicacion.clase3, " ", separador)}" itemprop="url" title="${publicacion.clase3}" class="migapan"><span itemprop="title">${publicacion.clase3}</span></a></li>				
				</c:if>
				<li class="crumbFinal"><span>&nbsp;&gt;&nbsp;</span>${publicacion.titulo}</li>
			</ul>
			
			<!-- start: Flexslider -->
			<div style="max-width: 515px;height: 435px; margin: 0 auto;" class="slider" >
				<div id="flex1" class="flexslider home">
					<c:if test="${publicacion.disponible eq 'S' }">
						<a target="_blank" onClick="ga('send', 'event', 'Venta', '${publicacion.url}', 'Imagen Superior');" href="/venta/principal/${publicacion.url}">
					</c:if>
					<ul class="slides">
						<c:forEach var="imagen" items="${publicacion.lImages}" varStatus="status">
						<c:if test="${status.count ne 3}">
							<li>
								<img style="width: 420px;height: 420px;" src="${imagen}"  alt="${publicacion.titulo}" />
							</li>
						</c:if>
						</c:forEach>
						<div class="slide-caption n">
							<h3>${publicacion.titulo2}</h3>
						</div>
					</ul>
					<c:if test="${publicacion.disponible eq 'S' }">
						</a>
					</c:if>
				</div>
			</div>
			<!-- end: Flexslider -->
			<hr>
			
			<% pageContext.setAttribute("newLineChar", "\n"); %>
			<!-- start: Row -->
			<div class="row">
				
				<div class="span2">					
					<ul class="project-info" style="font-size: 12px;">
						<li><strong>Número visitas&nbsp;</strong>&nbsp;  ${publicacion.numVisitas}</li>
						<c:if test="${publicacion.sumaPuntos gt 0 }">
							<div>
								<li><strong>Puntos&nbsp;</strong>&nbsp; 
								<a href="#comments"><b><span>${publicacion.sumaPuntos}</span></b></a>
								&nbsp;&nbsp;(de <span>${publicacion.votantes}</span> votantes)</li>								
							</div>
							<strong>Media&nbsp;</strong>&nbsp;&nbsp;<div class="rateit" data-rateit-value="${publicacion.sumaPuntos div publicacion.votantes}" data-rateit-ispreset="true" data-rateit-readonly="true" title="<fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${publicacion.sumaPuntos div publicacion.votantes}" /> / 5"></div> 
						</c:if>
						<li><strong>Fecha&nbsp;</strong>&nbsp;<span id="_datePublished5" itemprop="datePublished" content="<fmt:setLocale value='es_ES' scope='session'/><fmt:formatDate type='date' dateStyle='short' value='${publicacion.fechaCreacion}'/>"> <fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="date" dateStyle="long" value="${publicacion.fechaCreacion}"/></span></li>
						<li><strong>Autor&nbsp;</strong>&nbsp; <a target="_blank" href="${publicacion.googleAutor}" rel=”author”><span id="_author3" itemprop="author" itemscope itemtype="http://schema.org/Person">
						<span itemprop="name">${publicacion.autor}</span></span></a></li>
					</ul>					
				</div>				
				<div class="span10">
					<!-- Go to www.addthis.com/dashboard to customize your tools -->
					<div class="addthis_native_toolbox"></div> 
					
					<br>
				
					<c:if test="${publicacion.disponible ne 'N'}">
						<h2><a href="/venta/principal/${publicacion.url}" onClick="ga('send', 'event', 'Venta', '${publicacion.url}', 'Boton Compralo Hoy');" class="button color launch" target="_blank">¡ Comprar Hoy!</a></h2>				
					</c:if>
					<meta id="_articleBody7" itemprop="articleBody" content="${fn:replace(publicacion.articulo, "\"", "'")}">
					${publicacion.articulo}				
					<br>
					<c:if test="${publicacion.disponible ne 'N'}">
						<br><h2><a href="/venta/principal/${publicacion.url}" onClick="ga('send', 'event', 'Venta', '${publicacion.url}', 'Boton Compralo hoy al mejor precio');" class="button color launch">¡ Comprar Hoy!</a></h2>
					</c:if>					
					
					<!-- Go to www.addthis.com/dashboard to customize your tools -->
					<div class="addthis_native_toolbox"></div> 
					
					<br><br>
					<p style="font-style: italic;">Por favor, no dudes en puntuar y comentar tu opinión para aportar más detalles sobre el producto en la sección de <a href="#comments">comentarios</a></p>
				</div>
				<div id="banGoogleFinArticulo" class="iframe_wrap" style="width: 64%; margin:0 auto;">
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- interior1r -->
					<ins class="adsbygoogle"
					     style="display:block"
					     data-ad-client="ca-pub-3168560600423825"
					     data-ad-slot="9603133345"
					     data-ad-format="auto"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				</div>					
			</div>
			<!-- end: Row -->
			
			
			<hr><hr>

			<div id="ttpi" style="margin-top:7%"></div>
				<!-- start: Row --> 
			<%@ include file="/WEB-INF/jsp/includes/masleidos.jsp"%>
			
			<hr>
			<div class="row">
				<div class="span9">
					
					<div class="title"><h3>También te puede interesar...</h3></div>
					
					<!-- start: Row -->
		      		<div class="row">
						<c:forEach var="publicacionRel" items="${publicaciones}" varStatus="status" end="2">	
						<div class="span3">	
							<div class="picture">
								<a href="/${publicacionRel.url}" title="${publicacionRel.titulo}">
									<c:if test="${!empty publicacionRel.lImages }">
									<img style="width: 270px;height: 240px;" src="${publicacionRel.lImages[0]}" alt="${publicacionRel.titulo}"/>
									</c:if>
									<div class="image-overlay-link"></div>
								</a>
							</div>
							<div class="item-description">
								<h4><a title="${publicacionRel.titulo}" href="/${publicacionRel.url}">${publicacionRel.titulo}</a></h4>
								<c:if test="${publicacionRel.sumaPuntos gt 0 }">
								<div class="rateit" data-rateit-value="${publicacionRel.sumaPuntos div publicacionRel.votantes}" data-rateit-ispreset="true" data-rateit-readonly="true" title="<fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${publicacionRel.sumaPuntos div publicacionRel.votantes}" /> / 5"></div>
								</c:if>
								<p>
									${fn:replace(publicacionRel.descripcion, newLineChar, "<p/><p>")}
								</p>
							</div>					
        				</div>
        				</c:forEach>					
					</div>
				</div>
				
			</div>
			<hr>

			<div class="row" style="margin-top: 35px;">			
				<div class="span9">
				<!-- start: Comments -->
				 <h4>Comentarios <span class="comments-amount">(${fn:length(publicacion.lComentarios)})</span></h4>
							
				<c:choose>
				<c:when test="${publicacion.votantes gt 0}">
					<div itemscope itemtype="http://data-vocabulary.org/Review-aggregate" id="comments" class="comments-sec">
						<div style="display:none"><span itemprop="itemreviewed">${publicacion.titulo}</span><span itemprop="votes">${publicacion.votantes}</span><span itemprop="count">${fn:length(publicacion.lComentarios)}</span><span itemprop="rating" itemscope itemtype="http://data-vocabulary.org/Rating"><span itemprop="average">${publicacion.sumaPuntos div publicacion.votantes}</span><span itemprop="best">5</span></span><img itemprop="photo" src="${publicacion.lImages[0]}" /></div>
						<ol class="commentlist">
						<c:forEach var="comentario" items="${publicacion.comentariosDeref}" varStatus="status">
							<c:if test="${comentario.publicado ne 'N'}">
							<li style="width: 100%;padding-bottom:6px">
								<div class="comments">
									<div class="avatar">
									<c:choose>
									<c:when test="${empty comentario.gravatar }">
									<img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" width="50" height="50" border="0" /> 
									</c:when>
									<c:otherwise>
									<img src="${comentario.gravatar}" alt="" width="50" height="50" border="0" />
									</c:otherwise>
									</c:choose>
									</div>
									<div class="comment-des" itemscope itemtype="http://data-vocabulary.org/Review">
										<span style="display:none" itemprop="itemreviewed">${publicacion.titulo}</span>
										<a title="Responder mensaje citando" href="#comments-form" onclick="javascript:replyComment('${status.count}');" style="font-size:14px;" >#${status.count}</a>
										<div class="comment-by">
										<c:choose>
										<c:when test="${empty comentario.web}">
										<strong><span itemprop="reviewer">${comentario.nombre}</span></strong>
										</c:when>
										<c:otherwise>
										<a rel="nofollow" href="http://${comentario.web}"><strong><span itemprop="reviewer">${comentario.nombre}</span></strong></a>
										</c:otherwise>
										</c:choose>
										 <span class="reply"><span style="color:#aaa"><c:if test="${comentario.puntos gt 0}">/ </span><b>&nbsp;<span itemprop="rating">${comentario.puntos}</span></b> puntos</c:if></span><span class="date"><time itemprop="dtreviewed" datetime="<fmt:setLocale value='es_ES' scope='session'/><fmt:formatDate type='date' dateStyle='short' value='${comentario.fecha}'/>"><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="both" dateStyle="medium" timeStyle="short" value="${comentario.fecha}"/></time></span></div>
										<p>
										<c:if test="${!empty comentario.comentarioReply}">
											<span style="color:#0088cc;">@${comentario.comentarioReplyNombre} &nbsp;</span><a style="display:inherit" onmouseover="document.getElementById('comment_ref_${status.count}').style.display='block'" onmouseout="document.getElementById('comment_ref_${status.count}').style.display='none';" onclick="document.getElementById('comment_ref_${status.count}').style.display='none';" class="ancla_referencia">#${comentario.comentarioReplyNbr}<span class="referencia" id="comment_ref_${status.count}" style="display:none;font-size: 13px;">${comentario.comentarioReply}</span></a> &nbsp;
										</c:if>
										
										<span itemprop="description">${fn:replace(comentario.comentario, newLineChar, "<br>")}</span>
										</p>
										<div style="clear: both;padding-top: 10px;padding-bottom: 10px;">
											<a title="Responder mensaje citando" href="#comments-form" onclick="javascript:replyComment('${status.count}');" style="font-size:14px;" >Responder</a>
										</div>
									</div>
								</div>		
							</li>
							</c:if>						
						</c:forEach>
						</ol>
		
					</div>
				</c:when>
				<c:otherwise>
					<div id="comments" class="comments-sec">
						<ol class="commentlist">
						<c:forEach var="comentario" items="${publicacion.comentariosDeref}" varStatus="status">
							<c:if test="${comentario.publicado ne 'N'}">
							<li style="width: 100%;padding-bottom:6px">
								<div class="comments">
									<div class="avatar">
									<c:choose>
									<c:when test="${empty comentario.gravatar }">
									<img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" width="50" height="50" border="0" /> 
									</c:when>
									<c:otherwise>
									<img src="${comentario.gravatar}" alt="" width="50" height="50" border="0" />
									</c:otherwise>
									</c:choose>
									</div>
									<div class="comment-des" itemscope itemtype="http://data-vocabulary.org/Review">
										<span style="display:none" itemprop="itemreviewed">${publicacion.titulo}</span>
										<a title="Responder mensaje citando" href="#comments-form" onclick="javascript:replyComment('${status.count}');" style="font-size:14px;" >#${status.count}</a>
										<div class="comment-by">
										<c:choose>
										<c:when test="${empty comentario.web}">
										<strong><span itemprop="reviewer">${comentario.nombre}</span></strong>
										</c:when>
										<c:otherwise>
										<a rel="nofollow" href="http://${comentario.web}"><strong><span itemprop="reviewer">${comentario.nombre}</span></strong></a>
										</c:otherwise>
										</c:choose>
										 <span class="reply"><span style="color:#aaa"><c:if test="${comentario.puntos gt 0}">/ </span><b>&nbsp;<span itemprop="rating">${comentario.puntos}</span></b> puntos</c:if></span><span class="date"><time itemprop="dtreviewed" datetime="<fmt:setLocale value='es_ES' scope='session'/><fmt:formatDate type='date' dateStyle='short' value='${comentario.fecha}'/>"><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="both" dateStyle="medium" timeStyle="short" value="${comentario.fecha}"/></time></span></div>
										<p>
										<c:if test="${!empty comentario.comentarioReply}">
											<span style="color:#0088cc;">@${comentario.comentarioReplyNombre} &nbsp;</span><a style="display:inherit" onmouseover="document.getElementById('comment_ref_${status.count}').style.display='block'" onmouseout="document.getElementById('comment_ref_${status.count}').style.display='none';" onclick="document.getElementById('comment_ref_${status.count}').style.display='none';" class="ancla_referencia">#${comentario.comentarioReplyNbr}<span class="referencia" id="comment_ref_${status.count}" style="display:none;font-size: 13px;">${comentario.comentarioReply}</span></a> &nbsp;
										</c:if>
										
										<span itemprop="description">${fn:replace(comentario.comentario, newLineChar, "<br>")}</span>
										</p>
										<div style="clear: both;padding-top: 10px;padding-bottom: 10px;">
											<a title="Responder mensaje citando" href="#comments-form" onclick="javascript:replyComment('${status.count}');" style="font-size:14px;" >Responder</a>
										</div>
									</div>
								</div>		
							</li>
							</c:if>						
						</c:forEach>
						</ol>
		
					</div>
				</c:otherwise>
				</c:choose>
					<!-- end: Comments -->
				<div class="clear" style="padding-top: 35px;"></div>

				<!-- start: Comment Add -->
				<h4>Deja un comentario</h4>
				<div class="form-spacer"></div>
				
				<!-- Form -->
				<div id="comments-form">
					<form action="/${publicacion.url}/nuevoComentario" id="formComment" method="post">
						<input id="nbrComment" name="nbrComment" type="hidden"/>
						<div class="field">
							<label>Nombre: <span>*</span></label>
							<input id="comNombre" type="text" name="nombre" maxlength="30" class="text" />
						</div>

						<div class="field">
							<label>Email: (No será publicado) <span>*</span></label>
							<input id="comEmail" type="text" name="email" maxlength="40" class="text" />
						</div>
						
						<div class="field">
							<label>Web: </label>
							<input type="text" name="web" class="text" maxlength="90" />
						</div>							
						
						<div class="field">
							<label>Dar Puntos: </label>
							<select name="puntos" style="width: 9%;" title="Por favor, valora (5 lo mejor) este producto">
							  <option value="5">5</option>
							  <option value="4">4</option>
							  <option value="3">3</option>
							  <option value="2">2</option>
							  <option value="1">1</option>
							  <option value="0">No puntuar</option>
							</select>
						</div>

						<div class="field">
							<label>Comentario: <span>*</span></label>
							<textarea id="comComentario" name="comentario" class="text textarea" ></textarea>
						</div>
						
						<label>El comentario puede estar sujeto a moderación y tardar unos instantes en aparecer publicado una vez enviado</label>
						
						<div class="field">
						<br>
							<input type="button" id="send" value="Enviar" onclick="if(validarComentarios()){this.form.submit()}"/>
						</div>
						<input name="url" type="hidden" value="${publicacion.url}"/>

					</form>
					
				</div>		

					<!-- end: Comment Add -->
			</div>
		</div>		
												
		<br><br>					
															
		<%@ include file="/WEB-INF/jsp/includes/carrusel.jsp"%>					
		</div>
		<!-- end: Container  -->
	
	</div>
	<!-- end: Wrapper -->		
	
	<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>

	<div id="banAmazonHorizontal" style="position:absolute;top:1025px;left:54px;color:#F57C17">
		<div style="margin-left: 33px; margin-bottom: 12px;"><b>OFERTAS</b></div>
			<%-- <div id="Amazon1" class="iframe_wrap">
	    		<iframe src="http://rcm-eu.amazon-adsystem.com/e/cm?lt1=_blank&bc1=EBF7F9&IS2=1&bg1=EBF7F9&fc1=666666&lc1=005580&t=comprarmicroh-21&o=30&p=8&l=as1&m=amazon&f=ifr&ref=tf_til&asins=B007HMLEAY" style="width:120px;height:240px;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0"></iframe>   		   		
	    	</div>
			--%>
			<div id="Amazon2prod" class="iframe_wrap">
				<iframe src="http://rcm-eu.amazon-adsystem.com/e/cm?t=comprarmovsh-21&o=30&p=8&l=as1&asins=B00LGU4H2A&ref=tf_til&fc1=666666&IS2=1&lt1=_blank&m=amazon&lc1=005580&bc1=EBF7F9&bg1=EBF7F9&f=ifr" style="width:120px;height:240px;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0"></iframe>
			</div>

			<div id="Amazon3prod" class="iframe_wrap">
				<iframe src="http://rcm-eu.amazon-adsystem.com/e/cm?t=comprarmovsh-21&o=30&p=8&l=as1&asins=B00K83BIX2&ref=tf_til&fc1=666666&IS2=1&lt1=_blank&m=amazon&lc1=005580&bc1=EBF7F9&bg1=EBF7F9&f=ifr" style="width:120px;height:240px;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0"></iframe>
			</div>
	    	<%--
			<div id="Amazon4prod" class="iframe_wrap">
	    		<iframe src="http://rcm-eu.amazon-adsystem.com/e/cm?t=comprarmicroh-21&o=30&p=8&l=as1&asins=B007TVJSGA&ref=tf_til&fc1=666666&IS2=1&lt1=_blank&m=amazon&lc1=005580&bc1=EBF7F9&bg1=EBF7F9&f=ifr" style="width:120px;height:240px;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0"></iframe>	   		
	    	</div>
	    	
			<div id="Amazon5prod" class="iframe_wrap">
	    		<iframe src="http://rcm-eu.amazon-adsystem.com/e/cm?t=comprarmicroh-21&o=30&p=8&l=as1&asins=B0055ZOY7K&ref=tf_til&fc1=666666&IS2=1&lt1=_blank&m=amazon&lc1=005580&bc1=EBF7F9&bg1=EBF7F9&f=ifr" style="width:120px;height:240px;" scrolling="no" marginwidth="0" marginheight="0" frameborder="0"></iframe>	   		
	    	</div>	
	    	  --%>  		    	
	</div>
	<script>
		if($('#footer').width() < 855){
			$("#banAmazonHorizontal").hide();
		}
	</script>
	
	<script>
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
			$(".slide-caption").hide();
			$("#_image6").css('margin-left', '');
			$(".imageContextual").css('margin-left', '');
		}
		if($('#footer').width() < 1345){
			$(".slide-caption").hide();
		}
	</script>
	<script>
	$(window).bind('resize', function () { 
		if($('#footer').width() < 855){
			$("#banAmazonHorizontal").hide();
		}else{
			$("#banAmazonHorizontal").show();
		}
		if($('#footer').width() < 1345){
			$(".slide-caption").hide();
		}else{
			$(".slide-caption").show();
		}
	});
	
	$(window).scroll(function(){
		if($('#footer').width() >= 855){
			if($(window).scrollTop() > 1025){
				$("#banAmazonHorizontal").css({position:"fixed",top:"20px"});
			    if($("#banAmazonHorizontal").offset().top + $('#banAmazonHorizontal').outerHeight(true) > $("#ttpi").offset().top - 180){
			    	$("#banAmazonHorizontal").hide();
			    }else{
			    	$("#banAmazonHorizontal").show();
			    }
			}else{
				$("#banAmazonHorizontal").css({position:"absolute",top:"1025px",left:"54px"});
			}
	    }
	});
	</script>
	<script>
	jQuery(document).ready(function($){
	    
	    $('#_image6').click(function() {
	    	ga('send', 'event', 'Venta', '${publicacion.url}', 'Imagen Medio');  
	    });
	    
	    $('.imageContextual').click(function() {
	    	ga('send', 'event', 'Venta', '${publicacion.url}', 'Imagen ebook');  
	    });
	    
	    $('.linkContextual').click(function() {
	    	ga('send', 'event', 'Venta', '${publicacion.url}', 'Link Contextual');  
	    });
	    
	    $('.migapan').click(function(e) {
	    	ga('send', 'event', 'Migas', 'Miga '+$(e.target).text(), $(e.target).text());  
	    });
	});
	
	</script>	
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5213a7af197d855e"></script>

</body>
</html>