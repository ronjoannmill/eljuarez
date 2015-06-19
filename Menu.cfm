<cfquery name="getclass" datasource="#session.database#">
	Select distinct cl.id,cl.Class,cl.sortorder 
	from lkuClass cl 
	inner join menu m on cl.id = m.class 
	where cl.Language = '#Session.Language#' 
	order by cl.sortorder
</cfquery>

<cfquery name="getmenuitems" datasource="#session.database#">
	Select m.* 
	FROM Menu m 
	inner join lkuclass l on m.class = l.id  
	where m.class in (select id from lkuclass where language = '#Session.Language#') 
	order by l.sortorder
</cfquery>

<br>
<p align="center">Menu</p>
<cfoutput>
<cfloop query="getclass">
	<cfquery name="getlist" dbtype="query">
		select * from getmenuitems where getmenuitems.class = #getclass.id#
	</cfquery>
		<p align="center">
			<font style="FONT-WEIGHT: bold; FONT-SIZE: larger; COLOR: ##cc0033">
				#getclass.class#
			</font>
			<br>
			<cfloop query="getlist">
					<table width="80%">
					<tr>
						<td style="FONT-WEIGHT: bold; FONT-STYLE: italic" width="60%">#getlist.name#</td>
						<td width="20%">#getlist.price#</td>
					</tr>
					<tr>
						<td class="submenufont">#getlist.description#</td>
					</tr>
			</cfloop>
					</table><a href="##Top">
						<cfif #Session.language# eq "EN">
							<font class=toplink>[Return to top]</font>
						<cfelse>
							<font class=toplink>[el regreso para sobrepasar de página]</font>
						</cfif>
					</a><br>
					<br>
			</p>
</cfloop>
</cfoutput>