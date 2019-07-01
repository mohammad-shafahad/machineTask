<%@page import="projectPackage.DBManager" %>

<%
    DBManager db=new DBManager();
    
String id=request.getParameter("id");
String q="delete from sampletab where id='"+id+"'";
if(db.executeNonQuery(q))
{
    out.println("<script>alert('data successfully Deleted');window.location.href='index.html';</script>");
}
else{
    out.println("<script>alert('data not Deleted');window.location.href='index.html';</script>");
}
%>