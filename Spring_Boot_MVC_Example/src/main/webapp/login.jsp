<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Login Form</title>
</head>



<body>

	<form:form name="submitForm" method="POST" onsubmit=" return validationForm()">

		<div align="center">
			<table>
				<tr>
					<td>Enter Numbers</td>
					<td><input type="text" name="Num" id="num"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Add"/></td>
				</tr>
			</table>
			
			<div>${error}</div>
			
			
			<div style="color: red">${error}</div>

		</div>
	</form:form>
	
	<script>
		var count = 0;
		var val;
		//Function for adding validation on input field
		function validationForm(){
			val = document.getElementById('num').value;
			count = 0;
			val = val.trim().split(',');
			if(val.length > 50){
				<%
					System.out.println("values entered more than 5");
				%>
				console.log('values entered more than 5');
				alert('values entered more than 5');
				return false;
			}
			val.forEach(function(elem, index){
				if(isNaN(elem)){
					<%
						System.out.println("inavlid input");
					%>
					console.log('inavlid input as: ' + elem);
					alert('inavlid input as: ' + elem);
					count++;
					
				}

				if(elem > 100){
					<%
						System.out.println("greater than 100");
					%>
					console.log(elem + ' is greater than 100');
					alert(elem + ' is greater than 100');
					count++;
				}
			});
			<%
				System.out.println();
			%>
			console.log('count == 0 -> ' + (count == 0));
			return (count == 0);
		}
	</script>
	
	
</body>
</html>