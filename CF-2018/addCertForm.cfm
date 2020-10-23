<!--- Copyright (c) 2011 Paul Connell <certman@paulconnell.info> --->
<cfinclude template="../header.cfm">

<h2 class="pageHeader"> SSL Certificates &gt; Certificate Management &gt; Add Certificate</h2>
<p>Please complete the form to add a certificate to the Keystore.</p>
<cfif IsDefined("url.error")>
	<p style="font-size:larger;color:ff0000;"><cfoutput>Error: #url.error#</cfoutput></p>
</cfif>
<table border="0" cellpadding="5" cellspacing="0" width="100%">
<cfform name="add" id="add" action="addCert.cfm" method="post" enctype="multipart/form-data">
<tr>
	<td height="50" nowrap>
		<span class="subheading">Add New Certificate</span>
	</td>
</tr>
<tr>
	<td>		
	<table border="0" cellpadding="2" cellspacing="0" width="100%">
		<tr>
			<td width="200">
				<label for="alias" class="label-bold"> Alias </label>
			</td>
			<td width="1000"><cfinput name="alias" type="text" maxlength="150" class="label" size="20" style="width:20em;" id="alias" required="true" message="Please enter a Certificate Alias."/>

			</td>
		</tr>
		<tr>
			<td style="vertical-align:top;">
				<label for="pubkey" class="label-bold"> Key File </label>
			</td>
			<td>
				<cfinput type="file" required="true" name="pubkey" class="label" size="55" message="Please choose a keyfile." />
				<br /><a href="##" onClick="javascript:document.getElementById('wherekey').style.display = 'inline';">Where do I get the Key File?</a>
				<div style="display:none;" id="wherekey">
				<h1>Where do I get the key from?</h1>
				<ul>
					<li>IE Certificates -&gt; Copy to file (CER base64)</li>
					<li>Firefox -&gt; Click Padlock, More Information, View Certificate, Details tab, Export, X.509 Certificate (PEM) format</li>
				</ul>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" name="AddCertificate" value="&nbsp; Add &nbsp;" class="buttn-grey">&nbsp;&nbsp;
				<input type="button" name="Cancel" value="Cancel" onClick="document.location.href='index.cfm';" class="buttn-grey">
			</td>
		</tr>
		</table>
		
	</td>
</tr>
</cfform>
</table>
<hr class="line">
<cfinclude template="../footer.cfm">
