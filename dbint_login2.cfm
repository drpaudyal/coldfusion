<cfparam name="URL.cid" default="0">
<cfset cid=#URL.cid#>
<cfif #Len(cid)# gt 10>
You are not using this page correctly.

<cfelse>

<cfoutput>
<cfset client.cid = "#cid#">
</cfoutput>

<cfinclude template="template_isvalid.cfm">


</cfif>

