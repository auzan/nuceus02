<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
	<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
MetierVarietes metier = new MetierVarietes();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nucleus 0.1</title>
</head>

<body>
<%
String libelle = (String)request.getAttribute("libelle");
String AOC = (String)request.getAttribute("AOC");
%>
	Libellé : <%=libelle %> <br/>
	AOC :<%= AOC %><br/>
	<a href="?action=visualiser">
</body>
</html>