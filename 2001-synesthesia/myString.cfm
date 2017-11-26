
<cfquery name="get_loc" datasource="aloweb" dbtype="ODBC">
SELECT message
FROM synth
WHERE id =  #messageID#
</cfquery>

<cfoutput query="get_loc">

&myString=#message#


</cfoutput>


