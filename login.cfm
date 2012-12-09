

<html>
<head>
<title>

Killeen ISD

</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">@import "page.css";</style>
<script type="text/javascript" src="page.js"></script>
</head>

<body>
<div class=title>
Killeen ISD<br>
</div>
<div class=login>
    <u><strong>Instructions</strong></u>:
    Please enter your login ID to start the survey. 
    When you have responded to all the questions on a page, 
    click 'Next' button to continue. 

    At any time, you can click 'Save & Exit' button to exit
    the survey. You will be brought back to the last page
    you visited the next time you login.
    
    You will be prompted when the survey is complete.
</div>    
    <cfform action="dbint_login.cfm" method="post">
<div class=login>
    <b>Login ID</b>
    <CFINPUT type="text" size="16" maxlength="16" name="cid" required="Yes" message="Please enter the login ID provided to you">
</div>
    <span class="navibottomlogin">
<span class=login>
    <input name="submit" type="submit" value="Submit">
</span>
    </span>
    </cfform>
</body>
</html>
