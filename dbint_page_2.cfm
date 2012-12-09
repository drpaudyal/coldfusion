
<CFQUERY DATASOURCE="osr_atiic2" NAME="ques">
  SELECT cid FROM result_page_2 WHERE cid like '#client.cid#'
</CFQUERY>

<cfif #ques.RecordCount# IS 0>
  <CFQUERY DATASOURCE="osr_atiic2">
    INSERT INTO result_page_2 (cid) VALUES ('#client.cid#')
  </CFQUERY>
</CFIF>

<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_2 SET lastaccessed=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

            <CFIF Isdefined("form.Q005")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q005='#form.Q005#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q005=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q05au")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05au='#form.Q05au#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05au=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q05b")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05b='#form.Q05b#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05b=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q05c")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05c='#form.Q05c#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05c=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q05d")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05d='#form.Q05d#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05d=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q05e")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05e='#form.Q05e#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05e=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q05f")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05f='#form.Q05f#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_2 SET Q05f=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
<!--- Store the submitdate in the database --->
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_2 SET submitdate=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

<!--- Store the last node in the database --->
<!--- only update last node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result SET lastnode='3' WHERE cid like '#client.cid#'
</CFQUERY>
</cfif>

<!--- To decide if the lastNode is greater than the farthest node --->
<CFQUERY DATASOURCE="osr_atiic2" NAME="howfar">
  SELECT farthestnode FROM result WHERE cid = '#client.cid#'
</CFQUERY>

<!--- only update farthest node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<cfif #howfar.farthestnode[1]# eq "" or #howfar.farthestnode[1]# lt 3 >
  <CFQUERY DATASOURCE="osr_atiic2">
    UPDATE result SET farthestnode='3' WHERE cid = '#client.cid#'
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
    <CFLOCATION url="page_3.cfm">
  </cfif>
</cfif>
