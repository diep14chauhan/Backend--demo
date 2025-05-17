<%@ include file="menu.jsp" %>
<%@page import="java.sql.*"%>
<html>
 <body>
  <%
  String pid=request.getParameter("pid");
  String name=request.getParameter("name");
  String brand=request.getParameter("brand");
  String price=request.getParameter("price");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  PreparedStatement ps=cn.prepareStatement("update productinfo set name=?,brand=?,price=? where pid=?");
  ps.setString(1,name);
  ps.setString(2,brand);
  ps.setString(3,price);
  ps.setString(4,pid);
  ps.executeUpdate();
  %>
  <div class='dv'>
   <h1 style='font-family: cursive;color:green'>Product record has been updated successfully</h1>
  </div>
 </body>
</html>