
<%@page import="java.sql.ResultSet"%>
<%@page import="projectPackage.DBManager"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Data</title>
    </head>
    <body>
        <h2 style="text-align: center;">Display Data</h2>
        <table align="center" border="2">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Email</td>
                <td>password</td>
                <td>Mobile</td>
                <td>Delete</td>                
                <td>Edit</td>
                


            </tr>
            <tr>
            <%
                        String q="select * from sampletab";
                        DBManager db=new DBManager();
                        ResultSet rs=db.selectQuery(q);
                          
                        while(rs.next())
                        {
                        %>
                        <tr>
                           
                             <td><%=rs.getString(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>     
                            <td><%=rs.getString(4) %></td>
                            <td><%=rs.getString(5) %></td>   
                            <td><a href="delete.jsp?id=<%out.println(rs.getString(1));%>">Delete</a></td>   
                              <td><a href="edit.jsp?id=<%out.println(rs.getString(1));%>">Edit</a></td>
                            
                            

                        </tr>
                        <%
                            
                           }
                        %>
            </tr>
        </table>
           <h2 style="text-align: center;">     <a href="index.html">Homepage</a></h2>
    </body>
</html>
