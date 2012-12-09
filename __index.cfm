<cfif Isdefined("URL.cid")>
    <cfset client.cid = URL.cid>
<html>
<cfparam name="URL.cid" default="0">
<cfset cid=#URL.cid#>

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
<br />Real Time Location Services Survey<br />
</div>
<br />
<div class=login>
    <u><strong>Instructions</strong></u>:<br />
As soon as you finish responding the questions on a page, <br />
please click the 'Next' button to continue. <br />
<br />
At any time, you can click 'Save responses, return later to continue' <br />
button to exit the survey.  You will be brought back to the last page <br />
you visited the next time you login.<br />
<br />
If you have any questions or concerns about the survey, please    <br />
feel free to contact the Manager of the Office of Survey Research,<br /> 
Mr. O'Neil Provost at <a href="mailto:provost@mail.utexas.edu">provost@mail.utexas.edu</a>

<br /><br />
<cfoutput>
<input type="button" value="Click here to continue" onclick="newWindow('dbint_login2.cfm?cid=#cid#',800,1024)" >
</cfoutput>

</div>
</body>
</html>
<cfinclude template="template_isvalid.cfm">
<cfelse>

<html>
<head>
<title>

Killeen ISD

</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">@import "page.css";</style>
<script type="text/javascript" src="page.js"></script>
<script type="text/javascript">
</script>
</head>


<body>
<div class=title>
Killeen ISD
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