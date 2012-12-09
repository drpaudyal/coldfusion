
<html>
<head>
<title>

Real Time Location Services Survey


</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">@import "page.css";</style>
<script type="text/javascript" src="page.js"></script>
<script type="text/javascript">
<!--

                   function f_Q18a_goto_Q18b() {
                      f_Q18a_def(); 

                   }

                   function f_Q18a_goto_arb() {
                      f_Q18a_def(); 

                      obj = document.getElementById("Q18b");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                      obj = document.getElementById("Q18c");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q18a_def() { 

                     obj = document.getElementById("Q18b");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                     obj = document.getElementById("Q18c");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }



window.onload = function()
{
   
                    
                   obj = document.getElementById("Q18a.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q18a_goto_Q18b);
                     if ( obj.checked ) {
                       f_Q18a_goto_Q18b();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q18a.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q18a_goto_arb);
                     if ( obj.checked ) {
                       f_Q18a_goto_arb();
                     }
                   }
                   
                      
}

// -->
</script>
</head>

<CFQUERY DATASOURCE="osr_atiic2" NAME="anstable">
  SELECT * FROM result_page_6 WHERE cid like '#client.cid#'
</CFQUERY>

<body>
<div class=title>
<br />Real Time Location Services Survey<br /><br />
</div>

<CFOUTPUT>
<!--- Bring to login page when users are not accessing the page properly
--->
<CFIF NOT Isdefined("client.cid") and NOT Isdefined("form.cid")>
  <CFLOCATION url="login.cfm">

<CFELSE>

<!--- Store the last node in the database --->
<CFQUERY DATASOURCE="osr_atiic2">
  UPDATE result SET lastnode='6' WHERE cid like '#client.cid#'
</CFQUERY>

<CFQUERY DATASOURCE="osr_atiic2" NAME="howfar">
  SELECT * FROM result WHERE cid = '#client.cid#'
</CFQUERY>

<CFQUERY DATASOURCE="osr_atiic2" NAME=stats>
  SELECT * FROM result_stats WHERE attrname='lastpage'
</CFQUERY>
<cfset thelastpage = (#stats.attrval[1]# - 1)>

<div class="jumpto">
<table>
<tr><td>
Progress: &nbsp;
<cfloop index=i from=1 to=#thelastpage#>

  <cfif #i# eq 6>
     <td class="page_index_current">
     #i# 
     &nbsp;
     </td>
  <cfelseif #i# lte 6>
     <td class="page_index">
     <a href="page_#i#.cfm">#i#</a>&nbsp;
     </td>
  <cfelse>
     <td class="page_index_inactive">
     #i#
     &nbsp;
     </td>
  </cfif>

  <cfif #i# mod 20 is 0>
  <tr><td>&nbsp;
  </cfif>
</cfloop>
</table>
</div>

<CFFORM ACTION='dbint_page_6.cfm' METHOD='POST' OnSubmit='return onSubmitVerification()'>
<INPUT TYPE="hidden" NAME="cid" VALUE="#client.cid#">

<div class=subtitlemarg>
Those are all of our questions. We would like to thank you for your participation in this study.  All your answers will be kept confidential and results of this study will only be reported in aggregate form. If you are interested to learn more about any of the issues discussed in the study, you are welcome to provide us your name and e-mail address and we will contact you at a later date.  
</div></div>
<div id="Q18a">
<div class=instr><span class="qnum">Q18a. </span>Would you like for us to follow-up with you? </div>
<div class="radio" ><cfif #anstable.Q18a# eq "1"><cfinput id="Q18a.1"  type="radio" class="radioOrCheckBox" name="Q18a" value="1"  checked><cfelse><cfinput id="Q18a.1"  type="radio" class="radioOrCheckBox" name="Q18a" value="1" ></cfif><label for="Q18a.1">YES </label></div>
<div class="radio" ><cfif #anstable.Q18a# eq "2"><cfinput id="Q18a.2"  type="radio" class="radioOrCheckBox" name="Q18a" value="2"  checked><cfelse><cfinput id="Q18a.2"  type="radio" class="radioOrCheckBox" name="Q18a" value="2" ></cfif><label for="Q18a.2">NO  </label></div>
</div>
<div id="Q18b">
<div class=instr><span class="qnum">Q18b. </span>Please provide your name: <cfset val=#anstable.Q18bu#><cfinput type=text name=Q18bu value="#val#"></div>
</div>
<div id="Q18c">
<div class=instr><span class="qnum">Q18c. </span>Please provide your e-mail address: <cfset val=#anstable.Q18cu#><cfinput type=text name=Q18cu value="#val#"></div>
</div>

<div class="navibottom">
<input id="toexit" type="hidden" name="toexit" value="no">

<INPUT TYPE="submit" VALUE="Next" onclick="fillToExitField(false)">
&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="submit" VALUE="Save responses, return later to continue" onclick="fillToExitField(true)"> 
</div>
</CFFORM>

</CFIF>
</CFOUTPUT>
</body>
</html>
