<!--- check if it is a valid login --->
<cfquery DATASOURCE="osr_atiic2" NAME="isvalid">
  SELECT * FROM login WHERE cid='#cid#'
</cfquery>

<cfif #isvalid.RecordCount# IS 0>


<html>
<head>
<title>

Austin Technology Incubator project

</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">@import "page.css";</style>
<script type="text/javascript" src="page.js"></script>
</head>
<body>
<div class=title>
<br />Austin Technology Incubator project<br />
</div>

<br />
<div class=login>

  <strong>We are sorry</strong>. <br />The EID you entered cannot be found in the database.<br />
  Please go back to the <a href="login.cfm">start page</a> and login with correct loginID.
  
  Thank You!
</div>
</body>

<cfelse>
<!--- --->
<cfquery DATASOURCE="osr_atiic2" NAME="results">
  SELECT * FROM result WHERE cid='#cid#'
</cfquery>

<cfif #results.RecordCount# IS 0>
  <cfquery DATASOURCE="osr_atiic2">
    INSERT INTO result(cid, lastnode) VALUES ('#cid#', 1)
  </cfquery>
  
  <cfset link="page_1.cfm">

<cfelse>
  <cfquery DATASOURCE="osr_atiic2" NAME="lastnodequery">
    SELECT lastnode FROM result WHERE cid='#cid#'
  </cfquery>
  <cfoutput query=lastnodequery>
    <cfset link="page_" & toString(lastnode) & ".cfm">
  </cfoutput>

</cfif>

<cfquery DATASOURCE="osr_atiic2">
  UPDATE result SET lastlogin=getdate() WHERE cid='#cid#'
</cfquery>


<cflocation url = #link#>

<cfdump var="#results#">
<cfoutput>
#link#
</cfoutput>
<!--- --->
</cfif>
<!--- --->
