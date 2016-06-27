var employee = angular.module( "employee", [ "ngRoute" ] );

employee
	.config( function ( $routeProvider  ) {
		$routeProvider
		.when( "/home", {
			templateUrl: "employee/home"
			controller: 'home'
		})
	});