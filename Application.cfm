<cfapplication 
		name="ElJuarez" 
		sessionmanagement="Yes" 
		setclientcookies="no"
		sessiontimeout="#CreateTimeSpan(0,2,0,0)#" 
		applicationtimeout="#CreateTimeSpan(2,0,0,0)#">
<cfset request.EmailAddress="yasmin.vela2@yahoo.com">

<cfset application.tsp_name="Juarez Restaurant">
<cfset application.COname="Juarez Restaurant">
<cfset application.COaddress="">
<cfset application.COcsz="McKinney, TX 75069">
<cfset application.COphone="(972) 562-0363">
<cfset application.session_cookie="">
<cfset application.database="millsclan">
<cfset application.algorithm="CFMX_COMPAT">
<cfset application.encoding="UU">
<cfset application.RootURL="">
<cfset application.appURL="">
<cfset application.capacityTempEmailAttachmentPath="">
<!---<cfset application.filePath="C:\inetpub\vhosts\swfgagent.com\httpdocs\Upload\">--->
<cfset application.filePath="">

<cfset request.componentRoot = "Components">
<cfset request.customtagRoot = "CustomTags">
<cfset request.imageRoot = "./Images/">
<cfset request.language = "EN">
<cfset request.lastupdateEN = "09/05/2014">
<cfset request.lastupdateSP = "05.09.2014">
<cfset request.error_mail = "ron@millsclan.com">
<cfset request.emailNotificationAddress = "yasmin.vela2@yahoo.com">

<cferror type="exception" exception="any" template="exception_handler.cfm">
