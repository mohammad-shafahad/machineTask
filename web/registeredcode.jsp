<%@page import="projectPackage.DBManager" %> 
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("pwd");
int mobile=Integer.parseInt(request.getParameter("mobile"));
String image=request.getParameter("image");
String query="insert into sampletab(name,email,password,mobile)values('"+name+"','"+email+"','"+password+"','"+mobile+"')";
DBManager db=new DBManager();
if(db.executeNonQuery(query))
{
    out.println("<script>alert('data inserted successfully');window.location.href='index.html';</script>");
}
else{
    out.println("<script>alert('data not nserted');window.location.href='index.html';</script>");
    
}
   


%>