
<html>
<head>
<title>

Real Time Location Services Survey


</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">@import "page.css";</style>
<script type="text/javascript" src="page.js"></script>
</head>

<body>
<div class=title>
<br />Real Time Location Services Survey<br /><br />
</div>

<CFOUTPUT>
<!--- Bring to login page when users are not accessing the page properly
--->
<CFIF NOT Isdefined("client.cid") and NOT Isdefined("form.cid")>
  <CFLOCATION url="login.cfm">

<CFELSE>

<!--- Store the last node in the database --->
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result SET lastnode='7' WHERE cid like '#client.cid#'
</CFQUERY>

<div class=instr>
<br />
  Thank you again for your time and participation. 
</div>

</CFIF>
</CFOUTPUT>

<div class="navibottom">
<center>
<input type=button value="CLOSE WINDOW" onclick="javascript:window.close()">
</center>
</div>

</body>
</html>
