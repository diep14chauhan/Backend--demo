<%@ include file="menu.jsp" %>
<html>
 <body>
  <div style='text-align: center'>
   <h1 style='text-decoration: underline;'>Edit form</h1>
  </div>
  <form action="show-record.jsp">
   <table class='taf' cellpadding='15px'>
    <tr>
     <td>Enter product id</td>
     <td><input type='text' name='pid' class='tb' required></td>
      <td><button class='bt'>Show Record</button></td>
    </tr>
   </table>
  </form>
 </body>
</html>