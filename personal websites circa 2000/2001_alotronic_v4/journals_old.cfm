<cfquery name="get_journals" datasource="aloweb" dbtype="ODBC">
SELECT * 
FROM journal 
WHERE id <> #session.journal_latest#
ORDER BY date desc
</cfquery>

<cfinclude template="header.cfm">

<div class="page">
<p class="h5">Past Journals</p>
 <cfoutput query="get_journals">
	  <form method="post" action="journals_get.cfm">
  <p><b>#subject#</b></p>
  <p class="date">#DateFormat("#date#", "d-mmm-yyyy")#</p>

	<p>&gt; #short_desc#</p>
	<p>&nbsp; &nbsp;<input type="submit" name="Submit" value="read it >" class="button"></p>
<p><input type="hidden" name="id" value="#id#"></form>
</cfoutput> 
  </div>

<!---
<div class="news3"> 
  <p class="h5"><a href="journals_old.cfm" title="Get all my back-dated news" >Past 
    Journals</a> </p>
  
</div>
//--->

</body>

</html>

