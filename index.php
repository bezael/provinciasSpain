<?php include 'inc/coneccion.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://bootswatch.com/superhero/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Buscador Provincias</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Buscador Provincias</a>
    </div>
  </div>
</nav>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="well well-sm">
			  <h4>Buscador de provincias de España!</h4>
			</div>
			<div class="panel panel-success">
			  <div class="panel-heading">
			  </div>
			  <div class="panel-body">
				    <div class="form-group">
				      <input type="text" id="TxtBuscardor"  onkeyup="buscar(this.value);" class="form-control" placeholder="Introduce la provincia a buscar....">
				    </div>
				    <div id="resultado" class="resultado"></div>
			  </div>
			</div>
		</div>
	</div>
</div>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>	
	<script src="js/app.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>