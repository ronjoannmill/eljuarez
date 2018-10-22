<a id="Top"></a>
<img src="./images/eljuarez.gif" border="none" align="absmiddle" width="800" />
<table width="800" border="0" align="center" style="border: none;">
	<tr>
		<td colspan="2" style="text-align:center" style="border: none;">
		<cfif #session.language# eq "SP">
			<a href="default.cfm?action=home&lang=SP"><font class=menufont>Inicio</font></a>
			<font color="#cc0000">| </font>
			<a href="default.cfm?action=menu&lang=SP"><font class="menufont">Men&uacute;</font></a>
			<font color="#cc0000">| </font>
			<a href="default.cfm?action=history&lang=SP"><font class="menufont">Historia</font></a>
			<font color="#cc0000">| </font>
			<a href="default.cfm?action=contact&lang=SP"><font class="menufont">Cont&aacute;ctenos</font></a>
			<cfset mdate = DateFormat(now(),"DD MMM YYYY")>
		<cfelse>
			<a href="default.cfm?action=home&lang=EN"><font class=menufont>Home</font></a>
			<font color="#cc0000">| </font>
			<a href="default.cfm?action=menu&lang=EN"><font class="menufont">Menu</font></a>
			<font color="#cc0000">| </font>
			<a href="default.cfm?action=history&lang=EN"><font class="menufont">History</font></a>
			<font color="#cc0000">| </font>
			<a href="default.cfm?action=contact&lang=EN"><font class="menufont">Contact Us</font></a>
			<cfset mdate = DateFormat(now(),"MMM DD YYYY")>
		</cfif>
		</td>
	</tr>
	<tr>
		<td align="left">&nbsp;</td>
		<td style="text-align:right" style="border: none;"><cfoutput>#mdate#</cfoutput>
		</td>
	</tr>
</table>
