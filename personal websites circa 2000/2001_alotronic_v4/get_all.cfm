<cfquery name="get_all_links" datasource="aloweb" dbtype="ODBC">
SELECT id, date, desc, title, url, category

From Links 

Where category= '#category#'





</cfquery>

<html>
<head>
	<title>:: alotronic :: links :: </title>
	<link rel="stylesheet" href="http://www.netspace.net.au/~alotronic/v3/v3.css" type="text/css">
</head>

<body bgcolor="#CC6600" text="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<cfoutput>
<font face="verdana"size="1"><b>Links from #category#</b></font>
<br>
<br>
</cfoutput>

<blockquote>

<cfoutput query="get_all_links">
 <p><font face="verdana"size="1">
 
<b>#title#</b> 
 <blockquote>
<a href="#url#" target="_blank">#url# </a><br><br>
#desc# <br>
 </blockquote>

 </font>

</cfoutput>

</blockquote>

<p><a href="main.htm"><font face="Verdana, Arial, Helvetica, sans-serif" size="1">&lt;&lt; 
  Search Again</font></a> </p>


</body>
</html>
