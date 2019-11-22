<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alarm</title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
        var httpRequest = null;
        function load() {
             httpRequest = new XMLHttpRequest();
             // 지정한 URL에 GET 방식으로 데이터 요청
             httpRequest.onreadystatechange = viewMessage;

             httpRequest.open("GET", "\pl\alarm.jsp", true);

             httpRequest.send(null);

       }

        function viewMessage() {
             if (httpRequest.readyState == 4) {
                     if (httpRequest.status == 200) {
                           alert (httpRequest.responseText);
                     } else {
                           alert ("실패: " + httpRequest.status);
                     }
             }
        }
        load();
           </script> 
           
          

</head>
<body >
	<div>
		
		${user.name}님의 To-do List<br>
		<c:forEach var="list" items="${list}">
			{"list" : "${list.card_Name}"} <br>
		</c:forEach>
		

	</div>
	
</body>
</html>