<!DOCTYPE html>
<html>
    <head>
        <title>My Webpage</title>
        {% block stylesheets %}
            <link href="{{ 'css/bootstrap.css' }}" type="text/css" rel="stylesheet" />
         {% endblock %}
    </head>
    <body>
        <h2>Menú Principal</h2>
    	 <ul>
		  <li><a href="/">Home</a></li>
		  <li><a href="/test">Test</a></li>
		  <li><a href="/subscriberlist">SubscriberList</a></li>
          <li><a href="/subscribe">Subscribe to the newsleter</a></li>
		  <li><a href="/login">Login</a></li>
		  <li><a href="/register">Register</a></li>
		  <li><a href="/contact">Contacts</a></li>
		  <li><a href="/logout">Logout</a></li>
		  <li><a href="/personalarea">Personal Area</a></li>
		</ul> 

        <h3>Para acceder al contenido de la web debes estar registrado. Rellena los siguientes campos:</h3>
		
		<h4>El nombre de usuario debe tener entre 4 y 15 carácteres, sean letras o números:</h4>
		
		<h4>la contraseña debe tener:</h4>
		
		<ul>
			<li> al menos una letra mayúscula </li>
			<li> al menos una letra minúscula </li>
			<li> al menos un número o caracter especial </li>
			<li> como mínimo 8 caracteres y como máximo 15</li>
		</ul>

    <form action="/register" method="post">
    
        <div id="formHeader">Formulario de registro</div>
        
		<div id="formBody">
			<label for="campo-nombre">Nombre de usuario:</label>
			<input autocomplete="off" type="text" name="nombre">
			
			<label for="campo-email">Email:</label>
			<input autocomplete="off" type="email" name="email">

			<label for="campo-contraseña">Password:</label>
			<input autocomplete="off" type="password" name="contraseña">
			
			<label for="campo-contraseña">Password Repeat:</label>
			<input autocomplete="off" type="password" name="contraseña2">

			<input type="submit" value="registrarme">
		</div> 
        
    </form>

    </body>
</html>