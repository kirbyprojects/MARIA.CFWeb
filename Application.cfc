<cfcomponent>
    <cfset this.name="ProjectDiyana">
    <cffunction name="OnApplicationStart">
        <cfset Application.DATASOURCE="MARIA">
        <cfmodule template="cached/Application.Config.cfm">
        <cfmodule template="applications/#Application.ApplicationName#/cached/Application.Pages.cfm">
    </cffunction>
    <cffunction name="OnRequestStart">
    </cffunction>
    <cffunction name="OnRequest">
        <cfmodule template="cached/Application.Config.cfm">
        <cfmodule template="applications/#Application.ApplicationName#/cached/Application.Pages.cfm">
        <cfdump var="#Application#">
    </cffunction>
    <cffunction name="OnRequestEnd">
    </cffunction>
    <cffunction name="OnError">
    </cffunction>
    <cffunction name="OnMissingTemplate">
    </cffunction>
</cfcomponent>