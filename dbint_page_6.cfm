
<CFQUERY DATASOURCE="osr_atiic2" NAME="ques">
  SELECT cid FROM result_page_6 WHERE cid like '#client.cid#'
</CFQUERY>

<cfif #ques.RecordCount# IS 0>
  <CFQUERY DATASOURCE="osr_atiic2">
    INSERT INTO result_page_6 (cid) VALUES ('#client.cid#')
  </CFQUERY>
</CFIF>

<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_6 SET lastaccessed=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

            <CFIF Isdefined("form.Q18a")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_6 SET Q18a='#form.Q18a#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_6 SET Q18a=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q18bu")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_6 SET Q18bu='#form.Q18bu#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_6 SET Q18bu=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q18cu")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_6 SET Q18cu='#form.Q18cu#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_6 SET Q18cu=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
<!--- Store the submitdate in the database --->
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_6 SET submitdate=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

<!--- Store the last node in the database --->
<!--- only update last node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result SET lastnode='7' WHERE cid like '#client.cid#'
</CFQUERY>
</cfif>

<!--- To decide if the lastNode is greater than the farthest node --->
<CFQUERY DATASOURCE="osr_atiic2" NAME="howfar">
  SELECT farthestnode FROM result WHERE cid = '#client.cid#'
</CFQUERY>

<!--- only update farthest node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<cfif #howfar.farthestnode[1]# eq "" or #howfar.farthestnode[1]# lt 7 >
  <CFQUERY DATASOURCE="osr_atiic2">
    UPDATE result SET farthestnode='7' WHERE cid = '#client.cid#'
  </CFQUERY>
</cfif>
</cfif>

<cfif #form.toexit# eq "yes">
<cflocation url="save_exit_page.cfm">
<cfelse>
  <!--- check if there is an endurl defined due to a skip pattern --->
  <cfif Isdefined("endurl")>
    <cflocation url="#endurl#">
  <cfelse>
    <CFLOCATION url="page_7.cfm">
  </cfif>
</cfif>
