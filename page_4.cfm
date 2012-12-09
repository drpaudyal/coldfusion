
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

                   function f_Q010_goto_Q11a() {
                      f_Q010_def(); 

                   }

                   function f_Q010_goto_Q012() {
                      f_Q010_def(); 

                      obj = document.getElementById("Q11a");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                      obj = document.getElementById("Q11b");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                      obj = document.getElementById("Q11c");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q010_def() { 

                     obj = document.getElementById("Q11a");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                     obj = document.getElementById("Q11b");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                     obj = document.getElementById("Q11c");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }

                   function f_Q11a_goto_Q11b() {
                      f_Q11a_def(); 

                   }

                   function f_Q11a_def() { 

                   }

                   function f_Q11b_goto_Q11c() {
                      f_Q11b_def(); 

                   }

                   function f_Q11b_goto_Q012() {
                      f_Q11b_def(); 

                      obj = document.getElementById("Q11c");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q11b_def() { 

                     obj = document.getElementById("Q11c");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }



window.onload = function()
{
   
                    
                   obj = document.getElementById("Q010.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q010_goto_Q11a);
                     if ( obj.checked ) {
                       f_Q010_goto_Q11a();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q010.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q010_goto_Q012);
                     if ( obj.checked ) {
                       f_Q010_goto_Q012();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q010.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q010_goto_Q012);
                     if ( obj.checked ) {
                       f_Q010_goto_Q012();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q11a.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q11a_goto_Q11b);
                     if ( obj.checked ) {
                       f_Q11a_goto_Q11b();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q11a.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q11a_goto_Q11b);
                     if ( obj.checked ) {
                       f_Q11a_goto_Q11b();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q11a.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q11a_goto_Q11b);
                     if ( obj.checked ) {
                       f_Q11a_goto_Q11b();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q11b.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q11b_goto_Q11c);
                     if ( obj.checked ) {
                       f_Q11b_goto_Q11c();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q11b.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q11b_goto_Q012);
                     if ( obj.checked ) {
                       f_Q11b_goto_Q012();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q11b.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q11b_goto_Q012);
                     if ( obj.checked ) {
                       f_Q11b_goto_Q012();
                     }
                   }
                   
                      
}

// -->
</script>
</head>

<CFQUERY DATASOURCE="osr_atiic2" NAME="anstable">
  SELECT * FROM result_page_4 WHERE cid like '#client.cid#'
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
  UPDATE result SET lastnode='4' WHERE cid like '#client.cid#'
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

  <cfif #i# eq 4>
     <td class="page_index_current">
     #i# 
     &nbsp;
     </td>
  <cfelseif #i# lte 4>
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

<CFFORM ACTION='dbint_page_4.cfm' METHOD='POST' OnSubmit='return onSubmitVerification()'>
<INPUT TYPE="hidden" NAME="cid" VALUE="#client.cid#">

<div class=subtitlemarg>
SECTION D.  MONITORING STATUS OF RENTAL EQUIPMENT
</div></div>
<div id="Q010">
<div class=instr><span class="qnum">Q010. </span>Does the hospital rent equipment from time to time?  </div>
<div class="radio" ><cfif #anstable.Q010# eq "1"><cfinput id="Q010.1"  type="radio" class="radioOrCheckBox" name="Q010" value="1"  checked><cfelse><cfinput id="Q010.1"  type="radio" class="radioOrCheckBox" name="Q010" value="1" ></cfif><label for="Q010.1">YES </label></div>
<div class="radio" ><cfif #anstable.Q010# eq "2"><cfinput id="Q010.2"  type="radio" class="radioOrCheckBox" name="Q010" value="2"  checked><cfelse><cfinput id="Q010.2"  type="radio" class="radioOrCheckBox" name="Q010" value="2" ></cfif><label for="Q010.2">NO </label></div>
<div class="radio" ><cfif #anstable.Q010# eq "9"><cfinput id="Q010.9"  type="radio" class="radioOrCheckBox" name="Q010" value="9"  checked><cfelse><cfinput id="Q010.9"  type="radio" class="radioOrCheckBox" name="Q010" value="9" ></cfif><label for="Q010.9">NO ANSWER/ REFUSED </label></div>
</div>
<div id="Q11a">
<div class=instr><span class="qnum">Q11a. </span>Does the hospital have any issues with locating rental equipment?</div>
<div class="radio" ><cfif #anstable.Q11a# eq "1"><cfinput id="Q11a.1"  type="radio" class="radioOrCheckBox" name="Q11a" value="1"  checked><cfelse><cfinput id="Q11a.1"  type="radio" class="radioOrCheckBox" name="Q11a" value="1" ></cfif><label for="Q11a.1">YES </label></div>
<div class="radio" ><cfif #anstable.Q11a# eq "2"><cfinput id="Q11a.2"  type="radio" class="radioOrCheckBox" name="Q11a" value="2"  checked><cfelse><cfinput id="Q11a.2"  type="radio" class="radioOrCheckBox" name="Q11a" value="2" ></cfif><label for="Q11a.2">NO </label></div>
<div class="radio" ><cfif #anstable.Q11a# eq "9"><cfinput id="Q11a.9"  type="radio" class="radioOrCheckBox" name="Q11a" value="9"  checked><cfelse><cfinput id="Q11a.9"  type="radio" class="radioOrCheckBox" name="Q11a" value="9" ></cfif><label for="Q11a.9">NO ANSWER/ REFUSED </label></div>
</div>
<div id="Q11b">
<div class=instr><span class="qnum">Q11b. </span>Has the hospital had instances of overpayment of rental fees due to equipment not being returned on a timely manner?</div>
<div class="radio" ><cfif #anstable.Q11b# eq "1"><cfinput id="Q11b.1"  type="radio" class="radioOrCheckBox" name="Q11b" value="1"  checked><cfelse><cfinput id="Q11b.1"  type="radio" class="radioOrCheckBox" name="Q11b" value="1" ></cfif><label for="Q11b.1">YES </label></div>
<div class="radio" ><cfif #anstable.Q11b# eq "2"><cfinput id="Q11b.2"  type="radio" class="radioOrCheckBox" name="Q11b" value="2"  checked><cfelse><cfinput id="Q11b.2"  type="radio" class="radioOrCheckBox" name="Q11b" value="2" ></cfif><label for="Q11b.2">NO </label></div>
<div class="radio" ><cfif #anstable.Q11b# eq "9"><cfinput id="Q11b.9"  type="radio" class="radioOrCheckBox" name="Q11b" value="9"  checked><cfelse><cfinput id="Q11b.9"  type="radio" class="radioOrCheckBox" name="Q11b" value="9" ></cfif><label for="Q11b.9">NO ANSWER/ REFUSED </label></div>
</div>
<div id="Q11c">
<div class=instr><span class="qnum">Q11c. </span>Approximately, what is the yearly cost due to overpayment of equipment rental fees? ENTER DOLLAR AMOUNT $: <cfset val=#anstable.Q11cu#><cfinput type=text name=Q11cu onKeyPress="return disableEnterKey(event)" value="#val#">  </div>
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
