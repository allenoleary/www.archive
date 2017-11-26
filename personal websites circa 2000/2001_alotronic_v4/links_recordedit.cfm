<CFSET FormFieldList = "category,title,url,desc,date">

<CFIF ParameterExists(URL.RecordID)>
	<CFQUERY name="GetRecord" dataSource="aloweb" maxRows=1>
		SELECT links.category, links.title, links.url, links.desc, links.date, links.id AS ID_Field
		FROM links
		<CFIF ParameterExists(URL.RecordID)>
		WHERE links.id = #URL.RecordID#
		</CFIF>
	</CFQUERY>

	<CFIF not ListFind( FormFieldList, "id" )>
		<CFSET FormFieldList = ListAppend( FormFieldList, "id" )>
	</CFIF>

			
			<CFSET category_Value = '#GetRecord.category#'>
				
			<CFSET title_Value = '#GetRecord.title#'>
				
			<CFSET url_Value = '#GetRecord.url#'>
				
			<CFSET desc_Value = '#GetRecord.desc#'>
				
			<CFSET date_Value = #GetRecord.date#>
		

<CFELSE>

			
			<CFSET category_Value = ''>
				
			<CFSET title_Value = ''>
				
			<CFSET url_Value = ''>
				
			<CFSET desc_Value = ''>
				
			<CFSET date_Value = ''>
		

</CFIF>


<HTML><HEAD>
	<TITLE>links - Edit Record</TITLE>
</HEAD>
<BODY bgcolor="#CC6600" text="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<FONT size="+2"><B><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="#FFFFFF">:: 
alotronic :: links :: edit ::</font></B></FONT> <CFOUTPUT>
<FORM action="links_recordaction.cfm" method="post">
<INPUT type="hidden" name="FieldList" value="#FormFieldList#">
<CFIF ParameterExists(URL.RecordID)>
	<INPUT type="hidden" name="RecordID" value="#URL.RecordID#">
	<INPUT type="hidden" name="id" value="#URL.RecordID#">
</CFIF>


<TABLE>

	
	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> category: </font></TD><TD>
	
		<!--<INPUT type="text" name="category" value="#category_Value#" maxLength="100"> -->
			<select name="category" value="#category_Value#">
          <option>pick a set...</option>
          <option value="architecture">architecture</option>
          <option value="new media theory">new media theory</option>
          <option value="new media works">new media works</option>
          <option value="flash sites">good flash sites</option>
          <option value="flash resources">flash resources</option>
          <option value="html resources">html resources</option>
          <option value="theatre">theatre</option>
          <option value="html sites">good html sites</option>
        </select>
		
	</TD><!--- field validation --->
	</TR>
	
	
	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> title: </font></TD><TD>
	
		<INPUT type="text" name="title" value="#title_Value#" maxLength="2147483647">
		
	</TD><!--- field validation --->
	</TR>
	
	
	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> url: </font></TD><TD>
	
		<INPUT type="text" name="url" value="#url_Value#" maxLength="510">
		
	</TD><!--- field validation --->
	</TR>
	
	
	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> desc: </font></TD><TD>
	
		<INPUT type="text" name="desc" value="#desc_Value#" maxLength="2147483647">
		
	</TD><!--- field validation --->
	</TR>
	
	
	<TR>
	<TD valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="1"> date: </font></TD><TD>
	
		<INPUT type="text" name="date" value="#date_Value#" maxLength="16">
		(i.e. 12/31/97)
	</TD><!--- field validation --->
	<INPUT type="hidden" name="date_date">
	</TR>
		
</TABLE>
	
<!--- form buttons --->
<INPUT type="submit" name="btnEdit_OK" value="    OK    ">
<INPUT type="submit" name="btnEdit_Cancel" value="Cancel">

</FORM>
</CFOUTPUT>



</BODY></HTML>
