
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

function disableEnterKey(e)
{
     var key;
     if(window.event)
          key = window.event.keyCode;     //IE
     else
          key = e.which;     //firefox
     if(key == 13)
          return false;
     else
          return true;
}

                   function f_Q006_goto_Q007() {
                      f_Q006_def(); 

                   }

                   function f_Q006_goto_Q008() {
                      f_Q006_def(); 

                      obj = document.getElementById("Q007");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q006_def() { 

                     obj = document.getElementById("Q007");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }

                   function f_Q008_goto_Q010() {
                      f_Q008_def(); 

                      obj = document.getElementById("Q09a");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                      obj = document.getElementById("Q09b");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q008_def() { 

                     obj = document.getElementById("Q09a");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                     obj = document.getElementById("Q09b");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }

                   function f_Q09a_goto_Q010() {
                      f_Q09a_def(); 

                      obj = document.getElementById("Q09b");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q09a_def() { 

                     obj = document.getElementById("Q09b");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }



window.onload = function()
{
   
                    
                   obj = document.getElementById("Q006.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q006_goto_Q007);
                     if ( obj.checked ) {
                       f_Q006_goto_Q007();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q006.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q006_goto_Q008);
                     if ( obj.checked ) {
                       f_Q006_goto_Q008();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q006.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q006_goto_Q008);
                     if ( obj.checked ) {
                       f_Q006_goto_Q008();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q008.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q008_goto_Q010);
                     if ( obj.checked ) {
                       f_Q008_goto_Q010();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q008.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q008_def);
                     if ( obj.checked ) {
                       f_Q008_def();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q008.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q008_def);
                     if ( obj.checked ) {
                       f_Q008_def();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q09a.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q09a_def);
                     if ( obj.checked ) {
                       f_Q09a_def();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q09a.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q09a_goto_Q010);
                     if ( obj.checked ) {
                       f_Q09a_goto_Q010();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q09a.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q09a_goto_Q010);
                     if ( obj.checked ) {
                       f_Q09a_goto_Q010();
                     }
                   }
                   
                      
}

// -->
</script>
</head>

<CFQUERY DATASOURCE="osr_atiic2" NAME="anstable">
  SELECT * FROM result_page_3 WHERE cid like '#client.cid#'
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
  UPDATE result SET lastnode='3' WHERE cid like '#client.cid#'
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

  <cfif #i# eq 3>
     <td class="page_index_current">
     #i# 
     &nbsp;
     </td>
  <cfelseif #i# lte 3>
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

<CFFORM ACTION='dbint_page_3.cfm' METHOD='POST' OnSubmit='return onSubmitVerification()'>
<INPUT TYPE="hidden" NAME="cid" VALUE="#client.cid#">

<div class=subtitlemarg>
SECTION C.  TRACKING ASSESTS TO PREVENT LOSS-OUTSIDE HOSPITAL AREA
</div></div>
<div id="Q006">
<div class=instr><span class="qnum">Q006. </span>Does the hospital have a problem with asset shrinkage?  </div>
<div class="radio" ><cfif #anstable.Q006# eq "1"><cfinput id="Q006.1"  type="radio" class="radioOrCheckBox" name="Q006" value="1"  checked><cfelse><cfinput id="Q006.1"  type="radio" class="radioOrCheckBox" name="Q006" value="1" ></cfif><label for="Q006.1">YES </label></div>
<div class="radio" ><cfif #anstable.Q006# eq "2"><cfinput id="Q006.2"  type="radio" class="radioOrCheckBox" name="Q006" value="2"  checked><cfelse><cfinput id="Q006.2"  type="radio" class="radioOrCheckBox" name="Q006" value="2" ></cfif><label for="Q006.2">NO </label></div>
<div class="radio" ><cfif #anstable.Q006# eq "9"><cfinput id="Q006.9"  type="radio" class="radioOrCheckBox" name="Q006" value="9"  checked><cfelse><cfinput id="Q006.9"  type="radio" class="radioOrCheckBox" name="Q006" value="9" ></cfif><label for="Q006.9">NO ANSWER/REFUSED </label></div>
</div>
<div id="Q007">
<div class=instr><span class="qnum">Q007. </span>What is your estimate of the cost of the assets missing yearly? ENTER DOLLAR AMOUNT $: <cfset val=#anstable.Q007u#><cfinput type=text name=Q007u onKeyPress="return disableEnterKey(event)" value="#val#"></div>
</div>
<div id="Q008">
<div class=instr><span class="qnum">Q008. </span>Do you have a Real Time Location Service (RTLS) system in place?  </div>
<div class="radio" ><cfif #anstable.Q008# eq "1"><cfinput id="Q008.1"  type="radio" class="radioOrCheckBox" name="Q008" value="1"  checked><cfelse><cfinput id="Q008.1"  type="radio" class="radioOrCheckBox" name="Q008" value="1" ></cfif><label for="Q008.1">YES  </label></div>
<div class="radio" ><cfif #anstable.Q008# eq "2"><cfinput id="Q008.2"  type="radio" class="radioOrCheckBox" name="Q008" value="2"  checked><cfelse><cfinput id="Q008.2"  type="radio" class="radioOrCheckBox" name="Q008" value="2" ></cfif><label for="Q008.2">NO </label></div>
<div class="radio" ><cfif #anstable.Q008# eq "9"><cfinput id="Q008.9"  type="radio" class="radioOrCheckBox" name="Q008" value="9"  checked><cfelse><cfinput id="Q008.9"  type="radio" class="radioOrCheckBox" name="Q008" value="9" ></cfif><label for="Q008.9">NO ANSWER/REFUSED</label></div>
</div>
<div id="Q09a">
<div class=instr><span class="qnum">Q09a. </span>Do you currently pay people to monitor the exits?  </div>
<div class="radio" ><cfif #anstable.Q09a# eq "1"><cfinput id="Q09a.1"  type="radio" class="radioOrCheckBox" name="Q09a" value="1"  checked><cfelse><cfinput id="Q09a.1"  type="radio" class="radioOrCheckBox" name="Q09a" value="1" ></cfif><label for="Q09a.1">YES</label></div>
<div class="radio" ><cfif #anstable.Q09a# eq "2"><cfinput id="Q09a.2"  type="radio" class="radioOrCheckBox" name="Q09a" value="2"  checked><cfelse><cfinput id="Q09a.2"  type="radio" class="radioOrCheckBox" name="Q09a" value="2" ></cfif><label for="Q09a.2">NO </label></div>
<div class="radio" ><cfif #anstable.Q09a# eq "9"><cfinput id="Q09a.9"  type="radio" class="radioOrCheckBox" name="Q09a" value="9"  checked><cfelse><cfinput id="Q09a.9"  type="radio" class="radioOrCheckBox" name="Q09a" value="9" ></cfif><label for="Q09a.9">NO ANSWER/ REFUSED </label></div>
</div>
<div id="Q09b">
<div class=instr><span class="qnum">Q09b. </span>Approximately, what is the yearly cost of monitoring the exits? ENTER DOLLAR AMOUNT $:<cfset val=#anstable.Q09bu#><cfinput type=text name=Q09bu onKeyPress="return disableEnterKey(event)" value="#val#"></div>
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
