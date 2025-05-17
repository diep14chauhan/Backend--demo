<%@page import="java.sql.*"%>
<html>
 <body>
  <%
  String pid=request.getParameter("pid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  PreparedStatement ps=cn.prepareStatement("select * from productinfo where pid=?");
  ps.setString(1,pid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	%>
	 <%@ include file="menu.jsp" %>
	 <table class='tar' border='1' cellpadding='10px'>
	  <tr style='background-color:orange;color:white;font-size:20px'>
	   <th style="text-align: center" colspan="2">Product Details</th>
	  </tr>
	  <tr>
	   <th align="left">Product id</th>
	   <td><%=rst.getString(1)%></td>
	  </tr>
	  <tr>
	   <th align="left">Product name</th>
	   <td><%=rst.getString(2)%></td>
	  </tr>
	  <tr>
	   <th align="left">Product brand</th>
	   <td><%=rst.getString(3)%></td>
	  </tr>
	  <tr>
	   <th align="left">Product price</th>
	   <td><%=rst.getString(4)%></td>
	  </tr>
	 </table>
	<%	  
  }
  else
  {
	  %>
	  <jsp:include page="search.jsp" />
	  <div style='text-align:center;margin-top:20px'>
	   <h2 style='color:red'>Product with id <%=pid%> not found</h2>
	  </div>
	  <%
  }
  %>
 </body>
</html>