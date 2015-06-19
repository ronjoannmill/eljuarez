<cfsilent>
<!--- (c) - Copyright 1997-2006 Latitude Technologies Inc.  All Rights reserved. --->
<cfsavecontent variable="pageContent">
	<cfset request.cfdumpinited=false>
	<cfmail to="#request.error_mail#" from="#request.emailNotificationAddress#" 
			subject="Exception occurred on #application.COname#" type="html" server="#request.SMTPserver#" username="#request.SMTPuser#" password="request.SMTPpassword">
		<strong>Error Diagnostics</strong></u><br clear="all"><br clear="all">
		<cfif IsDefined("error") OR IsStruct("error")>
			<cfdump var="#error#" label="Error Diagnostics">
		</cfif>
		<br clear="all"><hr><br clear="all">
		
		<strong>Form variables</strong></u><br clear="all"><br clear="all">
		<cfif IsStruct(form)>
			<cfdump var="#form#" label="form variables">
		</cfif>
		<br clear="all"><hr><br clear="all"><br clear="all">
		
		<strong>URL variables</strong></u><br clear="all"><br clear="all">
		<cfif IsStruct(URL)>
			<cfdump var="#URL#" label="URL variables">
		</cfif>
		<br clear="all"><hr><br clear="all"><br clear="all">
		
		<strong>Users session datastruct</strong></u><br clear="all"><br clear="all">
		<cfif IsStruct(session)>
			<cfdump var="#session#" label="Users session datastruct">
		</cfif>
		<br clear="all"><hr><br clear="all"><br clear="all">
		
		<strong>CGI Variables</strong></u><br clear="all"><br clear="all">
		<cfif IsStruct(CGI)>
			<cfdump var="#CGI#" label="CGI Variables">
		</cfif>
	</cfmail>
	<cfoutput>
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
		<html><head><title>El Juarez Exception</title>
		<link rel="stylesheet" type="text/css" href="css/layout.css">
		</head><body>
		<cfinclude template="header.cfm">
		<table align="center" class="body"><tr><td>
		<div class="main">
			<div class="header">
				Error Has Occurred
			</div>
			<br clear="all">	
			
			<div style="text-align:center"> <img src="Images/warning2.gif" width="125" height="124" alt="Warning"> 
			</div>
			<div style="text-align:center">
				An error has occurred while processing your request. Administrator has been notified about the 
				error. <strong>Please note that your request has not been completed. </strong>Please try your request again later. 
			</div>
			<br clear="all">
			<br clear="all">
			<hr noshade>
			<p style="text-align:center">Please contact your #application.COname# representative if you have any questions.</p>
			<p style="text-align:center"><a href="default.cfm">Return Home</a></p>
		</div></td></tr></table>
		<cfinclude template="footer.cfm">
		</body></html>
	</cfoutput>
</cfsavecontent>
</cfsilent>
<cfoutput>#pagecontent#</cfoutput>


