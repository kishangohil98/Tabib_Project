<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%
    System.out.println("addmsg called");
    String msg=request.getParameter("msg");
    String uname=(String)session.getAttribute("uname");
    String with=(String)session.getAttribute("with");
    Calendar cal=Calendar.getInstance();
    SimpleDateFormat sdf=new SimpleDateFormat("HH:mm");
    boolean exe=true;
    String er=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tabib", "root", "tigor");
        Statement stm=con.createStatement();
        exe=stm.execute("insert into chat values('"+uname+"','"+with+"','"+msg+"','"+sdf.format(cal.getTime())+"')");
    }catch(Exception ex){
        er=ex.toString();
        out.println("<script>alert('Message Send Failed With Exception ');</script>"+ex.toString());
        response.sendRedirect("chat.jsp");
        System.out.println("add msg _ failing to added message");
    }
    if(!exe){
        response.sendRedirect("chat.jsp#notDone");
        System.out.println("add msg _ successfully added message");
    }
    else{
        System.out.println("<script>alert('Message Send Failed "+er+"');</script>");
    }
%>