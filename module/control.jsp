<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 흐름제어 페이지</h2>

<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String product = request.getParameter("product");
%>
<%
	String control = null;	
	String name = null; 
	if ( product.equals( "1" ) ){
		name = "텔레비전";
		control = "tv";
	} else if ( product.equals( "2" ) ){
		name = "디지털카메라";
		control = "dc";
	} else if ( product.equals( "3" ) ){
		name = "노트북";
		control = "nb";
	}
	
%>
<jsp:forward page = "template.jsp">
	<jsp:param name = "paramName" value ="<%=name%>"/>
	<jsp:param name = "paramControl" value ="<%=control%>"/>
</jsp:forward>
