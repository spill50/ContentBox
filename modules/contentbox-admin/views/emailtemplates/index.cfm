﻿<cfoutput>
<!--End sidebar-->	
<!--============================Main Column============================-->
<div class="main full">
	<div class="box">
		<!--- Body Header --->
		<div class="header">
			<img src="#prc.cbroot#/includes/images/messages_icon.png" alt="email"/>
			Email Templates
		</div>
		<!--- Body --->
		<div class="body">
			
			<!--- MessageBox --->
			#getPlugin("MessageBox").renderit()#
			
			<p>Here are your system email templates that are used to send email notifications. Modify at your own risk :) </p>
			
			<!--- templates --->
			<table name="templates" id="templates" class="tablesorter" width="98%">
				<thead>
					<tr>
						<th>Template</th>
						<th width="150">Last Modified</th>
						<th width="50" class="center {sorter:false}">Actions</th>
					</tr>
				</thead>				
				<tbody>
					<cfloop query="prc.templates">
					<tr>
						<td>
							<strong>#prc.templates.name#</strong>
						</td>
						<td>
							#prc.templates.datelastModified#
						</td>
						<td class="center">
							<!--- Editor --->
							<a title="Edit Template" href="#event.buildLink(linkTo=prc.xehTemplateEditor,queryString='template=#URLEncodedFormat( listFirst( prc.templates.name, ".") )#')#"><img src="#prc.cbRoot#/includes/images/edit.png" alt="edit" /></a>
						</td>
					</tr>
					</cfloop>
				</tbody>
			</table>
			
		</div>	
	</div>
</div>
</cfoutput>