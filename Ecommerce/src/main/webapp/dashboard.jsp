<%@page import="com.ecommerce.product.ListingProducts"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ecommerce.product.Product"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<%
	if (session.getAttribute("plist") == null) {
		response.sendRedirect("index.jsp?error=1");
	}
	%>

	<%
	List<Product> plist = ListingProducts.class.cast(session.getAttribute("plist")).getPlist();
	%>

<body>
	<h1>ProductList</h1>
	<h2>
		Total Product list = 
		<%
			out.println(plist.size());
		%>
		</h2>
		<table border="1">

			<tr>
				<td>Product name
				</td>
				<td>Product Type
				</td>
				<td>Product Price
				</td>
			</tr>

			<%
			int cnt = ListingProducts.class.cast(session.getAttribute("plist")).getPlist().size();

			for (int g = 0; g < cnt; g++) {
			%>
			<tr>
				<td><%
				out.println(plist.get(g).getProductName());
				%></td>
				<td><%out.println(plist.get(g).getProductType());%></td>
				<td><%out.println(plist.get(g).getProductPrice());%></td>
			</tr>
			<%
			}
			%>
		</table>
</body>
<a href="multipleProducts.jsp">Click here to add more products</a>
</body>
</html>