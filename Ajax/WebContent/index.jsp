<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function loadAjax() {
		var xmlHttp = new XMLHttpRequest();
		var sid=document.getElementById("sid").value;
		xmlHttp.open("GET", "MyAjaxServlet?sid="+sid, true);
		xmlHttp.send();

		xmlHttp.onreadystatechange = function() {
			if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
				document.getElementById("myDiv").innerHTML = xmlHttp.responseText;
			}
		}
	}
</script>



</head>
<body>
	
	<select id="sid" onchange="javascript:loadAjax();">
		<option value="0">--Select--</option>
		<option value="admin">Admin</option>
		<option value="employee">Employee</option>
	</select>
	<!-- <button onclick="javascript:loadAjax();">Click Here</button> -->
	
	<div id="myDiv"></div>
</body>
</html>