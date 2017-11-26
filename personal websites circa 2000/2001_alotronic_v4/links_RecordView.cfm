<CFQUERY name="GetRecord" dataSource="aloweb" maxRows=1>
	SELECT links.category AS ViewField1, links.title AS ViewField2, links.url AS ViewField3, links.desc AS ViewField4, links.date AS ViewField5, links.id AS ID_Field 
	FROM links
	<CFIF ParameterExists(URL.RecordID)>
	WHERE links.id = #URL.RecordID#
	</CFIF>
</CFQUERY>


<HTML><HEAD>
	<TITLE>links - View Record</TITLE>
</HEAD>
<BODY bgcolor="#CC6600" text="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<FONT size="+2"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><B>:: 
aloweb :: links :: </B></font></FONT> <CFOUTPUT query="GetRecord">

<FORM action="links_recordaction.cfm" method="post">
	<INPUT type="hidden" name="RecordID" value="#ID_Field#">

	<!--- form buttons --->
	<INPUT type="submit" name="btnView_First" value=" << ">
	<INPUT type="submit" name="btnView_Previous" value="  <  ">
	<INPUT type="submit" name="btnView_Next" value="  >  ">
	<INPUT type="submit" name="btnView_Last" value=" >> ">
	<INPUT type="submit" name="btnView_Add" value="   Add    ">
	<INPUT type="submit" name="btnView_Edit" value="  Edit  ">
	<INPUT type="submit" name="btnView_Delete" value="Delete">

</FORM>

<blockquote>


<TABLE>

<TR>
	

	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> category: </font></TD><TD><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> #ViewField1# </font></TD></TR>

	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> title: </font></TD><TD><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> #ViewField2# </font></TD></TR>

	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> url: </font></TD><TD><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> #ViewField3# </font></TD></TR>

	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> desc: </font></TD><TD><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> #ViewField4# </font></TD></TR>

	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> date: </font></TD><TD><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> #ViewField5# </font></TD></TR>

</TABLE>

</blockquote>



</CFOUTPUT> <a href="main.htm"> <font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="#FFFFFF">&lt;&lt; 
back</font></a> 
</BODY></HTML>
