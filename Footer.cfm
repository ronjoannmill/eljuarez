<div align="center" style="FONT-WEIGHT: bold">
	<img src="./images/visamc.gif" border="none" />
	<cfoutput>
	<cfif session.language eq "SP">
		<font class=footer>aceptó. Arrepentido, ningunos cheques.</font>
		<br>
		<font class=footer>&copy; Derecho de autor 2006 www.ElJuarez.com - Dure Actualice #request.lastupdateSP#</font>
	<cfelse>
		<font class=footer>accepted.  Sorry, no checks.</font>
        <br />
		<font class=footer>&copy; Copyright 2006 www.ElJuarez.com - Last Update #request.lastupdateEN#</font>	
	</cfif>
	</cfoutput>
</div>
