<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="fr.noixcoop.nuceus.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	MetierVarietes metier = new MetierVarietes();
%>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nucleus 0.1</title>
</head>
<body>
<div style="text-align:center;"><h2>Ajouter une varieté</h2></div>
	<div class="container">
		<div class="jumbotron" style="width:50%; margin-left:auto;margin-right:auto;margin-top:5px;">
			<form method="GET">
			
				<input type="text" placeholder="Nom de la variété" id="libelle" name="libelle" />
				<label>AOC </label>
				<input type="checkbox"  name="AOC" id="AOC"/>
				<input type="hidden" value="ajouter" name="action"/>
				<button class="btn btn-primary" type="submit">Ajouter</button>
				<a href="?action=annuler"><button class="btn btn-danger">Annuler</button></a>
			
		</div>
	</div>
	</form>
</body>
</html>