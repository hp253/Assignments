<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.product.ListingProducts"%>
<%@page import="com.ecommerce.product.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
Product product = new Product(request.getParameter("pname"), request.getParameter("pprice"),
		request.getParameter("ptype"));
	
ListingProducts plist =null;
	if (session.getAttribute("plist") == null) {
		plist = new ListingProducts();
		List<Product> p = new ArrayList<>();
		plist.setPlist(p);
	
	}else{
		plist=ListingProducts.class.cast(session.getAttribute("plist"));
	}


	if (product.getProductName() == null || product.getProductPrice() == null || product.getProductName() == ""
			|| product.getProductPrice() == "") {
		response.sendRedirect("index.jsp?error=1");
	
	} else {
		plist.getPlist().add(product);

		session.setAttribute("plist", plist);
		response.sendRedirect("dashboard.jsp");
	
	}
%>
