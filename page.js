
        function IsRequiredSatisfied(oradio, itemname) {
           var isChecked = 0;
           if ( typeof( oradio ) == "undefined" ) {
             return true;
           }
  
           for ( i=0; i< oradio.length; i++ ) {
             if ( oradio[i].checked ) {
               isChecked = 1;
             }
           }
           if ( isChecked == 0 ) {
             alert("Please answer " + itemname);
             return false;
           }
        
           return true;
        }

        function IsRequiredCheckboxSatisfied(checkboxarr, itemname) {
          var isChecked = 0;

          for ( i=0; i< checkboxarr.length; i++ ) {
            if ( typeof( checkboxarr[i] ) == "undefined" ) {
              continue;
            }
            if ( checkboxarr[i].checked ) {
              isChecked = 1;
            }
          }
          if ( isChecked == 0 ) {
            alert("Please answer " + itemname);
            return false;
          }
          
          return true;
        }
        
        function IsRequiredSelectSatisfied(odropbox, itemname) {
           if ( typeof( odropbox ) == "undefined" ) {
             return true;
           }
           
           if ( odropbox.selectedIndex == 0 ) {
             alert("Please answer " + itemname);
             return false;
           }
        
           return true;
        }

function disable_all_inputs(div, tf) {
  if ( tf ) {
    div.className = "disabled";
  } else {
    div.className = null;
  }

  allinputs = div.getElementsByTagName("input");
  for ( i = 0; i < allinputs.length; i++ ) {
    if ( tf ) {
      allinputs[i].disabled = true;
      allinputs[i].checked = false;
    } else {
      allinputs[i].disabled = false;
    }
  }

  alllabels = div.getElementsByTagName("label");
  for ( i = 0; i < alllabels.length; i++ ) {
    if ( tf ) {
      alllabels[i].className = "disabled";
    } else {
      alllabels[i].className = null;
    }
  }
}

function addListener(oNode, sEventType, fnHandler)
{
        // credit to:
        // http://www.sitepoint.com/forums/showthread.php?goto=lastpost&t=323758
	// If there are prior event handler functions 
	// that have been assigned to this event handler,
	// then save them:
	if(oNode[sEventType]) 
		var oldfuncs = oNode[sEventType];
	
	//Assign new function to the 
	//element s event handler:
	oNode[sEventType] = function ()
	{
		if (oldfuncs) oldfuncs();
		fnHandler();
	}
}

function fillToExitField(tf) {
  toexit = document.getElementById('toexit');
  if ( tf ) {
    toexit.value="yes"
  } else {
    toexit.value="no"
  }
  return true;
}

function textCounter(field, countfield, maxlimit) {
/*
* The input parameters are: the field name;
* field that holds the number of characters remaining;
* the max. numb.	of characters.
*/ 
    if (field.value.length > maxlimit) // if the current length is more than allowed
        field.value =field.value.substring(0, maxlimit); // don't allow further input
    else
        countfield.value = maxlimit - field.value.length;
} // set the display field to remaining number

function isZip(s) 
{
     // Check for correct zip code
     reZip = new RegExp(/(^\d{5}$)|(^\d{5}-\d{4}$)/);
     if (!reZip.test(s)) {
          alert("Zip Code Is Not Valid");
          return false;
     }
     return true;
}