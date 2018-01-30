<cfquery name="ApplicationConfig" datasource="#Application.Datasource#">
    select * from CFWebConfig where ApplicationInstance='#Application.ApplicationName#'
</cfquery>
<cfset Application.Config=StructNew()>
<cfloop from="1" to="#ApplicationConfig.RecordCount#" index="i">
    <cfset NewConfigCode=ApplicationConfig.ConfigCode[i]>
    <cfset NewConfigValueType=ApplicationConfig.ValueType[i]>
    <cfset NewConfigValue=ApplicationConfig["#NewConfigValueType#Value"][i]>
    <cfset Application.Config[NewConfigCode]=NewConfigValue>
</cfloop>