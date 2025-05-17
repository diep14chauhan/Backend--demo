<%@ include file="menu.jsp" %>
<%@page import="java.sql.*"%>
<html>
 <body>
  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  Statement st=cn.createStatement();
  ResultSet rst=st.executeQuery("select * from productinfo");
  %>
  <table class='tar' border='1' cellpadding='6px'>
   <tr>
    <th>Product id</th><th>Product name</th><th>Product brand</th><th>Product price</th>
   </tr>
   <%
   while(rst.next())
   {
	   %>
	    <tr>
	     <td><%=rst.getString(1)%></td>
	     <td><%=rst.getString(2)%></td>
	     <td><%=rst.getString(3)%></td>
	     <td><%=rst.getString(4)%></td>
	    </tr>
	   <%
   }
   %>
  </table>
 </body>
</html>