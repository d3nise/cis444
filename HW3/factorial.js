/* 
   Denise Nguyen =^.,.^=
   This is the JavaScript file for frac.html
   Check --https://www.calculatorsoup.com/calculators/discretemathematics/factorials.php
*/

var n = parseInt(prompt("Enter the number to get factorial of: 'n' "));
var result = n;
var f = n;              
//document.write("UserInput:",n,"<br>Passing variable to recursive: ",f,"<br/>");

if(n<0){
    document.write("ERROR: Number needs to be greater than 0");                                             
}

else{
    document.write("<table>");                                                                              
    document.write("<h1>Factoral Numbers</h1>");                     
    document.write("<tr>","<th>Count</th>","<th>Factorial</th>");  
    for(var i=1;i < n;i++){                                                                                  
	result = i * result;
	document.write("<tr>","<td>");                                                                      
	document.write("",i,""); 
	document.write("</td>");                                                                             
	document.write("<td>");                                                                              
    
	document.write("",result,"<br/>");                                                                  
	document.write("</td>","</tr>"); 
    }
    document.write("</tr>","</table>");  
    // document.write(" ",i,"              ",result,"<br>");
}

document.write("Factorial of ",n,"! is = ",result,"<br/>");


/*
if(n < 0){
    document.write("ERROR: Number needs to be greater than 0");
}
else{
    document.write("<table>");
    document.write("<h1>Factoral Numbers</h1>");
    document.write("<tr>","<th>Count</th>","<th>Factorial</th>");

    for(var i=0;i<=n;i++;){
        //Write row and cell and the count value
        document.write("<tr>","<td>");
        document.write(i);
        //Close cell and open new cell
        document.write("</td>");
        document.write("<td>");

        document.write(calcFrac(i));
        document.write("<td>","</tr>");
    }
    document.write("</tr>","</table>");
}
*/
