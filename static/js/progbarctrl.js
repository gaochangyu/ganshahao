function initTab()
	{
	var i=0;
	var tab= document.getElementsByName("tabitem");
	var button= document.getElementById ("next_training_btn");
	var clear= document.getElementById ("buttonclear");
	for (i=0;i<tab.length;i=i+1){
		tab.item(i).style.backgroundColor="#fff";
	 	tab.item(i).style.color="#333";
	}
	i=0
	tab.item(0).style.backgroundColor="#70d900";
	tab.item(0).style.color="#fff";	
		button.onclick= function nextTab(){
			if (i<tab.length-1){
				i=i+1
				tab.item(i).style.backgroundColor="#70d900";
	 			tab.item(i).style.color="#fff";
			}
		}
	}
window.onload= initTab()