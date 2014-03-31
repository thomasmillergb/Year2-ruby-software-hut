function showMe (box) {

    var chboxs = document.getElementsByName("c1");
    var vis = "none";
    for(var i=0;i<chboxs.length;i++) {
        if(chboxs[i].checked){
         vis = "block";
            break;
        }
    }
    document.getElementById(box).style.display = vis;


}
function clearMeDate() {
	if(document.getElementById("task_date").value == "dd/mm/yyyy") {
		document.getElementById("task_date").value = "";
	}
}

function populateMeDate() {
	if(document.getElementById("task_date").value == "") {
		document.getElementById("task_date").value = "dd/mm/yyyy";
	}	
}

function clearMeDateDynamic(el) {
	if(document.getElementById("deliverable_date_"+el).value == "dd/mm/yyyy") {
		document.getElementById("deliverable_date_"+el).value = "";
	}
}

function populateMeDateDynamic(el) {
	if(document.getElementById("deliverable_date_"+el).value == "") {
		document.getElementById("deliverable_date_"+el).value = "dd/mm/yyyy";
	}	
}


var row_counter = 0;

function addRowDeadline() {
	var table = document.getElementById("deadlines");
	var row = table.insertRow(0);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	cell1.innerHTML = "Milestone Name:";
	cell2.innerHTML = "<input type=\"text\" name=\"deliverable_"+row_counter+"\" />";
	cell3.innerHTML = "Due Date:";
	cell4.innerHTML = "<input type=\"text\" name=\"deliverable_date_"+row_counter+"\" id=\"deliverable_date_"+row_counter+"\" value=\"dd/mm/yyyy\" onFocus=\"clearMeDateDynamic("+row_counter+")\" onBlur=\"populateMeDateDynamic("+row_counter+")\" />";
	row_counter = row_counter + 1;
}

var row_counterB = 0;

function addRowAssignments() {
	
	var table = document.getElementById("assignments");
	var row = table.insertRow(0);
	var cell0 = row.insertCell(0);
	var cell1 = row.insertCell(1);
	cell0.innerHTML = "Group/User:";
	cell1.innerHTML = "<input type=\"text\" name=\"deliverable_date_"+row_counterB+"\" id=\"assignment_"+row_counterB+"\">";
	row_counterB = row_counterB + 1;
	
}	