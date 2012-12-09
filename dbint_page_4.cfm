
<CFQUERY DATASOURCE="osr_atiic2" NAME="ques">
  SELECT cid FROM result_page_4 WHERE cid like '#client.cid#'
</CFQUERY>

<cfif #ques.RecordCount# IS 0>
  <CFQUERY DATASOURCE="osr_atiic2">
    INSERT INTO result_page_4 (cid) VALUES ('#client.cid#')
  </CFQUERY>
</CFIF>

<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_4 SET lastaccessed=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

            <CFIF Isdefined("form.Q010")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_4 SET Q010='#form.Q010#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_4 SET Q010=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q11a")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_4 SET Q11a='#form.Q11a#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_4 SET Q11a=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q11b")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_4 SET Q11b='#form.Q11b#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_4 SET Q11b=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q11cu")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_4 SET Q11cu='#form.Q11cu#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_4 SET Q11cu=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
<!--- Store the submitdate in the database --->
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_4 SET submitdate=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

<!--- Store the last node in the database --->
<!--- only update last node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result SET lastnode='5' WHERE cid like '#client.cid#'
</CFQUERY>
</cfif>

<!--- To decide if the lastNode is greater than the farthest node --->
<CFQUERY DATASOURCE="osr_atiic2" NAME="howfar">
  SELECT farthestnode FROM result WHERE cid = '#client.cid#'
</CFQUERY>

<!--- only update farthest node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<cfif #howfar.farthestnode[1]# eq "" or #howfar.farthestnode[1]# lt 5 >
  <CFQUERY DATASOURCE="osr_atiic2">
    UPDATE result SET farthestnode='5' WHERE cid = '#client.cid#'
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
    <CFLOCATION url="page_5.cfm">
  </cfif>
</cfif>
