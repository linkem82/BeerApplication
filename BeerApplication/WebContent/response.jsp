<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.util.*"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
  		<div class="col-lg-9 col-offset-3">
			<h2>The recommended beers are :</h2>
			<% List<String> brands = (List<String>)request.getAttribute("brands");
				Iterator it = brands.iterator();
				while(it.hasNext()) {
					out.print(it.next() + "</br>");
				}
			%>
		</div>
	</div>	
	<!-- JavaScript plugins (requires jQuery) -->
    <script src="http://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Optionally enable responsive features in IE8 -->
    <script src="js/respond.js"></script>
</body>
</html>