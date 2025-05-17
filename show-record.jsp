<%@page import="java.sql.*"%>
<html>
 <style>
  input{
   width:100%; 
   font-size:20px;
  }
 </style>
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
	 <form action='update-record.jsp' method="post">
	 <table class='tar' border='1' cellpadding='10px'>
	  <tr style='background-color:orange;color:white;font-size:20px'>
	   <th style="text-align: center" colspan="2">Product Details</th>
	  </tr>
	  <tr>
	   <th align="left">Product id</th>
	   <td><%=pid%><input type='hidden' value='<%=pid%>' name='pid'></td>
	  </tr>
	  <tr>
	   <th align="left">Edit product name</th>
	   <td><input type='text' value='<%=rst.getString(2)%>' name='name'></td>
	  </tr>
	  <tr>
	   <th align="left">Edit product brand</th>
	   <td><input type='text' value='<%=rst.getString(3)%>' name='brand'></td>
	  </tr>
	  <tr>
	   <th align="left">Edit product price</th>
	   <td><input type='text' value='<%=rst.getString(4)%>' name='price'></td>
	  </tr>
	  <tr>
	   <td colspan="2" align="right">
	    <button class='bt'>Update Record</button>
	   </td>
	  </tr>
	 </table>
	 </form>
	<%	  
  }
  else
  {
	  %>
	  <jsp:include page="edit.jsp" />
	  <div style='text-align:center;margin-top:20px'>
	   <h2 style='color:red'>Product with id <%=pid%> does not</h2>
	  </div>
	  <%
  }
  %>
 </body>
</html>