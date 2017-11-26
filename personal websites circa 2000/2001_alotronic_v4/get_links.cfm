<cfquery name="get_all_links" datasource="aloweb" dbtype="ODBC">
SELECT id, date, desc, title, url, category

From Links 

Where category= '#category#'





</cfquery>


<html>
<head>
<title>..: alotronic v4 :: links :..........................................</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="alov4.css">

</head>

<body leftmargin="20" topmargin="1" marginwidth="0" marginheight="1" background="bg1.gif" bgcolor="#FFFFFF">
<div> <img name="home3" src="gfx/home3.gif" width="610"  border="0" align="right" height="123"><map name="m_home2"> 
    <area shape="rect" coords="278,81,301,103" href="#" > </map> </div> 

<br clear=all>

<div class="top_menu"> 
  <p class="zero_margin"> <a href="home.htm" title="Get all my back-dated news"> 
    \\ home </a> <a href="story.htm" title="What is alotronic?">\\ the story</a> 
    <a href="works.htm" title="View all my independent internet and writing work">\\ 
    works</a> <a href="resume.htm" title="View my resume">\\ resume </a> <a href="tutorials.htm"  title="View a selection of web and design tutorials">\\ 
    tutorials </a><a href="links.htm"  title="Get my links">\\ links 
    </a> 
</div>
<div class="page"> 
 <cfoutput>
<h3> Links from #category#</h3>
<br>
<br>
</cfoutput>



<cfoutput query="get_all_links">
 <p>
 
<h5>#title# <a href="#url#" target="_blank">#url# </a></h5> 

<p style="margin-left: 20px">#desc# <br><br><br>



</cfoutput> 
  <p><a href="links.htm"><br>
    <br>
    Try another set...</a> 
</div>
</body>

</html>

