<cfquery name="get_news" datasource="aloweb" dbtype="ODBC">
SELECT * 
FROM news 
WHERE id = #session.news_latest# 
ORDER BY date desc
</cfquery>

<cfquery name="get_news2" datasource="aloweb" dbtype="ODBC">
SELECT * 
FROM news 
WHERE id = (#session.news_latest# - 1)
ORDER BY date desc
</cfquery>

<cfinclude template="header.cfm">
<div class="news1"> 
<cfoutput query="get_news">
  

  <p class="h5">#title#</p>
  <p class="date">#DateFormat("#date#", "mmmm yyyy")#</p>
  <p>#desc#</p>

 </cfoutput>
</div>  
<br>
<br> 
<!--- second news block --->
<div class="news2"> 
<cfoutput query="get_news2">

  <p class="h5">#title#</p>
  <p class="date">#DateFormat("#date#", "mmmm yyyy")#</p>
  <p>#desc#</p>


 </cfoutput>
 </div>
 
 <br>
<br> 

<div class="news3"> 
  <p class="h5"><a href="news.cfm" title="Get all my back-dated news" >News Archive</a> 
  </p>
  <p class="h5"><a href="journal.cfm">Latest Journal</a></p>
  <p>&nbsp;</p>
</div>

<br>
<br> 

<div class="alocator">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0" width="575" height="110">
  <param name=movie value="alocator.swf">
  <param name=quality value=high>
  <embed src="alocator.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="575" height="110">
  </embed> 
</object> </body> </html>

