<%
    String name=(String)session.getAttribute("uname");
    String with=(String)session.getAttribute("with");
    char s=34;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body style="background-size: cover;background-image: url('images/chatback.jpg');" >
        <script>
    var xmlhttp = new XMLHttpRequest();
var url = "allchat.jsp";
xmlhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    var myArr = JSON.parse(this.responseText);
    myFunction(myArr);
  }
};
xmlhttp.open("GET", url, true);
xmlhttp.send();
function myFunction(arr) {
  var i;
  var past="";
  for(i = 0; i < arr.length; i++) {
    if(((arr[i].from===<%=s+name+s%>)&&(arr[i].to===<%=s+with+s%>))||((arr[i].from===<%=s+with+s%>)&&(arr[i].to===<%=s+name+s%>))){
        if((arr[i].from===<%=s+name+s%>)&&(arr[i].to===<%=s+with+s%>)){
            past=past+"<br><br><br><br><div style='background:white; padding:10px; width:100%; height:100%; max-width:200px; max-height:50px; border:1px solid #000;float:right;'> "+arr[i].msg+" <br>At: "+arr[i].date+"</div><br>";
        }
        else{
            past=past+"<br><br><br><br><div style='background:white; padding:10px; width:100%; height:100%; max-width:200px; max-height:50px; border:1px solid #000;float:left;'> "+arr[i].msg+" At: "+arr[i].date+"</div><br>";
        }        
}
}
document.getElementById("data").innerHTML=past;
window.scrollTo(0, document.body.scrollHeight || document.documentElement.scrollHeight);
}
setInterval(function(){
xmlhttp.open("GET", url, true);
xmlhttp.send();
}, 1000);
 <%
        System.out.println("showC called");
        %>
        </script>
       
        <p id="data"></p>
    </body>
</html>