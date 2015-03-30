<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
	<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
MetierVarietes metier = new MetierVarietes();
%>
<html>
<head>
<!-- <link rel="stylesheet" type="text/css" href="../nuceus01/WEB-INF/style/boostrap/css/bootstrap.min.css"> -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<link href="style.css" rel="stylesheet"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nucleus 0.1</title>
</head>
<body>
	<div style="text-align:center;"> <h2 >Liste des variétés de Noix</h1></div>
	<hr />
	<div  class="container" style="width:50%;">
	<div  class="jumbotron">
	<%
		List<Variete> varietes = metier.consulterVariete();
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