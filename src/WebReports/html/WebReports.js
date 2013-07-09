// This file stores all the javascript used by the Web Reports Feature



function svnRootSelected(selList)
{
    svnroot = selList.options[selList.selectedIndex].id;
    
    if( svnroot )
    {
    	// Get the directories
    	for (var i = 0; i < selList.options.length; i++) {
    	
	    element = document.getElementById(selList.options[i].id + "_dirList");

	    if( element ) {
	        if( svnroot != selList.options[i].id ) {
	            element.style.display = 'none';
	            element.style.visibility = 'hidden';
	            
	            // Unselect all the elements
	            for( var j = 0; j < element.options.length; j++ ) {
	                element.options[j].selected = false;
	            }
	        } else {
	            element.style.display = '';
	            element.style.visibility = 'visible';

		    // Now make sure that the manually entered path isn't a duplicate
	            var curr_value = document.getElementById("svnPath").value;
	            
		    for( var j = 0; j < element.options.length; j++ ) {
		        if( element.options[j].value == curr_value ) {
		            document.getElementById("svnPath").value = "";
		        }
	            }          
	        }
	    }
	}
    }
}
