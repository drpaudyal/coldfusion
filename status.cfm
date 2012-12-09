<CFSET tablename='result'>

<CFQUERY DATASOURCE="osr_atiic2" NAME="stats">
SELECT * FROM #tablename#_stats WHERE attrname='lastpage'
</CFQUERY>

<CFQUERY DATASOURCE="osr_atiic2" NAME="results">
SELECT * FROM #tablename# WHERE lastnode='#stats.attrval#' and cid not like 'TEST%'
</CFQUERY>

<CFQUERY DATASOURCE="osr_atiic2" NAME="total">
SELECT cid,lastlogin,lastnode FROM #tablename# WHERE cid not like 'TEST%' ORDER BY lastnode,lastlogin
</CFQUERY>

<CFSET incomplete = #total.RecordCount# - #results.RecordCount#>

<CFOUTPUT>
<html>
<head>
<title>
Real Time Location Services Survey
</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">@import "page.css";</style>
<script type="text/javascript" src="page.js"></script>
<script type="text/javascript">
</script>
</head>

<body>
<div class=title>
<br>Real Time Location Services Survey<br><br><br>
<cfdump expand = "Yes" var=#total# label = "Current Status">

</div>



<table cellspacing=10 hspace=10 vspace=10>
<tr>
<td> completed </td>
<td align=right> #results.RecordCount# </td>
</tr>
<tr>
<td> not-yet-completed </td>
<td align=right> #incomplete# </td>
</tr>
<tr>
<td colspan=2> <hr width=300> </td>
</tr>
<tr>
<td> accesses </td>
<td align=right> #total.RecordCount# </td>
</tr>
</table>

</CFOUTPUT>

</body>
</html>
