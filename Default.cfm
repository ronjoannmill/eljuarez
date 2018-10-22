<cfif StructKeyExists(SESSION,"language") AND Len(Trim(#session.language#)) gt 0>
<cfelse>
	<cfset session.language = #request.language#>
</cfif>
<cfset session.database = #application.database#>
<cfset mpage = "home.cfm">

<cfif StructKeyExists(URL,"lang") AND Len(Trim(#URL.lang#)) gt 0>
	<cfif #URL.lang# eq "SP">
		<cfset session.language = "SP">
		<cfset mpage = "homesp.cfm">
	<cfelse>
		<cfif StructKeyExists(SESSION,"language") AND Len(Trim(#session.language#)) gt 0>
		<cfelse>
			<cfset session.language = "EN">
			<cfset mpage = "home.cfm">
		</cfif>
	</cfif>
<cfelse>
	<cfif StructKeyExists(SESSION,"language") AND Len(Trim(#session.language#)) gt 0>
	<cfelse>
		<cfset session.language = "EN">
	</cfif>
</cfif>

<cfif StructKeyExists(URL,"action") AND Len(Trim(#URL.action#)) gt 0>
	<cfswitch expression="#URL.action#">
		<cfcase value="home">
			<cfif #session.language# eq "SP">
				<cfset mpage = "homesp.cfm">
			<cfelse>
				<cfset mpage = "home.cfm">
			</cfif>
		</cfcase>
		<cfcase value="menu">
			<cfset mpage = "menu.cfm">
		</cfcase>
		<cfcase value="contact">
			<cfif #session.language# eq "SP">
				<cfset mpage = "contactsp.cfm">
			<cfelse>
				<cfset mpage = "contact.cfm">
			</cfif>
		</cfcase>
		<cfcase value="history">
			<cfif #session.language# eq "SP">
				<cfset mpage = "historysp.cfm">
			<cfelse>
				<cfset mpage = "history.cfm">
			</cfif>
		</cfcase>
		<cfcase value="map">
			<cfif #session.language# eq "SP">
				<cfset mpage = "mapsp.cfm">
			<cfelse>
				<cfset mpage = "map.cfm">
			</cfif>
		</cfcase>
		<cfcase value="edit">
			<cfset mpage = "editMenu.cfm">
		</cfcase>
	</cfswitch>
</cfif>


<!DOCTYPE HTML>
<html lang="en">
	<HEAD>
		<title>El Juarez Restuarant & Cantina</title>
		<meta name="Keywords" content="El Juarez Restaurant & Cantina,Mexican food,Mexican Restaurants,McKinney, Texas,Mexican Cuisine,Tex-Mex in Mckinney, TX">
		<meta name="robots" content="all">
		<link rel="shortcut icon"   href="http://www.eljuarez.com/images/favicon.ico" />
		<LINK href="css/Styles.css" type="text/css" rel="stylesheet">
	    <!-- Bootstrap -->
	    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<meta charset="utf-8">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
		<script src="//code.jquery.com/jquery-1.10.2.js"></script>
		<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script>
		  $(function() {
		    $( "#tabs" ).tabs();
		  });
		</script>
<SCRIPT LANGUAGE="JAVASCRIPT">
<!--
if (document.images) 
{
   img1 = new Image();
   img2 = new Image();
   img3 = new Image();
   img4 = new Image();
   img5 = new Image();
   img6 = new Image();
   img7 = new Image();
   img8 = new Image();
   img9 = new Image();
   img10 = new Image();
   img11 = new Image();
   img1.src = "./images/photo1.jpg";
   img2.src = "./images/photo2.jpg"
   img3.src = "./images/photo3.jpg"
   img4.src = "./images/photo4.jpg"
   img5.src = "./images/photo5.jpg"
   img6.src = "./images/photo6.jpg"
   img7.src = "./images/photo7.jpg"
   img8.src = "./images/photo8.jpg"
   img9.src = "./images/photo9.jpg"
   img10.src = "./images/owners.jpg"
   img11.src = "./images/map.jpg"
}
gSlideshowInterval = 3;
gNumberOfImages = 10;

gImages = new Array(gNumberOfImages);
gImages[0] = "images/photo1.jpg";
gImages[1] = "images/photo2.jpg";
gImages[2] = "images/photo3.jpg";
gImages[3] = "images/photo4.jpg";
gImages[4] = "images/photo5.jpg";
gImages[5] = "images/photo6.jpg";
gImages[6] = "images/photo7.jpg";
gImages[7] = "images/photo8.jpg";
gImages[8] = "images/photo9.jpg";
gImages[9] = "images/owners.jpg";

function canManipulateImages() {
	if (document.images)
		return true;
	else
		return false;
}
function loadSlide(imageURL) {
	if (gImageCapableBrowser) {
		document.slide.src = imageURL;
		return false;
	}
	else {
		return true;
	}
}
function nextSlide() {
	gCurrentImage = (gCurrentImage + 1) % gNumberOfImages;
	loadSlide(gImages[gCurrentImage]);
}
gImageCapableBrowser = canManipulateImages();
gCurrentImage = 0;
setInterval("nextSlide()",gSlideshowInterval * 1000);

-->		</SCRIPT>
	</HEAD>
	<body>
		<div class="row-fluid">
			<div class="span12">
				<form id="Form1" method="post" runat="server">
					<table class="table" style="background-color: #ffff99; width: 800px; margin-left: auto; margin-right: auto; border: none;">
						<tr>
							<td vAlign="top" style="border: none;"><cfinclude template="header.cfm" /></td>
						</tr>
						<tr height="100%">
						<cfoutput>
							<td style="border: none;"><cfinclude template="#mpage#" /></td>
						</cfoutput>
						<tr>
							<td vAlign="bottom" style="border: none;"><cfinclude template="footer.cfm" /></td>
						</tr>
					</table>
					</TD></form>
				</div>
		</div>
	    <script src="http://code.jquery.com/jquery.js"></script>
	    <script src="js/bootstrap.min.js"></script>
	</body>
</HTML>
