<%@page import="Connection.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="Connection.DBconnection" %>
<%@ page import="Connection.SelectOP" %>

<% DBconnection.createCon(); %>

<nav>
  <ul>
    <li><a href="additem.jsp">AddItems</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Services</a></li>
    <li><a href="#">Contact</a></li>
  </ul>
</nav>

<table>
  <thead>
    <tr>
      <th>Item ID</th>
      <th>Item Name</th>
      <th>Item weight</th>
      <th>Item Quantity</th>
      <th>Provider Name</th>
      <th>Category</th>
      <th>Description</th>
      
    </tr>
  </thead>
  <tbody>
  	<% ResultSet rs=SelectOP.getData("Select * from items order by category_id,provider_id");
  		try{ 
  	     while(rs.next())
  	     {
  	    	 out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
/*   	          rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5);
 */  	     }
  	     rs.close();
  	     }
  	     catch(Exception e){System.out.println(e);
  	     }
  		
  	    
  	%>
    	

  </tbody>
</table>



</body>
</html>