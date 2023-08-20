<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>JSP Sessions</title>
  </head>

  <body>
    <% if (request.getParameter("error") !=null) out.println("<b>Invalid entry Retry.</b><br>");


      %>

      <form action="Product.jsp">
        <h1> Add a product </h1>
        <h2>
          Name <input name="pname" id="pname" maxlength=40><br>
          Price <input type="number" name="pprice" id="pprice" onchange="setTwoNumberDecimal" min="1" max="100000"
            step="0.25"><br>
          Type <input name="ptype" id="ptype" maxlength=40><br>
        </h2>
        <button>Submit</button>

      </form>
  </body>

  </html>