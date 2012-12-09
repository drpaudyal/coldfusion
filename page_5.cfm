
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


                     function f_Q014_def() { 
                   
                     obj = document.getElementById("Q015");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     
                     obj = document.getElementById("Q16a");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     
                     
                     obj = document.getElementById("Q16b");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     

                     obj = document.getElementById("Q017");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     
                     
                     }
                     
                     function f_Q014_goto_Q018() { 
                    
                     f_Q014_def();
                     
                     var q12=0;
                     var q13=0;
                     var q14=0;
                     
                     obj = document.getElementById("Q012.1");
                   if ( obj != null ) {
                       if(obj.checked){
                             q12=1;
                          }
                         }
                     obj = document.getElementById("Q013.1");
                   if ( obj != null ) {
                       if(obj.checked){
                             q13=1;
                          }
                         }
                     obj = document.getElementById("Q014.1");
                   if ( obj != null ) {
                       if(obj.checked){
                             q14=1;
                          }
                         }
                     if(q12==1 || q13==1 || q14==1){
                     obj = document.getElementById("Q015");
                     obj.className = "disabled";
                     disable_all_inputs(obj, true);
                     
                     obj = document.getElementById("Q16a");
                     obj.className = "disabled";
                     disable_all_inputs(obj, true);
                     
                     obj = document.getElementById("Q16b");
                     obj.className = "disabled";
                     disable_all_inputs(obj, true);
                     
                     obj = document.getElementById("Q017");
                     obj.className = "disabled";
                     disable_all_inputs(obj, true);
                     
                     }

                   }

                   function f_Q015_goto_Q017() {
                      f_Q015_def(); 

                      obj = document.getElementById("Q16a");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                      obj = document.getElementById("Q16b");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q015_def() { 

                     obj = document.getElementById("Q16a");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                     obj = document.getElementById("Q16b");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }

                   function f_Q16a_goto_Q017() {
                      f_Q16a_def(); 

                      obj = document.getElementById("Q16b");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q16a_def() { 

                     obj = document.getElementById("Q16b");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }

                   function f_Q16b_goto_Q018() {
                      f_Q16b_def(); 

                      obj = document.getElementById("Q017");
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      //obj.style.visibility = 'hidden'; 

                   }

                   function f_Q16b_def() { 

                     obj = document.getElementById("Q017");
                     obj.className = null;
                     disable_all_inputs(obj, false);
                     //obj.style.visibility = 'visible';  

                   }



window.onload = function()
{

                    
                    obj = document.getElementById("Q012.1");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                   if(obj.checked){
                   //q12=1;
                   f_Q014_goto_Q018();
                   
                   }
                   
                     }
                    
                    
                    obj = document.getElementById("Q012.2");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                    if(obj.checked){
                   //q12=0;
                   f_Q014_goto_Q018();
                     }
                     }
                  
                  obj = document.getElementById("Q012.9");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                    if(obj.checked){
                    //q12=0;
                    f_Q014_goto_Q018();
                     }
                     }
                     
                     
                     obj = document.getElementById("Q013.1");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                   if(obj.checked){
                   //q13=1;
                   f_Q014_goto_Q018();
                   
                   }
                   
                     }
                    
                    
                    obj = document.getElementById("Q013.2");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                    if(obj.checked){
                   //q13=0;
                   f_Q014_goto_Q018();
                   
                     }
                     }
                     
                      obj = document.getElementById("Q013.9");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                    if(obj.checked){
                    //q13=0;
                   f_Q014_goto_Q018();
                     }
                     }
                     
                     obj = document.getElementById("Q014.1");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                   if(obj.checked){
                   //q14=1;
                   f_Q014_goto_Q018();
                   
                   }
                   
                     }
                    
                    
                    obj = document.getElementById("Q014.2");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                    if(obj.checked){
                    //q14=0;
                   f_Q014_goto_Q018();
                     }
                     }
                     
                     obj = document.getElementById("Q014.9");
                   if ( obj != null ) {
                   addListener(obj, "onclick", f_Q014_goto_Q018);
                    if(obj.checked){
                    //q14=0;
                   f_Q014_goto_Q018();
                     }
                     }
                     
                    
                   obj = document.getElementById("Q015.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q015_def);
                     if ( obj.checked ) {
                       f_Q015_def();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q015.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q015_goto_Q017);
                     if ( obj.checked ) {
                       f_Q015_goto_Q017();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q015.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q015_goto_Q017);
                     if ( obj.checked ) {
                       f_Q015_goto_Q017();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q16a.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q16a_goto_Q017);
                     if ( obj.checked ) {
                       f_Q16a_goto_Q017();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q16a.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q16a_def);
                     if ( obj.checked ) {
                       f_Q16a_def();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q16a.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q16a_def);
                     if ( obj.checked ) {
                       f_Q16a_def();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q16b.1");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q16b_goto_Q018);
                     if ( obj.checked ) {
                       f_Q16b_goto_Q018();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q16b.2");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q16b_goto_Q018);
                     if ( obj.checked ) {
                       f_Q16b_goto_Q018();
                     }
                   }
                   
                   

                    
                   obj = document.getElementById("Q16b.9");
                   if ( obj != null ) {
                     addListener(obj, "onclick", f_Q16b_goto_Q018);
                     if ( obj.checked ) {
                       f_Q16b_goto_Q018();
                     }
                   }
                   
                      
}
    function disableoption(id)
    {
    //alert(id);
    obj = document.getElementById(id);
                      obj.className = "disabled";
                      disable_all_inputs(obj, true);
                      obj.style.visibility = 'hidden';
                      obj.disabled=true;
    }
    
    function enableoption(id)
    {
    //alert(id);
    obj = document.getElementById(id);
                      obj.className = null;
                     disable_all_inputs(obj, false);
                     obj.style.visibility = 'visible';
                     obj.disabled=false;
    }
    


var selectedValue=[0,0,0,0,0];


function clearSelection() {
selectedValue=[0,0,0,0,0];
var i=0,j=0;
//alert("bg");
for (i=1;i<=5;i++)
    {
    document.getElementById("Q18s"+i.toString()).value = -1;
    for (j=1;j<=5;j++)
    {
        enableoption("content"+i.toString()+j.toString());
    }
    }
        
}

  function showSelection(theList) {
        var l=theList.name.substring(3);
        var lidx=parseInt(l)-1;
        var sidx=theList.selectedIndex;
        var i=0;
        //alert(lidx);
        //alert(selectedValue[0]);
        /*if (selectedValue[lidx])
        {
        //alert(selectedValue[lidx]);
            for (i=0;i<5;i++)
        {
            enableoption("content"+(i+1).toString()+selectedValue[lidx].toString());
            //alert(i);
            //alert(sidx);
        }
        }*/
        selectedValue[lidx]=theList.selectedIndex;
        //alert(selectedValue[0]);
        
        for (i=0;i<5;i++)
        {
        if(i==lidx) continue;
            disableoption("content"+(i+1).toString()+sidx.toString());
            //alert(i);
            //alert(sidx);
        }
	}

// -->
</script>
</head>

<CFQUERY DATASOURCE="osr_atiic2" NAME="anstable">
  SELECT * FROM result_page_5 WHERE cid like '#client.cid#'
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
  UPDATE result SET lastnode='5' WHERE cid like '#client.cid#'
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

  <cfif #i# eq 5>
     <td class="page_index_current">
     #i# 
     &nbsp;
     </td>
  <cfelseif #i# lte 5>
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

<CFFORM ACTION='dbint_page_5.cfm' METHOD='POST' OnSubmit='return onSubmitVerification()'>
<INPUT TYPE="hidden" NAME="cid" VALUE="#client.cid#">

<div class=subtitlemarg>
SECTION E.  MONITORING OF PATIENTS, MEDICAL AND SUPPORT STAFF
</div></div>
<div id="Q012">
<div class=instr><span class="qnum">Q012. </span>Do you currently monitor the location of patients in the hospital?  </div>
<div class="radio" ><cfif #anstable.Q012# eq "1"><cfinput id="Q012.1"  type="radio" class="radioOrCheckBox" name="Q012" value="1"  checked><cfelse><cfinput id="Q012.1"  type="radio" class="radioOrCheckBox" name="Q012" value="1" ></cfif><label for="Q012.1">YES</label></div>
<div class="radio" ><cfif #anstable.Q012# eq "2"><cfinput id="Q012.2"  type="radio" class="radioOrCheckBox" name="Q012" value="2"  checked><cfelse><cfinput id="Q012.2"  type="radio" class="radioOrCheckBox" name="Q012" value="2" ></cfif><label for="Q012.2">NO</label></div>
<div class="radio" ><cfif #anstable.Q012# eq "9"><cfinput id="Q012.9"  type="radio" class="radioOrCheckBox" name="Q012" value="9"  checked><cfelse><cfinput id="Q012.9"  type="radio" class="radioOrCheckBox" name="Q012" value="9" ></cfif><label for="Q012.9">NO ANSWER/ REFUSED</label></div>
</div>
<div id="Q013">
<div class=instr><span class="qnum">Q013. </span>Do you currently monitor the location of medical staff in the hospital? </div>
<div class="radio" ><cfif #anstable.Q013# eq "1"><cfinput id="Q013.1"  type="radio" class="radioOrCheckBox" name="Q013" value="1"  checked><cfelse><cfinput id="Q013.1"  type="radio" class="radioOrCheckBox" name="Q013" value="1" ></cfif><label for="Q013.1">YES</label></div>
<div class="radio" ><cfif #anstable.Q013# eq "2"><cfinput id="Q013.2"  type="radio" class="radioOrCheckBox" name="Q013" value="2"  checked><cfelse><cfinput id="Q013.2"  type="radio" class="radioOrCheckBox" name="Q013" value="2" ></cfif><label for="Q013.2">NO</label></div>
<div class="radio" ><cfif #anstable.Q013# eq "9"><cfinput id="Q013.9"  type="radio" class="radioOrCheckBox" name="Q013" value="9"  checked><cfelse><cfinput id="Q013.9"  type="radio" class="radioOrCheckBox" name="Q013" value="9" ></cfif><label for="Q013.9">NO ANSWER/ REFUSED</label></div>
</div>
<div id="Q014">
<div class=instr><span class="qnum">Q014. </span>Do you currently monitor the location of support staff in the hospital? </div>
<div class="radio" ><cfif #anstable.Q014# eq "1"><cfinput id="Q014.1"  type="radio" class="radioOrCheckBox" name="Q014" value="1"  checked><cfelse><cfinput id="Q014.1"  type="radio" class="radioOrCheckBox" name="Q014" value="1" ></cfif><label for="Q014.1">YES</label></div>
<div class="radio" ><cfif #anstable.Q014# eq "2"><cfinput id="Q014.2"  type="radio" class="radioOrCheckBox" name="Q014" value="2"  checked><cfelse><cfinput id="Q014.2"  type="radio" class="radioOrCheckBox" name="Q014" value="2" ></cfif><label for="Q014.2">NO</label></div>
<div class="radio" ><cfif #anstable.Q014# eq "9"><cfinput id="Q014.9"  type="radio" class="radioOrCheckBox" name="Q014" value="9"  checked><cfelse><cfinput id="Q014.9"  type="radio" class="radioOrCheckBox" name="Q014" value="9" ></cfif><label for="Q014.9">NO ANSWER/ REFUSED</label></div>
</div>
<div id="Q015">
<div class=instr><span class="qnum">Q015. </span>Does your hospital have plans to implement this type of monitoring in the next 12 months? </div>
<div class="radio" ><cfif #anstable.Q015# eq "1"><cfinput id="Q015.1"  type="radio" class="radioOrCheckBox" name="Q015" value="1"  checked><cfelse><cfinput id="Q015.1"  type="radio" class="radioOrCheckBox" name="Q015" value="1" ></cfif><label for="Q015.1">YES</label></div>
<div class="radio" ><cfif #anstable.Q015# eq "2"><cfinput id="Q015.2"  type="radio" class="radioOrCheckBox" name="Q015" value="2"  checked><cfelse><cfinput id="Q015.2"  type="radio" class="radioOrCheckBox" name="Q015" value="2" ></cfif><label for="Q015.2">NO  </label></div>
<div class="radio" ><cfif #anstable.Q015# eq "9"><cfinput id="Q015.9"  type="radio" class="radioOrCheckBox" name="Q015" value="9"  checked><cfelse><cfinput id="Q015.9"  type="radio" class="radioOrCheckBox" name="Q015" value="9" ></cfif><label for="Q015.9">NO ANSWER/ REFUSED </label></div>
</div>
<div id="Q16a">
<div class=instr><span class="qnum">Q16a. </span>Has your hospital developed a business case for the implementation of this type of monitoring?</div>
<div class="radio" ><cfif #anstable.Q16a# eq "1"><cfinput id="Q16a.1"  type="radio" class="radioOrCheckBox" name="Q16a" value="1"  checked><cfelse><cfinput id="Q16a.1"  type="radio" class="radioOrCheckBox" name="Q16a" value="1" ></cfif><label for="Q16a.1">YES </label></div>
<div class="radio" ><cfif #anstable.Q16a# eq "2"><cfinput id="Q16a.2"  type="radio" class="radioOrCheckBox" name="Q16a" value="2"  checked><cfelse><cfinput id="Q16a.2"  type="radio" class="radioOrCheckBox" name="Q16a" value="2" ></cfif><label for="Q16a.2">NO</label></div>
<div class="radio" ><cfif #anstable.Q16a# eq "9"><cfinput id="Q16a.9"  type="radio" class="radioOrCheckBox" name="Q16a" value="9"  checked><cfelse><cfinput id="Q16a.9"  type="radio" class="radioOrCheckBox" name="Q16a" value="9" ></cfif><label for="Q16a.9">NO ANSWER/ REFUSED</label></div>
</div>
<div id="Q16b">
<div class=instr><span class="qnum">Q16b. </span>Would you like assistance in the development of a business case for implementing this type of monitoring in your hospital?</div>
<div class="radio" ><cfif #anstable.Q16b# eq "1"><cfinput id="Q16b.1"  type="radio" class="radioOrCheckBox" name="Q16b" value="1"  checked><cfelse><cfinput id="Q16b.1"  type="radio" class="radioOrCheckBox" name="Q16b" value="1" ></cfif><label for="Q16b.1">YES </label></div>
<div class="radio" ><cfif #anstable.Q16b# eq "2"><cfinput id="Q16b.2"  type="radio" class="radioOrCheckBox" name="Q16b" value="2"  checked><cfelse><cfinput id="Q16b.2"  type="radio" class="radioOrCheckBox" name="Q16b" value="2" ></cfif><label for="Q16b.2">NO </label></div>
<div class="radio" ><cfif #anstable.Q16b# eq "9"><cfinput id="Q16b.9"  type="radio" class="radioOrCheckBox" name="Q16b" value="9"  checked><cfelse><cfinput id="Q16b.9"  type="radio" class="radioOrCheckBox" name="Q16b" value="9" ></cfif><label for="Q16b.9">NO ANSWER/ REFUSED </label></div>
</div>
<div id="Q017">
<div class=instr><span class="qnum">Q017. </span>Would you be interested to know whether your hospital might benefit from this type of monitoring capability? </div>
<div class="radio" ><cfif #anstable.Q017# eq "1"><cfinput id="Q017.1"  type="radio" class="radioOrCheckBox" name="Q017" value="1"  checked><cfelse><cfinput id="Q017.1"  type="radio" class="radioOrCheckBox" name="Q017" value="1" ></cfif><label for="Q017.1">YES </label></div>
<div class="radio" ><cfif #anstable.Q017# eq "2"><cfinput id="Q017.2"  type="radio" class="radioOrCheckBox" name="Q017" value="2"  checked><cfelse><cfinput id="Q017.2"  type="radio" class="radioOrCheckBox" name="Q017" value="2" ></cfif><label for="Q017.2">NO </label></div>
<div class="radio" ><cfif #anstable.Q017# eq "9"><cfinput id="Q017.9"  type="radio" class="radioOrCheckBox" name="Q017" value="9"  checked><cfelse><cfinput id="Q017.9"  type="radio" class="radioOrCheckBox" name="Q017" value="9" ></cfif><label for="Q017.9">NO ANSWER/ REFUSED </label></div>
</div>
<div id="Q180">
<div class=instr><span class="qnum">Q18. </span>Please rank the following items in order of most important to least important to your hospital. <br>(1 is most important and 5 least important. <b>Please give each item a unique ranking number</b>) </div>
<!--<select class="dropbox" name="Q180"><option value="-1">Please choose</option></select></div>-->
<!--<cfset qq=0>
<cfoutput> #qq# </cfoutput>
<div id="Q181">
<div class=instr><span class="qnum">Q181. </span>Environmental monitoring.</div>
<select class="dropbox" name="Q181" onChange="showSelection(this);"><option value="-1">Please choose</option>
<cfif #anstable.Q181# eq "1" and BitAnd(qq,1) neq 1><option value="1" selected="selected">1 </option><cfset qq=BitMaskSet(qq,1,0,1)><cfelseif #anstable.Q181# neq "1"><option value="1">1 </option><cfset qq=BitMaskClear(qq,0,1)><cfelse><option value="1">taken </option></cfif>
<cfif #anstable.Q181# eq "2" and BitAnd(qq,2) neq 1><option value="2" selected="selected">2 </option><cfset qq=BitMaskSet(qq,1,1,1)><cfelseif #anstable.Q181# neq "2"><option value="1">2 </option><cfset qq=BitMaskClear(qq,1,1)><cfelse><option value="2">taken </option></cfif>
<cfif #anstable.Q181# eq "3" and BitAnd(qq,4) neq 1><option value="3" selected="selected">3 </option><cfset qq=BitMaskSet(qq,1,2,1)><cfelseif #anstable.Q181# neq "3"><option value="1">3 </option><cfset qq=BitMaskClear(qq,2,1)><cfelse><option value="3">taken </option></cfif>
<cfif #anstable.Q181# eq "4" and BitAnd(qq,8) neq 1><option value="4" selected="selected">4 </option><cfset qq=BitMaskSet(qq,1,3,1)><cfelseif #anstable.Q181# neq "4"><option value="1">4 </option><cfset qq=BitMaskClear(qq,3,1)><cfelse><option value="4">taken </option></cfif>
<cfif #anstable.Q181# eq "5" and BitAnd(qq,16) neq 1><option value="5" selected="selected">5 </option><cfset qq=BitMaskSet(qq,1,4,1)><cfelseif #anstable.Q181# neq "5"><option value="1">5 </option><cfset qq=BitMaskClear(qq,4,1)><cfelse><option value="5">taken </option></cfif></select></div>
<cfif #anstable.Q181# eq "1">
<cfoutput> #qq# </cfoutput>
</cfif>
<div id="Q182">
<div class=instr><span class="qnum">Q182. </span>Asset locating.</div>
<select class="dropbox" name="Q182"><option value="-1">Please choose</option>
<cfif #anstable.Q182# eq "1" and BitAnd(qq,1) neq 1><option value="1" selected="selected">1 </option><cfset qq=BitMaskSet(qq,1,0,1)><cfelseif #anstable.Q182# neq "1"><option value="1">1 </option><cfset qq=BitMaskClear(qq,0,1)><cfelse><option value="1">taken </option></cfif>
<cfif #anstable.Q182# eq "2" and BitAnd(qq,2) neq 1><option value="2" selected="selected">2 </option><cfset qq=BitMaskSet(qq,1,1,1)><cfelseif #anstable.Q182# neq "2"><option value="1">2 </option><cfset qq=BitMaskClear(qq,1,1)><cfelse><option value="2">taken </option></cfif>
<cfif #anstable.Q182# eq "3" and BitAnd(qq,4) neq 1><option value="3" selected="selected">3 </option><cfset qq=BitMaskSet(qq,1,2,1)><cfelseif #anstable.Q182# neq "3"><option value="1">3 </option><cfset qq=BitMaskClear(qq,2,1)><cfelse><option value="3">taken </option></cfif>
<cfif #anstable.Q182# eq "4" and BitAnd(qq,8) neq 1><option value="4" selected="selected">4 </option><cfset qq=BitMaskSet(qq,1,3,1)><cfelseif #anstable.Q182# neq "4"><option value="1">4 </option><cfset qq=BitMaskClear(qq,3,1)><cfelse><option value="4">taken </option></cfif>
<cfif #anstable.Q182# eq "5" and BitAnd(qq,16) neq 1><option value="5" selected="selected">5 </option><cfset qq=BitMaskSet(qq,1,4,1)><cfelseif #anstable.Q182# neq "5"><option value="1">5 </option><cfset qq=BitMaskClear(qq,4,1)><cfelse><option value="5">taken </option></cfif></select></div>
<div id="Q183">
<div class=instr><span class="qnum">Q183. </span>Asset loss prevention.</div>
<select class="dropbox" name="Q183"><option value="-1">Please choose</option>
<cfif #anstable.Q183# eq "1" and BitAnd(qq,1) neq 1><option value="1" selected="selected">1 </option><cfset qq=BitMaskSet(qq,1,0,1)><cfelseif #anstable.Q183# neq "1"><option value="1">1 </option><cfset qq=BitMaskClear(qq,0,1)><cfelse><option value="1">taken </option></cfif>
<cfif #anstable.Q183# eq "2" and BitAnd(qq,2) neq 1><option value="2" selected="selected">2 </option><cfset qq=BitMaskSet(qq,1,1,1)><cfelseif #anstable.Q183# neq "2"><option value="1">2 </option><cfset qq=BitMaskClear(qq,1,1)><cfelse><option value="2">taken </option></cfif>
<cfif #anstable.Q183# eq "3" and BitAnd(qq,4) neq 1><option value="3" selected="selected">3 </option><cfset qq=BitMaskSet(qq,1,2,1)><cfelseif #anstable.Q183# neq "3"><option value="1">3 </option><cfset qq=BitMaskClear(qq,2,1)><cfelse><option value="3">taken </option></cfif>
<cfif #anstable.Q183# eq "4" and BitAnd(qq,8) neq 1><option value="4" selected="selected">4 </option><cfset qq=BitMaskSet(qq,1,3,1)><cfelseif #anstable.Q183# neq "4"><option value="1">4 </option><cfset qq=BitMaskClear(qq,3,1)><cfelse><option value="4">taken </option></cfif>
<cfif #anstable.Q183# eq "5" and BitAnd(qq,16) neq 1><option value="5" selected="selected">5 </option><cfset qq=BitMaskSet(qq,1,4,1)><cfelseif #anstable.Q183# neq "5"><option value="1">5 </option><cfset qq=BitMaskClear(qq,4,1)><cfelse><option value="5">taken </option></cfif></select></div>
<div id="Q184">
<div class=instr><span class="qnum">Q184. </span>Tracking rental equipment.</div>
<select class="dropbox" name="Q184"><option value="-1">Please choose
<cfif #anstable.Q184# eq "1" and BitAnd(qq,1) neq 1><option value="1" selected="selected">1 </option><cfset qq=BitMaskSet(qq,1,0,1)><cfelseif #anstable.Q184# neq "1"><option value="1">1 </option><cfset qq=BitMaskClear(qq,0,1)><cfelse><option value="1">taken </option></cfif>
<cfif #anstable.Q184# eq "2" and BitAnd(qq,2) neq 1><option value="2" selected="selected">2 </option><cfset qq=BitMaskSet(qq,1,1,1)><cfelseif #anstable.Q184# neq "2"><option value="1">2 </option><cfset qq=BitMaskClear(qq,1,1)><cfelse><option value="2">taken </option></cfif>
<cfif #anstable.Q184# eq "3" and BitAnd(qq,4) neq 1><option value="3" selected="selected">3 </option><cfset qq=BitMaskSet(qq,1,2,1)><cfelseif #anstable.Q184# neq "3"><option value="1">3 </option><cfset qq=BitMaskClear(qq,2,1)><cfelse><option value="3">taken </option></cfif>
<cfif #anstable.Q184# eq "4" and BitAnd(qq,8) neq 1><option value="4" selected="selected">4 </option><cfset qq=BitMaskSet(qq,1,3,1)><cfelseif #anstable.Q184# neq "4"><option value="1">4 </option><cfset qq=BitMaskClear(qq,3,1)><cfelse><option value="4">taken </option></cfif>
<cfif #anstable.Q184# eq "5" and BitAnd(qq,16) neq 1><option value="5" selected="selected">5 </option><cfset qq=BitMaskSet(qq,1,4,1)><cfelseif #anstable.Q184# neq "5"><option value="1">5 </option><cfset qq=BitMaskClear(qq,4,1)><cfelse><option value="5">taken </option></cfif></select></div>
<div id="Q185">
<div class=instr><span class="qnum">Q185. </span>Tracking people.</div>
<select class="dropbox" name="Q185"><option value="-1">Please choose</option>
<cfif #anstable.Q185# eq "1" and BitAnd(qq,1) neq 1><option value="1" selected="selected">1 </option><cfset qq=BitMaskSet(qq,1,0,1)><cfelseif #anstable.Q185# neq "1"><option value="1">1 </option><cfset qq=BitMaskClear(qq,0,1)><cfelse><option value="1">taken </option></cfif>
<cfif #anstable.Q185# eq "2" and BitAnd(qq,2) neq 1><option value="2" selected="selected">2 </option><cfset qq=BitMaskSet(qq,1,1,1)><cfelseif #anstable.Q185# neq "2"><option value="1">2 </option><cfset qq=BitMaskClear(qq,1,1)><cfelse><option value="2">taken </option></cfif>
<cfif #anstable.Q185# eq "3" and BitAnd(qq,4) neq 1><option value="3" selected="selected">3 </option><cfset qq=BitMaskSet(qq,1,2,1)><cfelseif #anstable.Q185# neq "3"><option value="1">3 </option><cfset qq=BitMaskClear(qq,2,1)><cfelse><option value="3">taken </option></cfif>
<cfif #anstable.Q185# eq "4" and BitAnd(qq,8) neq 1><option value="4" selected="selected">4 </option><cfset qq=BitMaskSet(qq,1,3,1)><cfelseif #anstable.Q185# neq "4"><option value="1">4 </option><cfset qq=BitMaskClear(qq,3,1)><cfelse><option value="4">taken </option></cfif>
<cfif #anstable.Q185# eq "5" and BitAnd(qq,16) neq 1><option value="5" selected="selected">5 </option><cfset qq=BitMaskSet(qq,1,4,1)><cfelseif #anstable.Q185# neq "5"><option value="1">5 </option><cfset qq=BitMaskClear(qq,4,1)><cfelse><option value="5">taken </option></cfif></select></div>
-->

<div id="Q181">
<div class=instr><span class="qnum">Q181. </span>Environmental monitoring.&nbsp;&nbsp;&nbsp;
<select class="dropbox" id="Q18s1" name="Q181" onChange="showSelection(this);"><option value="-1">Please choose</option><cfif #anstable.Q181# eq "1"><option id="content11" selected="selected">1</option><cfelse><option id="content11">1</option></cfif><cfif #anstable.Q181# eq "2"><option id="content12" selected="selected">2 </option><cfelse><option id="content12">2 </option></cfif><cfif #anstable.Q181# eq "3"><option id="content13" selected="selected">3 </option><cfelse><option id="content13">3 </option></cfif><cfif #anstable.Q181# eq "4"><option id="content14" selected="selected">4 </option><cfelse><option id="content14">4 </option></cfif><cfif #anstable.Q181# eq "5"><option id="content15" selected="selected">5 </option><cfelse><option id="content15">5 </option></cfif></select></div>
<div id="Q182">
<div class=instr><span class="qnum">Q182. </span>Asset locating.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select class="dropbox" id="Q18s2" name="Q182" onChange="showSelection(this);"><option value="-1">Please choose</option><cfif #anstable.Q182# eq "1"><option id="content21" selected="selected">1</option><cfelse><option id="content21">1</option></cfif><cfif #anstable.Q182# eq "2"><option id="content22" selected="selected">2 </option><cfelse><option id="content22">2 </option></cfif><cfif #anstable.Q182# eq "3"><option id="content23" selected="selected">3 </option><cfelse><option id="content23">3 </option></cfif><cfif #anstable.Q182# eq "4"><option id="content24" selected="selected">4 </option><cfelse><option id="content24">4 </option></cfif><cfif #anstable.Q182# eq "5"><option id="content25" selected="selected">5 </option><cfelse><option id="content25">5 </option></cfif></select></div>
<div id="Q183">
<div class=instr><span class="qnum">Q183. </span>Asset loss prevention.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select class="dropbox" id="Q18s3" name="Q183" onChange="showSelection(this);"><option value="-1">Please choose</option><cfif #anstable.Q183# eq "1"><option id="content31" selected="selected">1</option><cfelse><option id="content31">1</option></cfif><cfif #anstable.Q183# eq "2"><option id="content32" selected="selected">2 </option><cfelse><option id="content32">2 </option></cfif><cfif #anstable.Q183# eq "3"><option id="content33" selected="selected">3 </option><cfelse><option id="content33">3 </option></cfif><cfif #anstable.Q183# eq "4"><option id="content34" selected="selected">4 </option><cfelse><option id="content34">4 </option></cfif><cfif #anstable.Q183# eq "5"><option id="content35" selected="selected">5 </option><cfelse><option id="content35">5 </option></cfif></select></div>
<div id="Q184">
<div class=instr><span class="qnum">Q184. </span>Tracking rental equipment.&nbsp;&nbsp;&nbsp;&nbsp;
<select class="dropbox" id="Q18s4" name="Q184" onChange="showSelection(this);"><option value="-1">Please choose</option><cfif #anstable.Q184# eq "1"><option id="content41" selected="selected">1</option><cfelse><option id="content41">1</option></cfif><cfif #anstable.Q184# eq "2"><option id="content42" selected="selected">2 </option><cfelse><option id="content42">2 </option></cfif><cfif #anstable.Q184# eq "3"><option id="content43" selected="selected">3 </option><cfelse><option id="content43">3 </option></cfif><cfif #anstable.Q184# eq "4"><option id="content44" selected="selected">4 </option><cfelse><option id="content44">4 </option></cfif><cfif #anstable.Q184# eq "5"><option id="content45" selected="selected">5 </option><cfelse><option id="content45">5 </option></cfif></select></div>
<div id="Q185">
<div class=instr><span class="qnum">Q185. </span>Tracking people.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select class="dropbox" id="Q18s5" name="Q185" onChange="showSelection(this);"><option value="-1">Please choose</option><cfif #anstable.Q185# eq "1"><option id="content51" selected="selected">1</option><cfelse><option id="content51">1</option></cfif><cfif #anstable.Q185# eq "2"><option id="content52" selected="selected">2 </option><cfelse><option id="content52">2 </option></cfif><cfif #anstable.Q185# eq "3"><option id="content53" selected="selected">3 </option><cfelse><option id="content53">3 </option></cfif><cfif #anstable.Q185# eq "4"><option id="content54" selected="selected">4 </option><cfelse><option id="content54">4 </option></cfif><cfif #anstable.Q185# eq "5"><option id="content55" selected="selected">5 </option><cfelse><option id="content55">5 </option></cfif></select>&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="button" VALUE="Re-rank" onclick="clearSelection()"> Please press re-rank button to make changes if needed.
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
<!---<script type="text/javascript">

</script>
<form>
  <select name="category" onChange="showSelection(this);">
    <option value=""> Select something </option>
    <option value="You selected category 1">Category1</option>
    <option id="contentDiv">Category2</option>
    <option value="You selected category 3">Category3</option>
  </select>
</form>
 this div will contain the selected list value 
<div id="contentDiv" style="background-color: #ffff00"></div>--->
</body>
</html>
