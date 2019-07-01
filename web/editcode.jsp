<%@page import="projectPackage.DBManager" %>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("pwd");
String mobile=request.getParameter("mobile");

DBManager db=new DBManager();
String q="update sampletab set name='"+name+"',email='"+email+"',password='"+password+"',mobile='"+mobile+"' where id='"+id+"'";
if(db.executeNonQuery(q))
{
    out.println("<script>alert('data updated successfully');window.location.href='index.html';</script>");
}
else
{
    out.println("<script>alert('data not updated');window.location.href='index.html';</script>");
}
%>