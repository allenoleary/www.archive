<cfparam name="URL.getID" default="false">
<HTML>
<HEAD>
<TITLE>flashquerystring</TITLE>
</HEAD>
<BODY bgcolor="#FFFFFF">
 <cfoutput>
<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
 codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab##version=5,0,0,0"
 WIDTH=720 HEIGHT=400>
 <PARAM NAME=movie VALUE="synesthesia6.swf?getID=#URL.getID#"> 
 <PARAM NAME=quality VALUE=high> <PARAM NAME=bgcolor VALUE=##FFFFFF>
  <EMBED src="synesthesia6.swf?getID=#URL.getID#" quality=high bgcolor=##FFFFFF  WIDTH=720 HEIGHT=400 
  TYPE="application/x-shockwave-flash" 
  PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"></EMBED>
</OBJECT>
 </cfoutput>
</BODY>
</HTML>
