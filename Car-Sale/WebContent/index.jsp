 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car Sale</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"></link>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		   
		
		<div class="row">
			<div class="col-md-3">
		
			</div>
			<div class="col-md-9">
				<%
					String where = "";
					Object model = request.getParameter("model_id");
					if(model!=null){
						where  = " WHERE car.model_id='"+model+"'";
					}
				
					//1. DB Connection
					//Connection c = DB.getCon();
					String sql = "SELECT *,(SELECT name FROM model WHERE model.id=car.model_id) as model_name FROM car "+where;
					//PreparedStatement ps = c.prepareStatement(sql);
					//ResultSet rs = ps.executeQuery();
					//while(rs.next()){
				%>
			
				<div class="row">
					<div class="col-md-4">
						<img src="images/default.png" 
						   class="img img-responsive img-thumbnail"/>
					</div>
					<div class="col-md-8">
						<h4><%=rs.getString("title") %></h4>
						<p> Brand : Toyota </p>
						<p> Model : <%=rs.getString("model_name") %> </p>
						<p> Price : <%=rs.getString("price") %>/= </p>
						
						<a href="car_view.jsp?id=<%=rs.getString("id") %>" class="btn btn-success"> View </a>
						   
					</div>
				</div>
				<br/>
				<%
					}
				%>
			</div>
		</div>
		
	</div>
	<jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>
		
	
</body>
</html>





