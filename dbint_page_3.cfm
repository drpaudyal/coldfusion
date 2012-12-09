
<CFQUERY DATASOURCE="osr_atiic2" NAME="ques">
  SELECT cid FROM result_page_3 WHERE cid like '#client.cid#'
</CFQUERY>

<cfif #ques.RecordCount# IS 0>
  <CFQUERY DATASOURCE="osr_atiic2">
    INSERT INTO result_page_3 (cid) VALUES ('#client.cid#')
  </CFQUERY>
</CFIF>

<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_3 SET lastaccessed=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

            <CFIF Isdefined("form.Q006")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q006='#form.Q006#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q006=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q007u")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q007u='#form.Q007u#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q007u=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q008")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q008='#form.Q008#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q008=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q09a")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q09a='#form.Q09a#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q09a=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q09bu")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q09bu='#form.Q09bu#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_3 SET Q09bu=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
<!--- Store the submitdate in the database --->
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_3 SET submitdate=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

<!--- Store the last node in the database --->
<!--- only update last node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result SET lastnode='4' WHERE cid like '#client.cid#'
</CFQUERY>
</cfif>

<!--- To decide if the lastNode is greater than the farthest node --->
<CFQUERY DATASOURCE="osr_atiic2" NAME="howfar">
  SELECT farthestnode FROM result WHERE cid = '#client.cid#'
</CFQUERY>

<!--- only update farthest node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<cfif #howfar.farthestnode[1]# eq "" or #howfar.farthestnode[1]# lt 4 >
  <CFQUERY DATASOURCE="osr_atiic2">
    UPDATE result SET farthestnode='4' WHERE cid = '#client.cid#'
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
    <CFLOCATION url="page_4.cfm">
  </cfif>
</cfif>
