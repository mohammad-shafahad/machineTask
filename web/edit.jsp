<%-- 
    Document   : edit
    Created on : Jun 22, 2019, 4:11:13 PM
    Author     : user
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="projectPackage.DBManager" %>
<%
    DBManager db=new DBManager();
    String id=request.getParameter("id");
   
    String q="select * from sampletab where id='"+id+"'";
    ResultSet rs=db.selectQuery(q);
    while(rs.next()){
        String name=rs.getString("name");
        String email=rs.getString("email");
        String password=rs.getString("password");
        String mobile=rs.getString("mobile");
        %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="editcode.jsp">
            <h2 style="text-align: center;">Update Data</h2>
            <table border="2" align="center">
                <tr>
                    <td>Name</td>
                
                <td>
                    <input type="text" name="name" value="<%out.println(name);%>" placeholder="Enter your name"/>
                </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="email" value="<%out.println(email);%>"/>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="text" name="pwd" value="<%out.println(password);%>" />
                    </td>
                </tr>
                <tr>
                    <td>Mobile number</td>
                    <td>
                        <input type="text" name="mobile" value="<%out.println(mobile);%>"/>
                    </td>
                </tr>
                <tr>
                    
                
                <td>
                    <input type="hidden" name="id" value="<%out.println(id);%>"/>
                </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="update"/>
                    </td>
                </tr>
               
            </table>
        
        <%
    }
%>
</form>
    </body>
</html>
