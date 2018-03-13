 
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
	<script>
		var app = angular.module('myApp', []);

		app.controller('MyController',function($scope,$http){
			//console.log('angular efef eff');
	        $scope.getDataFromServer = function() {
	                $http({
	                        method : 'GET',
	                        url : 'http://localhost:8080/Car-Sale/DoViewCarDetails'
	                }).then(function successCallback(response) {
	                        $scope.supervisor = response.data;
	                        console.log('sucess');
	                } ,function errorCallback(response){
	                        console.log('error');
	                });

	        };
		});
	
	</script>
	
	
</body>
</html>





