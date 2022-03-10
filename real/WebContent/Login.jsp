<HTML>

<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<head>
<SCRIPT LANGUAGE="JavaScript">
<!--
history.go(+1);

//-->
</SCRIPT>
	<LINK href="styles.css" type="text/css" rel="stylesheet">

</head>
<BODY CLASS=SC onload="document.LOGIN.uid.focus();">
<FONT FACE="Brush Script MT" size=6 color="#5F9EA0"></FONT>
<center>
<BR><BR>
<FONT FACE="Montserrat">


<!--Declaration of varaibles-->

<%! String errormsg ;%>
<%! String disluserid ;%>
<%! String dislpwd ;%>

    

<% 
   /*Retreiving user id and password*/

    disluserid = request.getParameter("uid");
    if(disluserid == null)
    disluserid = "";
    dislpwd = request.getParameter("pwd");
    if(dislpwd == null)
    dislpwd = "";

%>

<!--Retrieve the error from request and display on screen-->

<%  errormsg = request.getParameter("error") ;
    //System.out.println("errormsg = "+errormsg);
    if (errormsg == null)
    {
        //System.out.println("Error messages was null so clearing it..");
        errormsg = " ";
    }
    if(errormsg.equals("blankfields"))
    {
      %>
       <FONT COLOR="Red">
       Both the fields are Mandatory.Please fill up both fields.<BR><BR>
      <%
    }  
    if(errormsg.equals("invalid"))
    {
      %>
        <FONT COLOR="Red">
        Invalid Username and/or Password. Please re-enter. <BR><BR>
        <%
    } 
%>

<%-- ***** LOGIN SCREEN ***** --%>


<FORM NAME="LOGIN" ACTION="Validate.jsp" METHOD="post" >


<tr>
<td align="center"> 
<FONT COLOR="#200000" size=10>
<b>Login to Your Account</b></FONT>
&nbsp;&nbsp;&nbsp;&nbsp;
<table align="center" border=5 width=200 height=100>
<tr>
<td> <FONT COLOR="#483D8B" size=3><b>User Name</b></FONT>  </td>
<td><input TYPE=text id = "usr" name=uid size="8" maxlength="8"> </td></tr>
<tr><td><FONT COLOR="#483D8B" size=3><b>Passcode</b></FONT></td><td> <input TYPE=password name=pwd size="8"  maxlength="8"></td></tr>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</table>
<BR>
<tr>
<td align="center"><INPUT TYPE=submit name=submit value="Log-in"></td>
<td align="center"><INPUT TYPE=reset name=resett value="Clear" ></td>
</tr> 

</td></tr>
</table>
<br><br><br>

</BODY>
</HTML>