<cfif Isdefined("URL.cid")>
    <cfset client.cid = URL.cid>
    <cfinclude template="template_isvalid.cfm">
<cfelse>

<html>
<head>
<title>

Real Time Location Services (RTLS)

</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">@import "page.css";</style>
<script type="text/javascript" src="page.js"></script>
<script type="text/javascript">
</script>
</head>


<body>
<div class=title>
Real Time Location Services (RTLS)
<br><br><br>
</div>

<p>
Thank you for your interest! Click on login button to participate in the Killeen ISD survey.
</p>

<cfform action="login.cfm" method="post">
<div class="navibottom"> 
<input type="button" value="Click here to Login" onclick="javascript:location.href='login.cfm'" > 
</div> 
</cfform>

</body>
</html>

</cfif>