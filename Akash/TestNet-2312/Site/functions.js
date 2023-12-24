function menur(arg){
	if (arg == "mn1")  { $("#main").load("file1.html"); }
	if (arg == "mn2")  { $("#main").load("file2.html"); }
	if (arg == "mn3")  { $("#main").load("file3.html"); }
	if (arg == "mn4")  { $("#main").load("file4.html"); }
}

document.addEventListener("DOMContentLoaded", function() {
  	 $("#main").load("home.html");
  	 
});