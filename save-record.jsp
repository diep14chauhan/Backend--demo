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
  PreparedStatement ps=cn.prepareStatement("insert into productinfo values(?,?,?,?)");
  ps.setString(1,pid);
  ps.setString(2,name);
  ps.setString(3,brand);
  ps.setString(4,price);
  ps.executeUpdate();
  %>
  <div class='dv'>
   <h1 style='font-family: cursive;color:green'>Product record has been inserted successfully</h1>
  </div>
 </body>
</html>