<%@ include file="menu.jsp" %>
<html>
 <body>
  <div style='text-align: center'>
   <h1><u>Insert form</u></h1>
  </div>
  <form action="save-record.jsp" method="post">
   <table class='taf' cellpadding='15px'>
    <tr>
     <td>Enter product id</td>
     <td><input type='text' name='pid' class='tb' required></td>
    </tr>
    <tr>
     <td>Enter product name</td>
     <td><input type='text' name='name' class='tb' required></td>
    </tr>
    <tr>
     <td>Enter product brand</td>
     <td><input type='text' name='brand' class='tb' required></td>
    </tr>
    <tr>
     <td>Enter product price</td>
     <td><input type='text' name='price' class='tb' required></td>
    </tr>
    <tr>
     <td colspan="2" align="right">
      <button class='bt'>Save Record</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>