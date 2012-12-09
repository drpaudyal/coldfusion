
<CFQUERY DATASOURCE="osr_atiic2" NAME="ques">
  SELECT cid FROM result_page_5 WHERE cid like '#client.cid#'
</CFQUERY>

<cfif #ques.RecordCount# IS 0>
  <CFQUERY DATASOURCE="osr_atiic2">
    INSERT INTO result_page_5 (cid) VALUES ('#client.cid#')
  </CFQUERY>
</CFIF>

<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_5 SET lastaccessed=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

            <CFIF Isdefined("form.Q012")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q012='#form.Q012#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q012=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q013")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q013='#form.Q013#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q013=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q014")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q014='#form.Q014#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q014=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q015")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q015='#form.Q015#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q015=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q16a")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q16a='#form.Q16a#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q16a=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q16b")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q16b='#form.Q16b#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q16b=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q017")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q017='#form.Q017#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q017=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q180")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q180='#form.Q180#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q180=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q181")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q181='#form.Q181#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q181=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q182")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q182='#form.Q182#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q182=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q183")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q183='#form.Q183#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q183=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q184")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q184='#form.Q184#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q184=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
            <CFIF Isdefined("form.Q185")>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q185='#form.Q185#' WHERE cid='#client.cid#'
              </CFQUERY>
                   
            <CFELSE>
              <CFQUERY DATASOURCE="osr_atiic2">
              UPDATE result_page_5 SET Q185=NULL WHERE cid='#client.cid#'
              </CFQUERY>
               
            </CFIF>
                   
<!--- Store the submitdate in the database --->
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result_page_5 SET submitdate=getdate() WHERE cid like '#client.cid#'
</CFQUERY>

<!--- Store the last node in the database --->
<!--- only update last node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result SET lastnode='6' WHERE cid like '#client.cid#'
</CFQUERY>
</cfif>

<!--- To decide if the lastNode is greater than the farthest node --->
<CFQUERY DATASOURCE="osr_atiic2" NAME="howfar">
  SELECT farthestnode FROM result WHERE cid = '#client.cid#'
</CFQUERY>

<!--- only update farthest node if users do not press save and exit --->
<cfif #form.toexit# neq "yes">
<cfif #howfar.farthestnode[1]# eq "" or #howfar.farthestnode[1]# lt 6 >
  <CFQUERY DATASOURCE="osr_atiic2">
    UPDATE result SET farthestnode='6' WHERE cid = '#client.cid#'
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
    <CFLOCATION url="page_6.cfm">
  </cfif>
</cfif>
