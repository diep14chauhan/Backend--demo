<%@page import="java.sql.*"%>
<html>
 <head>
   <link href='CSS/pstyle.css' rel='stylesheet'>
 </head>
 <body>
  <%
  String pid=request.getParameter("pid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  PreparedStatement ps=cn.prepareStatement("delete from productinfo where pid=?");
  ps.setString(1,pid);
  int n=ps.executeUpdate();
  if(n>=1)
  {
	%>
	  <%@ include file="menu.jsp" %>
	  <div class='dv'>
	   <h1 style='color:red;font-family: cursive;'>Product record with id <%=pid%> has been deleted</h1>
	  </div>
	<%	  
  }
  else
  {
	  %>
	  <jsp:include page="delete.jsp" />
	  <div style='text-align:center;margin-top:20px'>
	   <h2 style='color:red;'>Product with id <%=pid%> does not exist</h2>
	  </div>
	  <%
  }
  %>
 </body>
</html>