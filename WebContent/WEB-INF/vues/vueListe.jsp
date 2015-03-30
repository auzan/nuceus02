<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
	<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
MetierVarietes metier = new MetierVarietes();
List<Variete> varietes;
%>
<html>
<head>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<link href="style.css" rel="stylesheet"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nucleus 0.1</title>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">NUCEUS 2.0</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="?action=visualiser">Acceuil <span class="sr-only">(current)</span></a></li>
        </ul>
        </div>
        </div>
        </nav>
	<div style="text-align:center;"> <h2 >Liste des variétés de Noix</h1></div>
	<hr />
	<div  class="container" style="width:50%;">
	<div  class="jumbotron">
	<%
		varietes = (List<Variete>)request.getAttribute("variete");
		varietes = metier.consulterVariete();
	%>
	<table style="margin-left:auto;margin-right:auto;width:100%;" border="1" style="border-collapse:collapse">
	<thead style="background-color:green";>
	<tr>
	<th style="color:white;text-align:center;">Libellé</th>
	<th style="color:white;text-align:center;">AOC</th>
	<th style="color:white;text-align:center;">Supprimer</th>
	</tr>
	</thead>
	<tbody>
	<%
	int number = 2;
	int i =0;
	for(Variete variete : varietes){

if ( (number % 2) == 0) {
	%>
	<tr style="background-color:#9ACD32;">
	<%}
else{
%>
	<tr style="background-color:#FFFFE0;">
	<%} %>
	
	<td style="text-align:center;"><%= variete.getLibelle() %></td>
	<%  %>
	<% 
	if (variete.isAoc() == true){
		%>
	
	
	<td style="text-align:center;"><%= "Oui" %></td>
	<%} else{ %>
	
	<td style="text-align:center;"><%= "Non" %></td>
	<%} %>
	<td style="text-align:center;font-weight: bold;width:60px;"><form><button onclick="confirm('Voulez-vous vraiment supprimer cette variété ?')" class="btn" style="background-color:transparent;"><i class="glyphicon glyphicon-trash"></i></button>
	<input type="hidden" name="idVariete" value="<%= variete.getLibelle() %>"/>
		<input type="hidden" name="action" value="supprimer"/>
	</form>
	</td>
	<%
	number+=1; } %>
	
	</tbody>
	</table>
		<div style="margin-left:auto;margin-right:auto;text-align:center;"><a href="?action=renseignerAjout"><button  class="btn btn-default">Ajouter une variété</button></a></div>
	</div>
	</div>
</body>
</html>