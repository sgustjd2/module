<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 템플릿 페이지 </h2>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String name = request.getParameter("paramName");
	String control = request.getParameter("paramControl");
	String brand = request.getParameter("paramBrand");
	
	String brandnew = control+brand;
	
	if (brand==null) { 
		brand=control;
		} else {
			brand = brandnew;
		}
	System.out.println(name);
	System.out.println(control);
	System.out.println(brand);
	System.out.println(brandnew);
%>

<table border = 1>
	<tr>
		<th bgcolor = PapayaWhip colspan = 2 height = 100> 
			<!-- 상단메뉴 -->
			<jsp:include page = "top.jsp" flush="false"/> 
		</th>
	</tr>
	<tr>
		<th bgcolor = PeachPuff valign =top height = 300 width = 100>
			<br>
			<jsp:include page ='<%=control+"Left.jsp"%>' flush = "false"/>
		</th>
		<td id = "center" valign = top width = 400>
			<br>
			<h3>&nbsp;&nbsp;<%=name%></h3>
			<jsp:include page ='<%=brand+".jsp"%>' flush = "false"/>
			<br>
		</td>
	</tr>
	<tr>
		<th bgcolor = Moccasin colspan = 2 height = 100>
			<!-- 하단 메뉴 -->
			<jsp:include page = "bottom.jsp" flush = "false"/>
		</th>
	</tr>
	
</table>


