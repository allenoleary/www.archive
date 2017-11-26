<!---			NAVIGATION BUTTONS (view page)			--->

<CFIF 
	ParameterExists(Form.btnView_Previous) or 
	ParameterExists(Form.btnView_Next) or
	ParameterExists(Form.btnView_First) or
	ParameterExists(Form.btnView_Last)>

	<CFQUERY name="GetRecord" dataSource="aloweb" maxRows=1>

		SELECT links.id AS ID_Field
		FROM links

		<CFIF ParameterExists(Form.btnView_Previous)>
			WHERE links.id < #Form.RecordID#
			ORDER BY links.id DESC

		<CFELSEIF ParameterExists(Form.btnView_Next)>
			WHERE links.id > #Form.RecordID#
			ORDER BY links.id

		<CFELSEIF ParameterExists(Form.btnView_First)>
			ORDER BY links.id

		<CFELSEIF ParameterExists(Form.btnView_Last)>
			WHERE links.id > #Form.RecordID#
			ORDER BY links.id DESC

		</CFIF>

	</CFQUERY>

	<CFIF GetRecord.RecordCount is 1>
		<CFLOCATION url="links_RecordView.cfm?RecordID=#GetRecord.ID_Field#">
	<CFELSE>
		<CFLOCATION url="links_RecordView.cfm?RecordID=#Form.RecordID#">
	</CFIF>


<!---			EDIT BUTTON (view page)			--->

<CFELSEIF ParameterExists(Form.btnView_Edit)>

	<CFLOCATION url="links_RecordEdit.cfm?RecordID=#Form.RecordID#">


<!---			ADD BUTTON (view page)			--->

<CFELSEIF ParameterExists(Form.btnView_Add)>

	<CFLOCATION url="links_RecordEdit.cfm">


<!---			DELETE BUTTON (view page)			--->

<CFELSEIF ParameterExists(Form.btnView_Delete)>

	<CFQUERY name="DeleteRecord" dataSource="aloweb" maxRows=1>
		DELETE
		FROM links
		WHERE links.id = #Form.RecordID#
	</CFQUERY>
	<CFLOCATION url="links_RecordView.cfm">


<!---			OK BUTTON (edit page)				--->

<CFELSEIF ParameterExists(Form.btnEdit_OK)>

	<CFIF ParameterExists(Form.RecordID)>
		<CFUPDATE dataSource="aloweb" tableName="links" formFields="#Form.FieldList#">
		<CFLOCATION url="links_RecordView.cfm?RecordID=#Form.RecordID#">

	<CFELSE>
		<CFINSERT dataSource="aloweb" tableName="links" formFields="#Form.FieldList#">
		<CFQUERY name="GetNewRecord" dataSource="aloweb" maxRows=1>
			SELECT links.id AS ID_Field
			FROM links
			ORDER BY links.id DESC
		</CFQUERY>
		<CFLOCATION url="links_RecordView.cfm?RecordID=#GetNewRecord.ID_Field#">

	</CFIF>


<!---			CANCEL BUTTON (edit page)			--->

<CFELSEIF ParameterExists(Form.btnEdit_Cancel)>

	<CFIF ParameterExists(Form.RecordID)>
		<CFLOCATION url="links_RecordView.cfm?RecordID=#Form.RecordID#">
	<CFELSE>
		<CFLOCATION url="links_RecordView.cfm">
	</CFIF>

</CFIF>
