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

				<h1><i class="ico-keynote ico-white"></i>Sobre Nosotros</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	
	<!--start: Wrapper-->
	<div id="wrapper">
				
		<!--start: Container -->
    	<div class="container" style=" padding-bottom: 100px; ">
	
			<!--start: Row -->
	    	<div class="row">
		
				<div class="span8">
					
					<!-- start: About Us -->
					<div id="about">
						<div class="title"><h3>Sobre nosotros</h3></div>
						<p>
							Somos un equipo de personas con gran formación tecnólogica que quiere ofrecerte la mejor información y los mejores análisis sobre móviles en la red.
						</p>
						<p>
							Nuestras valoraciones son honestas y con sello propio, pretendiendo aclarar tu idea para comprar un móvil en función de tus necesidades. Estamos aquí para ayudarte en todo lo posible y darte la mejor información que puedas encontrar en Internet.
						</p>
						<p>
							Por favor, no dudes en contactar con nosotros para consultarnos cualquier duda que tengas ó darnos tu opinión sobre nuestro trabajo, queremos ayudarte y conseguir que tu elección sea la idónea. Puedes usar la sección de comentarios de cada artículo para puntuar, preguntar o aportar más información sobre un producto analizado.
						</p>
					</div>	
					<!-- end: About Us -->

					<!-- start: History -->
					<div id="history">
						<div class="title"><h3>Historia</h3></div>
						<p>
							<span class="dropcap">1</span>Somos un grupo humano cuya profesión y pasión es la tecnología, que reciéntemente ha decidido apostar por una nueva marca en la que ofrecer sus conocimientos para ayudar a otras personas.
						</p>
						<p>
							<span class="dropcap color">2</span>Desde hace ya unos años, los móviles, hoy en día también conocidos como smartphones, han irrumpido con fuerza en el mercado y se presetan claramente como un aparato tecnológico en constante desarrollo y mejora que promete ser un complemento imprescindible en nuestro día a día para mantenernos conectados y cerca de los nuestros.
						</p>
						<p>
							<span class="dropcap dark">3</span>Nosotros venimos de una formación relacionada con la tecnología, y tras más de 10 años trabajando para distintas empresas TIC privadas y estudiando nuevos gadgets tecnológicos en nuestro tiempo libre, reunimos aquí todos nuestros conocimientos para intentar crear la mejor web de habla hispana sobre móviles y productos relacionados. Nuestro objetivo es ser honestos y aportar valor a nuestros lectores. 
						</p>
						<p>
							Reciéntemente hemos iniciado nuestra propia empresa, dónde pretendemos ofrecer la mejor información y los mejores análisis para conseguir que aciertes con la compra del producto que buscas. Estamos aquí para ayudarte y que decidas con la mejor opinión creada posible, <a title="Contacto" href="/contacto">contacta</a> con nosotros cuando así lo requieras.
						</p>
					</div>	
					<!-- end: History -->
														
				</div>	
				
				<div class="span4">
					
					<!-- start: Sidebar -->
					<div id="sidebar" style="padding-bottom: 50px;">

						<!-- start: Skills -->
				       	<div class="title"><h3>Nuestras habilidades</h3></div>
				       	<ul class="progress-bar">
				        	<li>
				            	<h5>Productos de marca ( 90% )</h5>
				            	<div class="meter"><span style="width: 90%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Gestión de contenidos( 100% )</h5>
				            	<div class="meter"><span style="width: 100%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Desarrollo web ( 100% )</h5>
				            	<div class="meter"><span style="width: 100%"></span></div><!-- Edite width here -->
				          	</li>
				          	<li>
				            	<h5>Optimización SEO ( 90% )</h5>
				            	<div class="meter"><span style="width: 90%"></span></div><!-- Edite width here -->
				          	</li>
				      	</ul>
				      	<!-- end: Skills -->



					</div>
					<!-- end: Sidebar -->					
				</div>
				
			</div>
			<!--end: Row-->
		</div>
		<div>
			<%@ include file="/WEB-INF/jsp/includes/carrusel.jsp"%>
		</div> 
		<!--end: Container-->		
	</div>
	<!-- end: Wrapper  -->		
	
	<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>

</body>
</html>	